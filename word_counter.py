from fastapi import FastAPI

app = FastAPI()


@app.get("/API/countwords")
def count_words(sentence: str):
    return {"words": len(sentence.split(" "))}
