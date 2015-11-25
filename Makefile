runserver:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --watch --buildDrafts --verboseLog=true -v

deploy-kodos:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://kodos.ccnmtl.columbia.edu:88/sb/common/teachrecovery_splash/public/' 

deploy-stage:
	rm -rf public/*
	/usr/local/bin/hugo -s . --theme=hyde -b 'https://livingandthriving.stage.ccnmtl.columbia.edu/' \
	&& s3cmd --acl-public --delete-removed --no-progress --no-mime-magic --guess-mime-type sync public/* s3://livingandthriving.stage.ccnmtl.columbia.edu/
