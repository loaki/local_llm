# download LLM model 
# https://huggingface.co/TheBloke/OpenHermes-2.5-Mistral-7B-GGUF/tree/main
# 8GB RAM : Q6 quant for GPU and Q4_K_M for CPU

MODEL=openhermes-2.5-mistral-7b.Q2_K.gguf
wget https://huggingface.co/TheBloke/OpenHermes-2.5-Mistral-7B-GGUF/resolve/main/${MODEL}

# https://gpt4all.io
# 1GB RAM : https://gpt4all.io/models/gguf/all-MiniLM-L6-v2-f16.gguf
# MODEL=all-MiniLM-L6-v2-f16.gguf
# wget https://gpt4all.io/models/gguf/${MODEL}

# compile llama.cpp
# https://github.com/ggerganov/llama.cpp
git clone https://github.com/loaki/llama.cpp
cd llama.cpp
make

# run server
# for GPU
# ./server -m <model>.gguf -t 4 -c 2048 -ngl 33 --host 0.0.0.0 --port 8086
# for CPU
./server -m ../${MODEL} -c 2048 --host 0.0.0.0 --port 8086