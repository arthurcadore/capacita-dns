# Simple DNS Server Deployment with Docker

This project provides a lightweight and portable solution to deploy a DNS server using Docker containers (BIND9). 

---
Follow the steps below to set up and run the application after pulling the latest changes from this respository.

Prerequisites
Before you begin, ensure you have the following installed on your system:

- Git version 2.34.1
- Docker version 24.0.6, build ed223bc
- Docker Compose version v2.21.0
- Make version 4.3

---

### For Getting Started clone the repository:

Copy code below: 

```
git clone https://github.com/arthurcadore/capacita-dns
```
Navigate to the project directory:
```
cd ./capacita-dns
```

Run make command to build and start the Docker containers:
```
make 
```

---

### Access the application:

Once the containers are up and running, you can access use DNS resolution by host IP address. 

The application use volume mapping to host configuration files stored in `./config` directory, so, to customize DNS local name resolution, re-configure `named.conf.local`, `named.conf.options` and `db.capacitacao` as your choice. 

It's recommended to configure a new `db.<app>` file, so after you done, remember to change the respectively parameters on `named.conf.local` file!