FROM nimlang/nim:1.6.10-alpine-regular as nim

RUN apk --no-cache add libsass-dev pcre

WORKDIR /

COPY . .
RUN nimble install -y --depsOnly
EXPOSE 5000
