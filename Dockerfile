FROM registry:2

# turn on auth (so it is not publicly accessible)
ENV REGISTRY_AUTH=htpasswd \
    REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" \
    REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd
