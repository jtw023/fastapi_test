## Repository for Testing a FastAPI Server with Flutter
### ### Prerequisites ###
1. Clone this repository to local.

### ### Running POC ###
1. Navigate to `fastapi_test/services`.
2. Run `sudo docker-compose up --build -d backend`.
3. Open `http://127.0.0.1:8000/hello` in your browser to see the message.
4. Run `sudo docker-compose up --build frontend` first. It builds for linux by default. You can also do `sudo docker-compose run -e BUILD_TARGET=android frontend` where build target is any of linux,windows,apk,ios.
5. Run `./flutter_frontend/build/executables/bundle/flutter_frontend` if testing on linux.
6. Run `sudo docker stop services-backend-1`.
