FROM node:8.11.4

# Install Cypress dependencies
RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb

# Change current time zone to Europe/Helsinki Time zone
RUN date && \
    cp -f /usr/share/zoneinfo/Europe/Helsinki /etc/localtime && \
    date

# Versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
