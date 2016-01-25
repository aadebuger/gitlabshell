docker run --name gitlab -d \
    --link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
    --publish 10022:22 --publish 10080:80 \
	--env 'GITLAB_HOST=gitlab.lighting.com' \
	--env 'SMTP_TLS=true' \
    --env 'SMTP_USER=30758919@qq.com' --env 'SMTP_PASS=genrnidzyejzbjeb' \
	--env 'SMTP_HOST=smtp.qq.com' --env 'SMTP_PORT=465' \
	--env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
    --env 'GITLAB_SECRETS_DB_KEY_BASE=FwtcFr9swpksw7cLJzX4XMbgNfTNhgvxHPp7qkmTHgmFpbTcxgC7V94XCVRKxCKt' \
    --volume /srv/docker/gitlab/gitlab:/home/git/data \
    sameersbn/gitlab:8.3.4-2
