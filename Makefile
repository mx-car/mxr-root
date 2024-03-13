all: help

help:
	@echo ""
	@echo "   Help Menu"
	@echo ""
	@echo "   make clone            - clones the subrepostories needed"
	@echo "   make pull             - pull the subrepostories"
	@echo ""

pull:
	git pull origin
	git --work-tree=./firmware pull origin
	git --work-tree=./motor_shield pull origin
	git --work-tree=./docker pull origin

status:
	git status
	git --work-tree=./firmware status
	git --work-tree=./motor_shield status
	git --work-tree=./docker status
	
firmware:
		git clone git@github.com:mx-car/firmware.git $@

docker:
		git clone git@github.com:mx-car/docker.git $@
		
motor_shield:
		git clone git@github.com:mx-car/layout_motor_shield.git $@

clone:  \
	firmware \
	motor_shield \
	docker
