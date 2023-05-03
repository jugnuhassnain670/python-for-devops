install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pylint --disable=R,C *.py devopslib

test:
	python -m pytest -vv --cov=devopslib test_*.py

format:
	black *.py devopslib/*.py

post-install:
	python -m textblob.download_corpora

deploy:
	#deploy
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 258647350457.dkr.ecr.us-east-1.amazonaws.com
	docker build -t pythonfordevops .
	docker tag pythonfordevops:latest 258647350457.dkr.ecr.us-east-1.amazonaws.com/pythonfordevops:latest
	docker push 258647350457.dkr.ecr.us-east-1.amazonaws.com/pythonfordevops:latest

all: install post-install lint test format deploy








