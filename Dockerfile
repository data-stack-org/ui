FROM ubuntu

RUN apt-get update && apt-get install -y \
  nodejs

# Create app directory
RUN mkdir -p /app/ui
WORKDIR /app/ui

# Share development directory
ADD . /app/ui

# Setup dependencies
# RUN npm install

# Open port 8080
# EXPOSE 8080

# CMD [ "python", "app.py" ]
