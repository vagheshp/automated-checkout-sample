# Use the base image from your Docker Compose file
FROM openvino/ubuntu20_data_runtime:2021.4.2

# Copy the sample-media directory into the image
COPY sample-media /home/pipeline-server/sample-media
COPY docker-entrypoint.sh /home/pipeline-server/

ENV RTSP_SERVER=camera-simulator

# Set the entrypoint to ffmpeg
ENTRYPOINT ["/home/pipeline-server/docker-entrypoint.sh"]
