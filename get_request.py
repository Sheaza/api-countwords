import requests

r = requests.get(url="http://127.0.0.1:8000/API/countwords", params={"sentence": "short sentence to test if it works"})
print(r.json())