## Repository for Testing a FastAPI Server with Flutter
### ### Prerequisites ###
1. Clone this repository to local.
2. Choose your preferred way to [install the Flutter SDK](https://docs.flutter.dev/install) into the flutter_sdk directory.
3. Add the flutter bin directory to your environment PATH.
3. Choose your preferred way to [install uv](https://docs.astral.sh/uv/getting-started/installation/).

### ### Environment Initialization ###
1. Run [uv sync](https://docs.astral.sh/uv/guides/integration/github/#syncing-and-running) from within fastapi_test.

### ### Running POC ###
1. Activate the virtual environment in two different terminal tabs with `source .venv/bin/activate` from project root.
2. Run `uvicorn main:app --reload --host 127.0.0.1 --port 8000` from the project root on one tab to bring the fastapi server up.
3. Open `http://127.0.0.1:8000/hello` in your browser to see the message.
4. Navigate to `fastapi_test/flutter_frontend` on the other terminal tab.
5. Run `flutter run` to launch the app and see that same message.
