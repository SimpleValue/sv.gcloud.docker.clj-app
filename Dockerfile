FROM google/cloud-sdk

COPY run.sh /run.sh

CMD ["/run.sh"]