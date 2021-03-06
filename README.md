# Elk-Stack-Project
Create and secure vertual machines network 
## Automated ELK Stack Deployment
My File
The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](https://drive.google.com/file/d/1Cz0s3NfbKwJlKtX96Svtgz5MpM5IP6gv/view?usp=sharing)



These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._ 

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting inbound access to the network. The load balancer ensures that work to process incoming traffic will be shared by both vulnerable web servers. Access control will ensure that only authorized users, namely, ourselves, will be able to connect in the first place.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
In addition to managing traffic flows accross enterprise routers and servers, Load balancer defends an organization against DDoS by shifting attack trafic from the corporate server to a public cloud provider.
Jum box is a source connector from where we can connect to other servers; Web1 and Web2 in our case. In order to access Web1 and Web2 servers, a client need to first acces a Jump Box which is a security layer.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file systems of the VMs on the network and system metrics.
- _TODO: What does Filebeat watch for?_ Filebeat detects changes to the filesystem; especialy we use it to collect Apache logs.

- _TODO: What does Metricbeat record?_ Metricbeat detects changes in system, such as CPU usage; we use it to generate a trace of all atcitity that takes place on the nework.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| DVWA1    |   Web1   | 10.0.0.5   | Linux            |
| DVWA2    |   Web2   | 10.0.0.6   | Linux            |
| Elk      |Monitoring| 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jum box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 52.250.12.89
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by each other.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |     Yes             | 10.0.0.4             |
| DVWA1    |     No              | 10.0.0.5             |
| DVWA2    |     No              | 10.0.0.6             |
| Elk      |     No              | 10.1.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because... only ansible public key can be used
- _TODO: What is the main advantage of automating configuration with Ansible?_
The main avanatage of Ansible is to automate away drudgery from daily tasks while reducing or elimination human error.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ... Install docker python module
- ... Download filebeat using CURL command
- ... Enable and configure system module
-.... Install docker.io and pip3

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.


![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
Web1: 10.0.0.4    and Web2: 10.0.0.5
We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

  Filebeat 
  Metribeat


These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

Filebeat detects changes to the filesystem and is especialy used to collect Apache logs.
Metricbeat detects changes in system, such as CPU usage. We use it to generate a trace of all atcitity that takes place on the nework.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:

- Copy the playbook file to Ansible control Node.
- Update the playbook configuration file to include the IP Address
- Run the playbook, and navigate to check data to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_

Playbook is the file where Ansible code is written and contain the steps which the user wants to execute on a particular machine. Playbooks are written in YAML(Yet Another Markup Language.
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_1

playbook-config.yml
This configuration file is edithed and the hostsis paired with the pirivate ip address.

- _Which URL do you navigate to in order to check that the ELK server is running?

ip:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
