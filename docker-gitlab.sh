sudo docker run --detach \
	--hostname 127.0.0.1 \
	--publish 8088:80 --publish 1022:22 \
	--name gitlab \
	--restart always \
	--volume /sdb/work/srv/gitlab/config:/etc/gitlab \
	--volume /sdb/work/srv/gitlab/logs:/var/log/gitlab \
	--volume /sdb/work/srv/gitlab/data:/var/opt/gitlab \
	gitlab/gitlab-ce
