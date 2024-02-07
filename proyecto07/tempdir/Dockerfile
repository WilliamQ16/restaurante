FROM python
RUN pip install flask
COPY ./static /home/myapp/static/
COPY ./templates /home/myapp/templates/
COPY restaurante.py /home/myapp/
EXPOSE 5030
CMD python3 /home/myapp/restaurante.py
