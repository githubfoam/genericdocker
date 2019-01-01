FROM python:3.6.8-alpine3.8
EXPOSE 80

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements_dockerfile.txt constraints_dockerfile.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements_dockerfile.txt

COPY app.py /usr/src/app
CMD ["/usr/src/app/app.py"]
