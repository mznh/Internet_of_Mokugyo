#!/usr/bin/env python
# _*_ coding: utf-8 _*_

import pigpio
import time

pi = pigpio.pi()
pi.set_mode(18, pigpio.OUTPUT)

pi.write(18,1)
time.sleep(0.1)
pi.write(18,0)

