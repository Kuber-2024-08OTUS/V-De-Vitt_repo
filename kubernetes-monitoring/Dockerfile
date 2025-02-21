FROM nginx:latest

# Установка необходимых зависимостей
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Скачивание и установка exporter
RUN curl -L https://github.com/nginx/nginx-prometheus-exporter/releases/download/v1.4.1/nginx-prometheus-exporter_1.4.1_linux_amd64.tar.gz | tar xz -C /usr/local/bin --strip-components=1

# Копирование конфигурации nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Порт для exporter
EXPOSE 9113

CMD ["nginx", "-g", "daemon off;"]
