runserver:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --watch --buildDrafts --verboseLog=true -v

deploy-kodos:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://kodos.ccnmtl.columbia.edu:88/sb/common/teachrecovery_splash/public/' 

deploy-cunix:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://teachrecovery.cumc.columbia.edu/'
	rsync -a public/* tlcreg@cunix.cc.columbia.edu:/www/data/cu/teachrecovery/


