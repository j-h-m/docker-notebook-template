FROM python:3.7-buster

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

# --ip 0.0.0.0 allows you to connect to localhost:port from the host
# --no-browser is required
# --allow-root is required, unless you want to create a user account in the container
CMD jupyter notebook --ip 0.0.0.0 --port 9999 --no-browser --allow-root