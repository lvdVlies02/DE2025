# importing Flask and other modules
import requests

# See https://www.w3schools.com/python/module_requests.asp
response = requests.post('http://localhost:5005/api/generate', json={
        "prompt": "Why is the data engineering?",
        "stream" : False,
        "model" : "tinyllama"
    })
print(response.status_code)
print(response.text)
