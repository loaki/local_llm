docker build -t llm . 
docker run -p 8086:8086 -dit llm

endpoint : http://localhost:8086/completion