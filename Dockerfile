FROM linuxserver/sabnzbd as builder

RUN \
 echo "**** install packages ****" && \
 apt update && \
 apt install -y curl unzip && \
 echo "**** grab privado configs ****" && \
 mkdir -p /defaults/ && \
 curl -o \
	/tmp/privado.zip -L \
	"https://privado.io/apps/ovpn_configs.zip" && \
 unzip \
	/tmp/privado.zip \
	-d /defaults/

FROM linuxserver/sabnzbd

RUN apt install -y openvpn
COPY --from=builder /defaults /defaults
COPY root/ /