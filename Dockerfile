FROM python:3.12
ENV START_BOT=/app
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"
WORKDIR $START_BOT
COPY pyproject.toml poetry.lock* /app/
RUN poetry env use python3.12
RUN poetry install --no-root --no-dev
COPY . /app/
# ENTRYPOINT ["poetry", "run", "python", "main.py"]
CMD ["/bin/bash"]
