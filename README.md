## Repository for Testing a FastAPI Server with Flutter
### ### Prerequisites ###
1. Ensure that the [docker compose](https://docs.docker.com/compose/install/) plugin is installed.
2. Clone this repository to local.

### ### Running POC ###
1. Navigate to `fastapi_test/services`.
2. Run `sudo docker build -t my-backend ./backend`.
3. Run `sudo docker run -d --rm --name backend-container -p 8000:8000 -v $(pwd)/backend:/app -w /app my-backend uv run uvicorn main:app --host 0.0.0.0 --port 8000`
3. Open `http://127.0.0.1:8000/hello` in your browser to see the message.
4. Run `sudo docker build -t my-frontend ./flutter_frontend`
4. Run `sudo docker run --rm --name frontend-container -e BUILD_TARGET=linux -v $(pwd)/flutter_frontend/build:/app/build -w /app my-frontend` where build target is any of linux,windows,apk,ios.
5. Run `./flutter_frontend/build/executables/bundle/flutter_frontend` if testing on linux.
6. Run `sudo docker stop backend-container`.
