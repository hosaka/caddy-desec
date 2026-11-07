FROM docker.io/library/caddy:2.11.7-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM docker.io/library/caddy:2.11.7

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
