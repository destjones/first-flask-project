FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN first_flask_project create-db
RUN first_flask_project populate-db
RUN first_flask_project add-user -u admin -p admin
EXPOSE 5000
CMD ["first_flask_project", "run"]
