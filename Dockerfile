FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl gnupg
RUN curl -o /tmp/hp-ams.deb \
    https://downloads.linux.hpe.com/SDR/repo/mcp/Debian/pool/non-free/hp-ams_2.8.3-3056.1ubuntu16_amd64.deb
RUN dpkg -i /tmp/hp-ams.deb || apt-get install -f -y
RUN rm /tmp/hp-ams.deb
CMD ["/sbin/amsHelper", "-f"]
