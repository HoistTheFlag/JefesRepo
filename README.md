README

1. Download both files.

2. Python may have to be installed with:
	sudo apt install python3-pip -y
	pip install pynput

3. Cron integration:
	crontab -e
	# Run each minute
	* * * * * /path/RedTeamBashScript.sh
