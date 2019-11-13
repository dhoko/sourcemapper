#sudo apt install golang-go

export GOBIN="$(pwd)/bin"
go install main.go

if [[ "$OSTYPE" = "darwin"* ]]; then
  mv bin/main bin/isourcemapper
else
  mv bin/main bin/sourcemapper
fi
