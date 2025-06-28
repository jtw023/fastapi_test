#!/usr/bin/env python
"""Testing FastAPI"""

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/hello")
def read_root():
    return {"message": "Hello from the FastAPI backend."}

def main():
    print(read_root())


if __name__ == "__main__":
    main()
