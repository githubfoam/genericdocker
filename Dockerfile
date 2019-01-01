FROM python:2.7.13-alpine
EXPOSE 80

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements_dockerfile.txt constraints_dockerfile.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements_dockerfile.txt

COPY app.py /usr/src/app
CMD ["/usr/src/app/app.py"]
