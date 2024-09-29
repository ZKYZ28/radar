#ifndef SERVO_H
#define SERVO_H

void servoInit(int pin);
void servoWrite(int pin, int angle);
void servoWriteMS(int pin, int ms);

#endif
