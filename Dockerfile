FROM python:3.12.0
ENV START_BOT=/app
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"
WORKDIR $START_BOT
COPY . /app/

RUN poetry install --no-root --no-dev
COPY pyproject.toml poetry.lock* /app/
# RUN poetry env use python3.12

# ENTRYPOINT ["poetry", "run", "python", "main.py"]
CMD ["/bin/bash"]
