FROM python
COPY src /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b","0.0.0.0:34801","app:app"]
