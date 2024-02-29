all: help

help:
	@echo ""
	@echo "   Help Menu"
	@echo ""
	@echo "   make clone            - clones the subrepostories needed"
	@echo "   make pull             - pull the subrepostories"
	@echo ""

pull:
	git --work-tree=./firmware pull origin
	git --work-tree=./docker pull origin

firmware:
		git clone git@github.com:mx-car/mx-car.git $@

docker:
		git clone git@github.com:mx-car/docker.git $@


clone:  \
	firmware \
	docker
