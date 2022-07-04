check_latest:
	# determine latest version of dnsmasq
	docker pull alpine:edge
	docker run --rm -ti alpine:edge ash -c 'apk update ; echo "-----" ; apk search --exact dnsmasq'

name = dnsmasq
version = 2.86

build:
	docker pull alpine:edge
	docker build . --no-cache -t tmuncks/$(name):latest
	docker tag tmuncks/$(name):latest tmuncks/$(name):$(version)
	#docker tag tmuncks/$(name):latest tmuncks/$(name):$(version)-$(shell date +%Y%m%d)

push:
	docker push tmuncks/$(name):latest
	docker push tmuncks/$(name):$(version)
	#docker push tmuncks/$(name):$(version)-$(shell date +%Y%m%d)
