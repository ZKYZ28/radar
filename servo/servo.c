#include "servo.h"
#include <wiringPi.h>
#include <softPwm.h>

#define OFFSET_MS 5
#define SERVO_MIN_MS 5 + OFFSET_MS
#define SERVO_MAX_MS 25 + OFFSET_MS

long map(long value, long fromLow, long fromHigh, long toLow, long toHigh) {
    return (toHigh - toLow) * (value - fromLow) / (fromHigh - fromLow) + toLow;
}

void servoInit(int pin) {
    softPwmCreate(pin, 0, 200);
}

void servoWrite(int pin, int angle) {
    if (angle > 180)
        angle = 180;
    if (angle < 0)
        angle = 0;
    softPwmWrite(pin, map(angle, 0, 180, SERVO_MIN_MS, SERVO_MAX_MS));
}
