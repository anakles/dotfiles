#!/usr/bin/env python3

import time
from autopilot.input import Mouse
import os

lock_file = "/tmp/mouse_toggle.lock"
mouse = Mouse.create()

if os.path.exists(lock_file):
    os.remove(lock_file)
    print("Mouse cursor movement has been toggled off.")
else:
    try:
        open(lock_file, 'w').close()
        print("Mouse cursor movement has been toggled on.")
        while True:
            # Get the current mouse cursor position
            x, y = mouse.position()

            # Move the cursor one pixel to the left
            mouse.move(x - 1, y)

            # Move the cursor back to its original position
            mouse.move(x, y)

            # Sleep for a short duration to control the speed of the loop
            time.sleep(30)
    except KeyboardInterrupt:
        # If the user presses Ctrl+C, stop the loop and exit gracefully
        pass
    finally:
        os.remove(lock_file)
        print("Mouse cursor movement has been toggled off.")

