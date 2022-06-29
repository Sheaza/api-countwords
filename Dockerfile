FROM python:3.9

WORKDIR /api-countwords

COPY ./requirements.txt /api-countwords/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /api-countwords/requirements.txt

COPY ./get_request.py /api-countwords/

CMD ["uvicorn", "get_request:app", "--host", "0.0.0.0", "--port", "80"]