# Dominic Bonanno

#! /usr/bin/env python3

from pynput import keyboard, mouse
import subprocess

def spawn():
	subprocess.Popen(["firefox"])

def on_press(key):
	spawn()

def on_click(x,y,button,pressed):
	spawn()

with keyboard.Listener(on_press=on_press) as l, mouse.Listener(on_click=on_click) as m:
	l.join()
	m.join()