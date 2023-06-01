FROM python:3.9.13
COPY . .
RUN pip install -r requirements.txt
COPY runner.sh /scripts/runner.sh
RUN ["chmod", "+x", "/scripts/runner.sh"]
RUN ["echo", "$config","|","base64","--decode",">","/notebooks/.platopia-igs-9418924bc717.json"]
ENTRYPOINT ["/scripts/runner.sh"]
EXPOSE 3000