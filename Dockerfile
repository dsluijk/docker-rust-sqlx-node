FROM rust:1.53

# Install SQLx
RUN cargo install sqlx-cli --no-default-features --features postgres

# Install Yarn
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install nodejs -y
RUN npm install -g yarn -y
RUN yarn -v