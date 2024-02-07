#!/bin/bash

rm -rf ./tempdir

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp restaurante.py tempdir/
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile

echo "COPY ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY restaurante.py /home/myapp/" >> tempdir/Dockerfile

echo "EXPOSE 5030" >> tempdir/Dockerfile

echo "CMD python3 /home/myapp/restaurante.py" >> tempdir/Dockerfile

cd tempdir

docker build -t restaurante .

docker run -t -d -p 5030:5030 --name restauranterunning restaurante

docker ps -a