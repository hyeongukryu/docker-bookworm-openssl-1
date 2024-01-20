# docker-bookworm-openssl-1

The official ASP.NET Core 8.0 Docker image is based on Debian 12 *"bookworm"*, which comes with OpenSSL 3, but to use the Microsoft Azure Speech SDK, OpenSSL 1 is required.

> The Speech SDK does not yet support OpenSSL 3.0, which is the default in Ubuntu 22.04 and Debian 12. <https://learn.microsoft.com/en-us/azure/ai-services/speech-service/quickstarts/setup-platform>

## Usage

```Dockerfile
# FROM mcr.microsoft.com/dotnet/aspnet:8.0
# ...

COPY --from=hyeonguk/docker-bookworm-openssl-1 /usr/local /usr/local
ENV SSL_CERT_DIR=/etc/ssl/certs

# ...
```
