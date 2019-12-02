FROM wowzamedia/wowza-streaming-engine-linux:4.7.8

COPY ./wowza/conf/Server.xml /usr/local/WowzaStreamingEngine-4.7.8/conf/
ENTRYPOINT /sbin/entrypoint.sh
