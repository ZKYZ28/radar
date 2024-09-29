#include "sonar.h"
#include <wiringPi.h>
#include <sys/time.h>
#include <stdlib.h>

#define MAX_DISTANCE 220
#define timeOut MAX_DISTANCE * 60

void sonarInit(int trigPin, int echoPin) {
    pinMode(trigPin, OUTPUT);
    pinMode(echoPin, INPUT);
}

float getSonar(int trigPin, int echoPin) {
    long pingTime;
    float distance;
    digitalWrite(trigPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin, LOW);
    pingTime = pulseIn(echoPin, HIGH, timeOut);
    distance = (float)pingTime * 340.0 / 2.0 / 10000.0;
    return distance;
}

int pulseIn(int pin, int level, int timeout) {
    struct timeval tn, t0, t1;
    long micros;
    gettimeofday(&t0, NULL);
    micros = 0;
    while (digitalRead(pin) != level) {
        gettimeofday(&tn, NULL);
        if (tn.tv_sec > t0.tv_sec)
            micros = 1000000L;
        else
            micros = 0;
        micros += (tn.tv_usec - t0.tv_usec);
        if (micros > timeout)
            return 0;
    }
    gettimeofday(&t1, NULL);
    while (digitalRead(pin) == level) {
        gettimeofday(&tn, NULL);
        if (tn.tv_sec > t0.tv_sec)
            micros = 1000000L;
        else
            micros = 0;
        micros += (tn.tv_usec - t0.tv_usec);
        if (micros > timeout)
            return 0;
    }
    if (tn.tv_sec > t1.tv_sec)
        micros = 1000000L;
    else
        micros = 0;
    micros += (tn.tv_usec - t1.tv_usec);
    return micros;
}
