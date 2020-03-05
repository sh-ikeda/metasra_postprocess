### 

BEGIN {
    OFS = "\t"
    FS = "\t"
}

FNR==NR {
    id = $1
    xref = $2
    if(id2ref[id]) {
        id2ref[id] = id2ref[id] "," xref
    } else {
        id2ref[id] = xref
    }
}

FNR!=NR {
    $6 = id2ref[$4]
    print
}
