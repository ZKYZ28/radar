#ifndef RADAR_GUI_H
#define RADAR_GUI_H

#include <gtk/gtk.h>

typedef struct {
    float distance;
    float angle;
    pthread_mutex_t *lock;
    GtkWidget *radar_window; 
} RadarData;

void init_radar_window(RadarData *radarData);

gboolean on_draw_event(GtkWidget *widget, cairo_t *cr, gpointer data);

#endif
