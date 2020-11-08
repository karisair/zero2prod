# Use the latest Rust image
FROM rust:1.49

# Switch to (and create) the `app` directory
WORKDIR app

# Copy our files over
COPY . .

# Preset the sqlx settings for offline use
ENV SQLX_OFFLINE true

# Build for release
RUN cargo build --release

# Run!
ENTRYPOINT ["./target/release/zero2prod"]