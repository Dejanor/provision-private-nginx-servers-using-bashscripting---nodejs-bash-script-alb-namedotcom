# altschool-december-nginx-challenge
A task to deploy a program that displays the hostname or ip of the server, using Nginx, on 2(+) private servers in the private subnet(s) of a Logical Network, behind a Load Balancer, attached to an Auto Scaling Group.
### deploy-node-app.sh
- Bash script to deploy my nodejs program
- Runs as userdata too
### package.json, server.js
- Deployed program
### eaaladejana.live
- Nginx configuration
### deploy-node-app-x.me.sh, eaaladejana.me
- Files for alternate domain "eaaladejana.me"
### AWS Infrastructure
- The infrastructure for this project was setup using the AWS console, Once familiar with Terraform or IaC(Infrastructure as Code) I'll update the repo with how to setup with that.
- **AWS Resources used:**
  - **VPC:** Your VPCs, Subnets, Internet gateways, Route tables, NAT Gateways
  - **EC2**: Instances, Load Balancers, Target Groups, AMIs, Launch Templates, Elastic IPs, Auto Scaling Groups, Security Groups
  - **Route 53**: Hosted Zones, AWS Certificate
  - **Certificate Manager**
### Procedures
- 
