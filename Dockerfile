# Use the latest Rust image
FROM rust:1.47

# Switch to (and create) the `app` directory
WORKDIR app

# Copy our files over
COPY . .

# Preset the sqlx settings for offline use
ENV SQLX_OFFLINE true

# Build for release
RUN cargo build --release

ENV APP_ENVIRONMENT production

# Run!
ENTRYPOINT ["./target/release/zero2prod"]