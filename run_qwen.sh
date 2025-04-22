CUDA_VISIBLE_DEVICES=1
mkdir -p log
python main.py \
  --model Qwen/Qwen2.5-Coder-7B \
  --tasks mbpp \
  --max_new_tokens 300 \
  --do_sample True \
  --n_samples 1 \
  --batch_size 1 \
  --allow_code_execution \
  --save_generations \
  --use_auth_token \
  --use_comment \
  --save_generations_path results/Qwen2.5-Coder-7B_mbpp_baseline \
  --precision bf16 \
  --decoding_strategy greedy \
  2>&1 | tee log/Qwen2.5-Coder-7B_mbpp_baseline.log