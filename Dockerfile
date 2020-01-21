FROM alpine:3.11.2

# Install jq
RUN apk add jq bash

COPY . .

ENTRYPOINT [ "./get-az-client-creds.sh" ]
CMD [  ]
