FROM alpine:3.11

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    jq gawk
COPY ./cvcl2xrefs.awk ./cvcl_xref.tsv ./metasra_postprocess.sh /app/
ENTRYPOINT ["/app/metasra_postprocess.sh"]
