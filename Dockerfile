FROM docker.elastic.co/logstash/logstash:8.14.0

COPY config/nplus.atlas.logstash.conf /usr/share/logstash/pipeline/nplus.atlas.logstash.conf
COPY config/nplus.atlas.countries.logstash.conf /usr/share/logstash/pipeline/nplus.atlas.countries.logstash.conf
COPY config/logstash.pipelines.yml /usr/share/logstash/config/logstash.pipelines.yml

CMD ["logstash", "-f", "/usr/share/logstash/pipeline"]
