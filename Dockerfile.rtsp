# Use the base image from your Docker Compose file
FROM openvino/ubuntu20_data_runtime:2021.4.2

# Copy the sample-media directory into the image
COPY sample-media /home/pipeline-server/sample-media

# Set the entrypoint to ffmpeg
ENTRYPOINT ["ffmpeg"]

# Set the command. This is a direct translation of your Docker Compose command.
CMD ["-nostdin", "-re", "-stream_loop", "-1", "-i", "/home/pipeline-server/sample-media/coca-cola-4465029-3840-15-bench.mp4", "-c", "copy", "-f", "rtsp", "-rtsp_transport", "tcp", "rtsp://localhost:8554/camera_0"]
