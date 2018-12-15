FROM wowzamedia/wowza-streaming-engine-linux:4.7.7

COPY ./wowza/conf/Server.xml /usr/local/WowzaStreamingEngine-4.7.7/conf/
ENTRYPOINT /sbin/entrypoint.sh
