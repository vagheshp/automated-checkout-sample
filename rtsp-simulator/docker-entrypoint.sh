#!/bin/bash

ffmpeg -nostdin -re -stream_loop -1 -i /home/pipeline-server/sample-media/coca-cola-4465029-3840-15-bench.mp4 -c copy -f rtsp -rtsp_transport tcp rtsp://${RTSP_SERVER}:8554/camera_0