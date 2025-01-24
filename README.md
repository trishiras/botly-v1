# **botly-v1**  

A Docker image for running [Ollama](https://ollama.com/) and [Open WebUI](https://github.com/open-webui/open-webui) together. This setup provides an interactive AI environment with an intuitive web interface.  

## **Features**  
✅ Preconfigured **Ollama** for AI model execution  
✅ Integrated **Open WebUI** for a user-friendly interface  
✅ **Dockerized** setup for easy deployment  
✅ **Customizable DNS** settings  

## **Prerequisites**  
Ensure you have:  
- **Docker** installed: [Install Docker](https://docs.docker.com/get-docker/)  
- **Docker Compose** installed: [Install Docker Compose](https://docs.docker.com/compose/install/)  

## **Installation**  

### **1. Build the Docker Image**  
Run the following command to build the image without using cache:  
```sh
sudo docker build --no-cache . -f Dockerfile -t botly:latest
```  

### **2. Run the Container**  
Start `botly` using Docker Compose:  
```sh
sudo docker-compose up -d
```  

Once started, the application will be accessible at:  
👉 **http://localhost:8088**  

## **Stopping the Container**  
To stop and remove the running container:  
```sh
sudo docker-compose down
```  

## **Logs & Debugging**  
View live logs from the running container:  
```sh
sudo docker-compose logs -f
```  


## **Demo Screenshots**
Below are some screenshots showcasing the application in action:



### Start
![Start ](screenshots/start.png)

<!-- ### Dashboard
![Dashboard](screenshots/dashboard.png)

### User Profile
![User Profile](screenshots/profile.png) -->


## **License**  
This project is open-source and available under the [MIT License](LICENSE).  


---

### **🚀 HAVE FUN USING IT! 🎉**