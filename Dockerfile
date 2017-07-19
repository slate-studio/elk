FROM sebp/elk
ADD ./03-udp-input.conf /etc/logstash/conf.d/03-udp-input.conf
EXPOSE 5601 9200 5044 5000 9998 
EXPOSE 5959/udp
CMD [ "/usr/local/bin/start.sh" ]
