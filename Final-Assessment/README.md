# DevOps Project: Kubernetes Deployment with Jenkins CI/CD

## Overview

This project involves setting up a Kubernetes cluster on AWS and configuring CI/CD pipelines with Jenkins. The project covers infrastructure provisioning using Terraform, configuration management with Ansible, and deploying an e-commerce application using Jenkins and Kubernetes.

## Project Steps

### 1. Infrastructure Provisioning

- **Tools Used:** Terraform
- **Resources Provisioned:**
  - **VPC:** Virtual Private Cloud
  - **Internet Gateway:** For internet access
  - **EC2 Instances:**
    - **Master Node:** Central node for Kubernetes control
    - **Worker Nodes:** Nodes for running application workloads
  - **S3 Bucket:** For storage needs
  - **Route Tables:** To manage traffic routing
  - **Security Groups:** To control access to instances
  - **Subnets:** Public and private subnets for network isolation

#### Run Terraform

1. **Navigate to the Terraform Directory:**
   ```bash
   cd path/to/terraform/directory
   terraform init
   terraform fmt
   terraform validate
   terraform plan
   terraform apply
   #terraform destroy
   ```
   
### 2. Master Node Configuration

- **Tools Used:** Ansible
- **Tasks Performed:**
  - Installed Kubernetes components (`kubeadm`, `kubelet`, `kubectl`)
  - Configured the master node and initialized the Kubernetes cluster
  - Connected worker nodes to the master node using Ansible playbooks:
    - **`kube-dependencies.yml`**: Installs required dependencies
    - **`master.yml`**: Configures the master node
    - **`workers.yml`**: Configures the worker nodes
    - **`helm.yml`**: Installs and configures Helm
   
### Run Ansible

```
ansible all -i path/to/inventory/file -m ping
ansible-playbook -i path/to/inventory/file kube-dependencies.yml
ansible-playbook -i path/to/inventory/file master.yml
ansible-playbook -i path/to/inventory/file workers.yml
ansible-playbook -i path/to/inventory/file helm.yml
```

### 3. Jenkins Installation and Configuration

- **Tools Used:** Helm
- **Steps:**
  - Installed Helm on the master node
  - Deployed Jenkins using Helm charts on the Kubernetes cluster
  - Configured Jenkins with necessary plugins for CI/CD

### 4. CI/CD Pipeline Setup

