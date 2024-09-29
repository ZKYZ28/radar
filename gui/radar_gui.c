#include "radar_gui.h"
#include <math.h>

#define WINDOW_WIDTH 600
#define WINDOW_HEIGHT 321
#define RADAR_RADIUS 320

float map_distance(float value, float fromLow, float fromHigh, float toLow, float toHigh) {
    return (toHigh - toLow) * (value - fromLow) / (fromHigh - fromLow) + toLow;
}


gboolean on_draw_event(GtkWidget *widget, cairo_t *cr, gpointer data) {
    RadarData *radarData = (RadarData *)data;

    cairo_set_source_rgb(cr, 0, 0, 0);
    cairo_rectangle(cr, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    cairo_fill(cr);

    cairo_set_source_rgb(cr, 1, 1, 1); 
    for (int i = 30; i <= RADAR_RADIUS; i += 30) {
        cairo_arc(cr, WINDOW_WIDTH / 2, WINDOW_HEIGHT, i, M_PI, 2 * M_PI);
        cairo_stroke(cr);
    }

    pthread_mutex_lock(radarData->lock); 
    float angle_rad = radarData->angle * (M_PI / 180);  
    pthread_mutex_unlock(radarData->lock);

    float x = (RADAR_RADIUS * cos(angle_rad)) + (WINDOW_WIDTH / 2);
    float y = -(RADAR_RADIUS * sin(angle_rad)) + (WINDOW_HEIGHT);

    cairo_set_source_rgb(cr, 0, 1, 0);
    cairo_set_line_width(cr, 2);
    cairo_move_to(cr, WINDOW_WIDTH / 2, WINDOW_HEIGHT);
    cairo_line_to(cr, x, y);
    cairo_stroke(cr);

    if (radarData->distance >= 1 && radarData->distance <= 20) {
        float normalized_distance = map_distance(radarData->distance, 0, 20, 0, RADAR_RADIUS);

        float x_obj = (normalized_distance * cos(angle_rad)) + (WINDOW_WIDTH / 2);
        float y_obj = -(normalized_distance * sin(angle_rad)) + (WINDOW_HEIGHT);

  printf("Angle: %.2f, Normalized Distance: %.2f, x_obj: %.2f, y_obj: %.2f\n", 
               radarData->angle, normalized_distance, x_obj, y_obj);
               
        cairo_set_source_rgb(cr, 1, 1, 1);
        cairo_arc(cr, x_obj, y_obj, 5, 0, 2 * G_PI);
        cairo_fill(cr);
    }

    return FALSE;
}

void init_radar_window(RadarData *radarData) {
    radarData->radar_window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(radarData->radar_window), "Radar");
    gtk_window_set_default_size(GTK_WINDOW(radarData->radar_window), WINDOW_WIDTH, WINDOW_HEIGHT);

    GtkWidget *drawing_area = gtk_drawing_area_new();
    gtk_widget_set_size_request(drawing_area, WINDOW_WIDTH, WINDOW_HEIGHT);

    g_signal_connect(radarData->radar_window, "destroy", G_CALLBACK(gtk_main_quit), NULL);
    g_signal_connect(G_OBJECT(drawing_area), "draw", G_CALLBACK(on_draw_event), radarData);

    gtk_container_add(GTK_CONTAINER(radarData->radar_window), drawing_area);
    gtk_widget_show_all(radarData->radar_window);
}
