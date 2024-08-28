# Define variables
PORT = 8081
OUTPUT_DIR = output
BROWSER = "Arc"
IP = ${EC2_PUBLIC_IP}
URL = http://$(IP):$(PORT)
id ?= id
msg ?= msg
port ?= 8081
ip ?= $(IP)
pem ?= main.pem
remote ?= /home/ubuntu
local ?= *
platform ?= ubuntu


# Define targets
.PHONY: all install clean run

# Default target to set up the environment and run the server
all: install run upload


push:
	git pull
	git commit -m $(msg)
	git push
	
# Install dependencies
# install:
# 	$(PYTHON) -m venv $(VENV)
# 	. $(VENV)/bin/activate && $(PIP) install -r requirements.txt

uninstall:
	rm -rf $(VENV)

lsof:
	sudo lsof -i :$(PORT)

kill:
	sudo kill -9	$(id)
# Clean the project
clean:
	find . -type f -name "*.DS_Store" -delete
	find . -type f -name "*.log" -delete
	find . -type f -name "*.png" -delete
	find . -type f -name "log.html" -delete
	find . -type f -name "report.html" -delete
	find . -type f -name "output.xml" -delete
	@rm -rf build
	chmod +x cleanup.sh
	./cleanup.sh

db:
	docker run -d --name scylla -p 9042:9042 -p 7000:7000 -p 7001:7001 -v /my/local/data:/var/lib/scylla scylladb/scylla

connect:
	cqlsh localhost 9042
	
# Run the server
# run:
# 	mkdir -p $(OUTPUT_DIR)
# 	. $(VENV)/bin/activate && twistd -ny main.tac --logfile=$(OUTPUT_DIR)/main.log
	
# server:
# 	mkdir -p $(OUTPUT_DIR)
# 	twistd -ny main.tac --logfile=$(OUTPUT_DIR)/main.log
	
# serve:
# 	twistd -ny main.tac --logfile=$(OUTPUT_DIR)/main.log
	
automate:
	ansible-playbook -i ansible/inventory/main.ini ansible/main.yml

build:
	docker build -t nfl .

up:
	docker-compose up --build -d

down:
	docker-compose down

load:
	docker load -i nfl.tar

start:
	docker start $(id)
	
save:
	docker save -o nfl.tar nfl:latest 

clist:
	docker ps -a

imglist:
	docker images

clog:
	docker logs	$(id)

rm:
	docker rm	$(id)

stop:
	docker stop	$(id)

rmi:
	docker rmi	$(id)

rmc:
	docker stop	$(id)
	docker rm	$(id)

ec2_stop:
	aws ec2 stop-instances --instance-ids	${id}

ec2_start:
	aws ec2 start-instances --instance-ids	${id}

# Upload files to remote server
upload:
	rsync -avz --exclude="*.pem" --exclude="venv" -e "ssh -i  $(pem)" $(local) $(platform)@$(ip):$(remote)

doc:
	mkdocs serve
	
doc_build:
	mkdocs build

ngrok:
	nohup ngrok http $(port) > ngrok_$(port).log 2>&1 &

ngrok_log:
	tail -f ngrok_$(port).log

# If you want to provide help or instructions
help:
	@echo "Usage: make [target] [VARIABLE=value]"
	@echo "Targets:"
	@echo "  all        - Install dependencies, run the server, and upload files"
	@echo "  install    - Set up the virtual environment and install dependencies"
	@echo "  clean      - Clean up the project"
	@echo "  run        - Run the server"
	@echo "  kill       - Kill any running twistd server"
	@echo "  server     - Run the server without virtual environment activation"
	@echo "  automate   - Run Ansible playbook"
	@echo "  build      - Build the Docker image"
	@echo "  start      - Start the Docker container"
	@echo "  clist      - List Docker containers"
	@echo "  imglist    - List Docker images"
	@echo "  clog       - View Docker container logs"
	@echo "  rm         - Remove Docker container"
	@echo "  stop       - Stop Docker container"
	@echo "  rmi        - Remove Docker image"
	@echo "  upload     - Upload files to remote server"
	@echo "  help       - Display this help message"
	@echo "Usage: make startapp APP_NAME=<app_name>"
	@echo "Example: make startapp APP_NAME=blog"
