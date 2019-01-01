FROM python:3.6.8-alpine3.8
EXPOSE 80

# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
RUN mkdir -p /tmp/src/app
WORKDIR /tmp/src/app

COPY requirements_dockerfile.txt constraints_dockerfile.txt /tmp/src/app/
RUN pip install --no-cache-dir -r requirements_dockerfile.txt

COPY app.py /tmp/src/app
CMD ["/tmp/src/app/app.py"]
