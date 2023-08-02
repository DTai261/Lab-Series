#!/bin/bash

# Check if vncserver :1 is running
if vncserver -list | grep -q ":1 "; then
    echo "VNC server :1 is already running."
else
    # If not running, start vncserver :1
    echo "Starting VNC server :1..."
    vncserver :1
fi