- **Repository:** [Day38-devops](https://github.com/Nency-Ravaliya/Day38-devops)
- **Pipeline Includes:**
  - **Source Code Checkout:** Pulls code from GitHub
  - **Build Docker Image:** Builds Docker images from the Dockerfile
  - **Push Docker Image:** Pushes Docker images to Docker Hub
  - **Deploy to Kubernetes:** Deploys the Docker image to Kubernetes using Helm
  - **Print Logs:** Fetches logs from the deployment for verification

### 5. Application Deployment

- **Application:** E-commerce application
- **Steps:**
  - Built and pushed Docker image of the Node.js application
  - Deployed the application on Kubernetes worker nodes
  - Exposed the application using a Kubernetes Service

## Project Files

- **Terraform Configuration:** Defines AWS infrastructure
- **Ansible Playbooks:** Configures Kubernetes and Helm
- **Jenkins Pipeline:** Automates the CI/CD process
- **Dockerfile:** Defines the Docker image for the Node.js application
- **Node.js Application:** Source code for the application

## Usage

1. **Provision Infrastructure:**
   - Run Terraform scripts to create AWS resources.

2. **Configure Nodes:**
   - Use Ansible playbooks to set up the master and worker nodes.

3. **Install Jenkins:**
   - Deploy Jenkins using Helm and configure it for CI/CD.

4. **Run Pipeline:**
   - Use Jenkins to build, push, and deploy the Docker image.

5. **Deploy Application:**
   - The e-commerce application will be deployed on Kubernetes.

## References

- [Terraform Documentation](https://www.terraform.io/docs)
- [Ansible Documentation](https://docs.ansible.com/)
- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)

For more detailed information on each step, please refer to the respective scripts and configuration files in this repository.


# Day38-devops

![image](https://github.com/user-attachments/assets/c7a63997-df79-4d25-957e-835edcdc1f64)
![image](https://github.com/user-attachments/assets/06863ecc-67be-4b8b-ae28-ad68f629c314)
![image](https://github.com/user-attachments/assets/4d439506-c2f8-4240-9f29-c8b12defd526)
![image](https://github.com/user-attachments/assets/852bca63-6dc6-48c5-94c9-977b84de1aa2)

Master and Worker Nodes:

![image](https://github.com/user-attachments/assets/56d8c66d-227b-4e24-8fd4-05efc1a98edd)

S3 Bucket:
![image](https://github.com/user-attachments/assets/8b988d9d-8ecc-41cd-b69c-91b4e3a5e792)

VPC and Subnets:
![image](https://github.com/user-attachments/assets/c6367001-1315-4abb-8e80-68a923e37b21)
![image](https://github.com/user-attachments/assets/42698034-ce6a-4049-98da-63801524183b)
![image](https://github.com/user-attachments/assets/b12e8ac2-6b50-485c-9590-4b858a226766)

Route table:
![image](https://github.com/user-attachments/assets/6cee16c3-b764-401f-8957-eddca9d2be4e)

Internet Gateway:
![image](https://github.com/user-attachments/assets/f02e1d8c-c525-4709-b78d-0753f084813b)

Security Groups:
![image](https://github.com/user-attachments/assets/55dccde6-cbee-452a-b6fd-efd6aac2aaf2)
![image](https://github.com/user-attachments/assets/19e03eea-edce-4e7d-852d-c179674abf36)
![image](https://github.com/user-attachments/assets/826d11a4-39c7-4860-bb3c-e9c7eeed4645)
![image](https://github.com/user-attachments/assets/997eb0c7-220a-46c8-b724-b2559550d0e4)

Ansible:
![image](https://github.com/user-attachments/assets/77649a8d-d425-4ee5-afbc-679a4e4e5c1a)
![image](https://github.com/user-attachments/assets/e91654cd-f779-4dfd-902f-191054fd7ff2)
![image](https://github.com/user-attachments/assets/80949249-966c-479a-b703-da32c2e5fa33)
![image](https://github.com/user-attachments/assets/a27c6df5-2636-439a-865a-2f38106dd1f3)
![image](https://github.com/user-attachments/assets/6cec352f-a627-4866-99f5-a82284e335b2)
![image](https://github.com/user-attachments/assets/40abedaa-e570-44ae-b62a-06fdb8e33412)
![image](https://github.com/user-attachments/assets/c650fbbe-3ef1-46ce-bfb7-76a5a17d9f4b)
![image](https://github.com/user-attachments/assets/85a69455-34e6-4900-8c47-1fe040a35647)

Master node: All the nodes are ready and Helm is installed.
![image](https://github.com/user-attachments/assets/a8a2f7ed-67e2-4ed5-a73d-1d9b18a78c4c)
![image](https://github.com/user-attachments/assets/4aa93685-878e-45df-81d2-87274f8b4eed)
![image](https://github.com/user-attachments/assets/1d1d25b0-8c71-4653-8f71-7a8cc49e832b)

Mater node:
![image](https://github.com/user-attachments/assets/ef948f35-ebc3-4191-86df-4af6207d85c7)
![image](https://github.com/user-attachments/assets/01aa0d7b-993b-41ef-8fae-465462b13ec6)
![image](https://github.com/user-attachments/assets/8b5689e1-a0bf-4c0f-ab03-10ef03891b5d)
![image](https://github.com/user-attachments/assets/10b41388-f69a-4f8e-963c-a44058642ae3)
![image](https://github.com/user-attachments/assets/1678a5f7-1dcd-48ae-ac97-b570f2d1a4fc)


![image](https://github.com/user-attachments/assets/50889d9b-7aa7-49f2-bb6b-ed0cca8ad423)
![image](https://github.com/user-attachments/assets/e7a41133-0c4c-44f6-a534-3c5d6351c8c2)




























