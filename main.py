from typing import Union

from fastapi import FastAPI , File , UploadFile

app = FastAPI()


@app.get("/")
def read_root():
    return {"Drag or drop the image "}

@app.post("/uploadfile/")
async def create_upload_file(file: UploadFile):
    return {"filename": file.filename}