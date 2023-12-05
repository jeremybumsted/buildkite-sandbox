all: goclean gotest pytest

goclean:
	- go clean -testcache
gotest: 
	- cd app && gotestsum --junitfile junit.xml ./...
pytest: 
	- pytest --cache-clear
