# Dialogos — CLAUDE.md

## Project
Dialogos is a web app that generates Socratic philosophical dialogues between LLMs cast as classical characters. See SPEC.md for the full technical specification.

## Stack
- Python 3.14+
- FastAPI 
- SQLite
- Agno (agent framework)
- pytest + pytest-cov

## Project Structure
Follows src/ layout. Installable package lives in `src/dialogos/`. Tests mirror the package structure in `tests/`.

## Development Approach
- **Use red/green TDD.** Write tests before implementation. No exceptions without explicit instruction.
- **Small steps.** Implement one thing at a time, confirm it works, move on.
- **No commits.** Leave all git operations to the developer.
- **Do not use sudo.** If a task requires elevated privileges, output the command and ask the developer to run it manually.
- **Use `uv run pytest` to run tests.** Do not set PYTHONPATH manually — the project is properly configured with pytest.ini and an installable src/ layout. Just `uv run pytest [args]`.

## Database
- Raw+DC pattern: raw parameterized SQL + Python dataclasses. No SQLAlchemy, no ORM.

## Code Style
- Type annotations on all functions
- Async throughout — this is an async application
- Explicit over implicit
