sudo docker build -t llm .  
sudo docker run --restart unless-stopped -p 8086:8086 -dit llm  

endpoint : http://localhost:8086/completion
