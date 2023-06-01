FROM python:3.8.10
COPY . .
RUN pip install -r requirements.txt
COPY runner.sh /scripts/runner.sh
RUN ["chmod", "+x", "/scripts/runner.sh"]
ENTRYPOINT ["/scripts/runner.sh"]
EXPOSE 8000