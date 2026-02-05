FROM docker.elastic.co/logstash/logstash:8.14.0

COPY config/nplus.atlas.logstash.conf /usr/share/logstash/pipeline/logstash_atlas.conf
COPY config/nplus.atlas.countries.logstash.conf /usr/share/logstash/pipeline/logstash_atlas_countries.conf
COPY config/nplus.atlas.cve.logstash.conf /usr/share/logstash/pipeline/logstash_atlas_cve.conf
COPY config/logstash.pipelines.yml /usr/share/logstash/config/logstash.pipelines.yml

CMD ["logstash", "-f", "/usr/share/logstash/pipeline"]
