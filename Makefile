runserver:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --watch --buildDrafts --verboseLog=true -v

runserver-zarina:
	hugo --buildDrafts --verboseLog=true -v
	hugo server --baseUrl=http://kodos.ccnmtl.columbia.edu/ --bind=0.0.0.0 --port=13093 --watch --buildDrafts --verboseLog=true -v

deploy-kodos:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://kodos.ccnmtl.columbia.edu:88/sb/common/teachrecovery_splash/public/' 
	rsync -a public/* pusher@kodos.ccnmtl.columbia.edu:/usr/local/share/sandboxes/common/teachrecovery_splash/public/

deploy-cunix:
	rm -rf public/*
	/usr/local/bin/hugo -s . -b 'http://teachrecovery.cumc.columbia.edu/'
	rsync -a public/* tlcreg@cunix.cc.columbia.edu:/www/data/cu/teachrecovery/


