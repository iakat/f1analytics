FROM mysql:5

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    wget -q http://ergast.com/downloads/f1db.sql.gz -O /docker-entrypoint-initdb.d/f1db.sql.gz && \
    gzip -d /docker-entrypoint-initdb.d/f1db.sql.gz && \
    sed -i '1s/^/USE f1;\n/' /docker-entrypoint-initdb.d/f1db.sql && \
    apt-get remove -y wget && \
    apt-get clean && \
    rm -rf /tmp/* /var/lib/apt/lists/*
