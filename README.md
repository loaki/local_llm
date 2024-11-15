# local llm  

`docker-compose up -d`  

endpoint : http://localhost:8086/completion
```
curl -X POST http://localhost:8086/completion \
     -H "Content-Type: application/json" \
     -d '{
           "prompt": "<|im_start|>system\n'${system_context}'<|im_end|>\n<|im_start|>user\n'${prompt}'<|im_end|>\n<|im_start|>assistant",
           "n_predict": 512,
           "temperature": 0.7,
           "stop": ["<|im_end|>"],
           "tokens_cached": 0
         }'
```
