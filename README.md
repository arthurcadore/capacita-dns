# capacitaDNS

### Author: Arthur Cadore M. Barcella
### Network Training Analyst at Intelbras

This project utilizes Docker Containers to host DNS server (BIND9).
Follow the steps below to set up and run the application after pulling the latest changes from this respository.

Prerequisites
Before you begin, ensure you have the following installed on your system:

- Git version 2.34.1
- Docker version 24.0.6, build ed223bc
- Docker Compose version v2.21.0

---

For Getting Started clone the repository:

Copy code below: 

```
git clone https://github.com/arthurcadore/capacita-dns
```
Navigate to the project directory:
```
cd ./capacita-dns
```

Run the command below to setup host server with Dependencies and disable local DNS resolver: 

```
chmod +x ./setup.sh
./setup.sh
```

Once the installation and configuration was finished, run the command below to start docker-compose file: 

```
docker compose up -d  & 
```

The "&" character creates a process id for the command inputed in, with means that the container will not stop when you close the terminal. 

---

Access the application:
Once the containers are up and running, you can access use DNS resolution by host IP address. 

The application use volume mapping to host configuration files stored in `./config` directory, so, to customize DNS local name resolution, re-configure `named.conf.local`, `named.conf.options` and `db.capacitacao` as your choice. 

It's recommended to configure a new `db.<app>` file, so after you done, remember to change the respectively parameters on `named.conf.local` file!

---

To stop the running container, use the following command:

```
docker-compose down
```

This command stops and removes the containers, networks, and volumes defined in the docker-compose.yml file.
