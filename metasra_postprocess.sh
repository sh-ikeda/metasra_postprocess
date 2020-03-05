#!/bin/sh

cat $@ | jq -r '.[] | {accession, m: ."mapped ontology terms"[]} |[.accession, .m.original_key, .m.original_value, .m.term_id, .m.term_name] | @tsv' | sort | awk -f /app/cvcl2xrefs.awk /app/cvcl_xref.tsv -
