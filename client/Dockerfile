
# Use the base image
FROM vagheshpatel/python-ov-demo:dev

# Set environment variables
ENV CONTAINER_NAME=object-detection0
ENV GRPC_PORT=9001
ENV GRPC_URL=localhost
ENV INPUTSRC=rtsp://localhost:8554/camera_0
ENV cid_count=0
ENV DETECTION_MODEL_NAME=ssd_mobilenet_v1_coco
ENV DETECTION_LABEL_FILE=coco_91cl_bkgr.txt
ENV DETECTION_ARCHITECTURE_TYPE=ssd
ENV DETECTION_OUTPUT_RESOLUTION=1280x720
ENV DETECTION_THRESHOLD=0.50
ENV RENDER_MODE=0
ENV ENTRYPOINT_SCRIPT=/opencv-ovms/demos/object_detection/python/entrypoint.sh

# Copy the OpenCV-OMVS configuration directory into the image
COPY ./configs/opencv-ovms /opencv-ovms

# Set the entrypoint script
ENTRYPOINT ["/opencv-ovms/scripts/docker_compose_generic_entrypoint.sh"]