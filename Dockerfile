FROM dschanoeh/props:1.0.0 as props

FROM alpine:latest
COPY --from=props /props /usr/bin/props
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]