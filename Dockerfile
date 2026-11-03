# mcp2xiaozhi bridge
FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

RUN pip install --no-cache-dir mcp2xiaozhi

WORKDIR /app

# Copy MCP configuration into the container
COPY mcp_config.json /app/mcp_config.json

CMD ["mcp2xiaozhi", "run", "--all"]
