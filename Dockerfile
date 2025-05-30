# Use Python 3.12 as the base image
FROM python:3.12


# Set the working directory inside the container
WORKDIR /usr/src/app/


# Copy the current directory contents into the container at /usr/src/app
COPY . .


##
RUN chmod +x /usr/src/app/wait-for-it.sh && \
    chmod +x /usr/src/app/entrypoint.sh


# Install system dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl lshw procps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh



# Install Open WebUI
RUN pip install --no-cache-dir open-webui


# Expose the default WebUI port
EXPOSE 8080


# Default command
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]