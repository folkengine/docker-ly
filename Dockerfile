FROM ubuntu:16.04
MAINTAINER Christoph <ignatz@gmail.com>

RUN apt-get update && apt-get install -y wget bzip2 ghostscript
RUN wget http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.19.80-1.linux-64.sh
RUN chmod +x lilypond-2.19.80-1.linux-64.sh
RUN ./lilypond-2.19.80-1.linux-64.sh

CMD ["lilypond"]