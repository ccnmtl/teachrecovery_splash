runserver:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --watch --buildDrafts --verboseLog=true -v

runserver-zarina:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --theme=hyde --watch --buildDrafts --verboseLog=true -v

deploy-stage:
	rm -rf public/*
	/usr/local/bin/hugo -s . --theme=hyde -b 'https://livingandthriving.stage.ccnmtl.columbia.edu/' \
	&& s3cmd --acl-public --delete-removed --no-progress --no-mime-magic --guess-mime-type sync public/* s3://livingandthriving.stage.ccnmtl.columbia.edu/
