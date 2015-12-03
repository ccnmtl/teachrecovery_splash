runserver:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --watch --buildDrafts --verboseLog=true -v

deploy-kodos:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://kodos.ccnmtl.columbia.edu:88/sb/common/teachrecovery_splash/public/' 

