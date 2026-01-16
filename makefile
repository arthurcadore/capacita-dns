all: setup run

setup:
	@echo "Setting up the DNS environment..."
	echo "DNSStubListener=no" | sudo tee -a /etc/systemd/resolved.conf
	sudo systemctl restart systemd-resolved
	sudo ss -tuln | grep :53 || true

run:
	@if [ -z "$(ROLE)" ]; then \
		echo "ROLE not defined. Use:"; \
		echo "   make run ROLE=master"; \
		echo "   make run ROLE=slave"; \
		exit 1; \
	fi
	@if [ "$(ROLE)" = "master" ]; then \
		echo "Starting MASTER DNS"; \
		docker compose up master-dns; \
	elif [ "$(ROLE)" = "slave" ]; then \
		echo "Starting SLAVE DNS"; \
		docker compose up slave-dns; \
	else \
		echo "Invalid ROLE: $(ROLE)"; \
		echo "Valid values: master | slave"; \
		exit 1; \
	fi

clean:
	@echo "Cleaning up the DNS environment..."
	docker compose down
	sudo sed -i '/DNSStubListener=no/d' /etc/systemd/resolved.conf
	sudo systemctl restart systemd-resolved
	sudo systemctl status systemd-resolved