# Default recipe - list available commands
default SESSION_NAME="dialogos":
    @just --list

# Run app
run:
    uv run fastapi dev src/dialogos/main.py

# Run tests
test *args:
    uv run pytest {{ args }}
