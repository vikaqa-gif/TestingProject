FROM node:20-alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman

# Копируем коллекцию и окружение внутрь образа
COPY API/postman_collections/Petstore_API.postman_collection.json .
COPY API/postman_collections/Petstore_env.postman_environment.json .

# По умолчанию сохраняем отчёты в папку reports
CMD ["newman", "run", "Petstore_API.postman_collection.json", "-e", "Petstore_env.postman_environment.json", "-r", "cli,html", "--reporter-html-export", "/etc/newman/reports/newman-report.html"]
