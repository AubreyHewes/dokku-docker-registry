# A docker registry running in dokku

Just a simple wrapper to run docker registry in dokku

## Configuration

> See the [docker registry documentation](https://docs.docker.com/registry/configuration/), especially setting via env vars.

### Runs with htpasswd auth enabled

This is enabled by default so that the registry is not publicly available.

    REGISTRY_AUTH=htpasswd 
    REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" 
    REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd

### NOTES

Make sure to mount a volume to `/var/lib/repository` (or your env var location).
If you do not do this data is ephemereal to the container life.
