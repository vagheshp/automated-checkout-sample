# Use the base image
FROM openvino/model_server:2023.1-gpu

# Copy the model configuration directory into the image
COPY ./configs/opencv-ovms/models/2022 /models

# Set environment variables
ENV DEVICE="CPU"
ENV PLATFORM="core"
ENV server_cl_cache_dir="/home/pipeline-server/.cl-cache"

# Set the command
CMD ["--config_path", "/models/config.json", "--port", "9001", "--rest_port", "9002", "--log_level", "INFO"]
