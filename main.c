#include <stdio.h>
#include <wiringPi.h>
#include <pthread.h>
#include <gtk/gtk.h>
#include "servo/servo.h"
#include "sonar/sonar.h"
#include "radar_gui.h"

float distance = 0.0;

pthread_mutex_t lock;
RadarData radarData;

void* distanceThread(void* arg) {
    while (1) {
        pthread_mutex_lock(&lock);
        radarData.distance = getSonar(4, 5);       
        pthread_mutex_unlock(&lock);
        
        gtk_widget_queue_draw(radarData.radar_window);
        delay(1000);
    }
}

void* servoThread(void* arg) {
    while (1) {
      for (int i = 0; i <= 180; i++) {
           pthread_mutex_lock(&lock);
            radarData.angle = i; 
            pthread_mutex_unlock(&lock);
            
            servoWrite(1, i);
            delay(30);
        }

        for (int i = 180; i >= 0; i--) {
            pthread_mutex_lock(&lock);
            radarData.angle = i; 
            pthread_mutex_unlock(&lock);
            
            servoWrite(1, i);
            delay(30);
        }
    }
}

int main(int argc, char *argv[]) {
    printf("Program is starting ...\n");

    wiringPiSetup();
    servoInit(1);
    sonarInit(4, 5);

    if (pthread_mutex_init(&lock, NULL) != 0) {
        printf("Mutex init failed\n");
        return 1;
    }
    
    radarData.lock = &lock;

    gtk_init(&argc, &argv);
    init_radar_window(&radarData);

    pthread_t thread_id_distance, thread_id_servo;
    pthread_create(&thread_id_distance, NULL, distanceThread, NULL);
    pthread_create(&thread_id_servo, NULL, servoThread, NULL); 

    gtk_main();

    pthread_join(thread_id_distance, NULL);
    pthread_join(thread_id_servo, NULL);
    pthread_mutex_destroy(&lock);

    return 0;
}
