FROM alpine:3.11

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    jq gawk
COPY ./cvcl2xrefs.awk ./cvcl_xref.tsv ./metasra_postprocess.sh /app/
RUN chmod 755 /app/metasra_postprocess.sh
RUN chmod 766 /app/cvcl2xrefs.awk
RUN chmod 766 /app/cvcl_xref.tsv

ENTRYPOINT ["/app/metasra_postprocess.sh"]
