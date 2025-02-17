# 🚀 Flask API Deployment with GitHub Actions & AWS EC2  

Automate the deployment of a Flask API using **GitHub Actions, AWS EC2, Docker, and ECR**. This project sets up a CI/CD pipeline to build, push, and deploy Dockerized Flask applications efficiently.  

---

### Deployed Link

```sh
http://54.236.118.195:5000/health
```

## 🏗 Project Overview  

This workflow automates:  

✅ **Provisioning an AWS EC2 instance**  
✅ **Installing Docker using a setup script**  
✅ **Creating an Amazon Elastic Container Registry (ECR)**  
✅ **Setting up IAM roles & permissions**  
✅ **Configuring AWS CLI on EC2**  
✅ **Storing build artifacts in ECR**  
✅ **Deploying the application from ECR to EC2**  
✅ **Automated deployment using GitHub Actions**  

---

## 📌 Prerequisites  

Before running this project, ensure you have:  

🔹 **An AWS Account**  
🔹 **EC2 instance with a configured IAM role**  
🔹 **GitHub repository with required secrets**  
🔹 **GitHub Actions enabled**  
🔹 **Flask application Dockerized**  

---

## 🛠 Setup Guide  

### 1. **Create & Configure AWS Resources**  

#### 🚀 Step 1: Launch EC2 Instance  
- Create an **AWS EC2 instance** (Ubuntu recommended).  
- Connect via SSH:  
  ```sh
  ssh -i your-key.pem ubuntu@EC2_IP

- Run the Docker installation script
  ```sh
  chmod +x setup_docker.sh && ./setup_docker.sh
  
### 📦 Step 2: Create an ECR Repository
- Navigate to AWS Console → ECR → Create a new repository.
### 🔑 Step 3: Configure IAM Permissions
- Create an IAM user and attach the following policies:

🔹 **AmazonEC2ContainerRegistryFullAccess**  
🔹 **AmazonEC2FullAccess**  
🔹 **AdministratorAccess** 
- Attach the IAM role to the EC2 instance. 

### 🔑 Role Include Below Policies 

🔹 **AmazonEC2ContainerRegistryPowerUse**
🔹 **AmazonElasticContainerRegistryPublicReadOnly**
  
### ⚙ Step 4: Setup AWS CLI on EC2
```sh
aws configure
export AWS_ACCESS_KEY_ID=your-key
export AWS_SECRET_ACCESS_KEY=your-secret
```
### ** Configure GitHub Repository**  
- 🔒 Add GitHub Secrets
- Go to GitHub Repo → Settings → Secrets and add:
  
<img width="744" alt="Screenshot 2025-02-14 at 5 25 11 PM" src="https://github.com/user-attachments/assets/2ec1bbb6-6953-4540-8519-567cb983993a" />

### 🚀 Deployment Process
- 1️⃣ Push code to the main branch.
- 2️⃣ GitHub Actions automatically triggers deployment.
- 3️⃣ The workflow builds & pushes the Docker image to Amazon ECR.
- 4️⃣ The image is pulled onto the AWS EC2 instance and deployed.
- 5️⃣ 🎉 Flask API is now live!

### 📡 Test the API
```sh
http://54.236.118.195:5000/health
```
### Result
<img width="490" alt="Screenshot 2025-02-14 at 5 29 26 PM" src="https://github.com/user-attachments/assets/7ef48855-90be-443a-9feb-b21ea76e26ae" />





