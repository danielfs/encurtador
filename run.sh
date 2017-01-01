#!/bin/bash

echo "Executando a aplicação na porta 8080"
docker run --rm -p 8080:8080 -it danielfs/encurtador
