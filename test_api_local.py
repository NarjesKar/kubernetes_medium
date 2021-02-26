import requests
import ast
base_url = "10.96.147.51:5000"
response = requests.get('http://'+ base_url +'/api/v1/resources/books/all')
data = ast.literal_eval((response.content).decode("utf-8"))
print(data)
