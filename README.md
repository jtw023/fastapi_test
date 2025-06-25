# Repository for Testing a FastAPI Server with Flutter
## Prerequisites

    1. Choose your preferred way to [install the Flutter SDK](https://docs.flutter.dev/install).
    2. Choose your preferred way to [install uv](https://docs.astral.sh/uv/getting-started/installation/).
    3. Clone this repository to local.

## Environment Initialization
    1. Run [uv sync](https://docs.astral.sh/uv/guides/integration/github/#syncing-and-running) from within fastapi_test.

## Running POC
    1. Activate the virtual environment in two different terminal tabs with `source .venv/bin/activate` from project root.
    2. Run `uvicorn main:app --reload --host 0.0.0.0 --port 8000` from one tab.
    3. Navigate to `fastapi_test/flutter_frontend` on the other terminal tab.
    4. Run `flutter run`
