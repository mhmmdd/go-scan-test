FROM golang:1.17-alpine3.14

# add a non-root user to run our code as
RUN adduser --disabled-password --gecos "" appuser

WORKDIR /opt/test-runner
COPY . .

USER appuser
ENV GOCACHE=/tmp

ENTRYPOINT ["sh", "/opt/test-runner/run.sh"]
# CMD ["go", "run", "."]
