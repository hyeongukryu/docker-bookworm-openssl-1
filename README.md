# docker-bookworm-openssl-1

> ⚠️ **DEPRECATED**: As of recent releases, OpenSSL 3 is now supported. This makes the project unnecessary and it is no longer maintained. <https://github.com/MicrosoftDocs/azure-ai-docs/commit/2b3c2deecdf6ff5e71630d7221bfa96e1694b04e>

---

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
