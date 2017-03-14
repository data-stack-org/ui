FROM ubuntu

RUN apt-get update && apt-get install -y \
  nodejs\
  npm\
  python3

# Create app directory
RUN mkdir -p /app/ui
WORKDIR /app/ui

# Share development directory
ADD . /app/ui

# Setup dependencies
RUN npm install

CMD [ "python3", "manage.py" ]
