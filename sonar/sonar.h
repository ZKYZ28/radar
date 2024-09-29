#ifndef SONAR_H
#define SONAR_H

void sonarInit(int trigPin, int echoPin);
float getSonar(int trigPin, int echoPin);
int pulseIn(int pin, int level, int timeout);

#endif
