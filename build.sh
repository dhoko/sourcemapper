#sudo apt install golang-go

export GOBIN="$(pwd)/bin"
go install main.go
mv bin/main bin/sourcemapper
