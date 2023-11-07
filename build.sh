#sudo apt install golang-go

export GOBIN="$(pwd)/bin"
go install main.go

if [[ "$OSTYPE" = "darwin"* ]]; then
  if [[ "$(uname -m)" == 'arm64'  ]]; then
    mv bin/main bin/isourcemapper-arm
    exit 0
  fi
    
  mv bin/main bin/isourcemapper
else
  mv bin/main bin/sourcemapper
fi
