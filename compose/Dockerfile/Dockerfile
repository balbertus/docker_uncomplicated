FROM cgr.dev/chainguard/python:latest-dev as building
WORKDIR /app
RUN python -m venv venv
ENV PATH="/app/venv/bin":$PATH
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=building /app/venv /app/venv
COPY  app.py .
COPY templates templates/
COPY static static/
ENV PATH="/app/venv/bin:$PATH"

EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
