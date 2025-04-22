CUDA_VISIBLE_DEVICES=0
mkdir -p log
python main.py \
  --model /data/zzl/CodeLess/runs/CodeLlama-7b-hf-codefast500rl \
  --tasks humaneval \
  --max_new_tokens 300 \
  --do_sample True \
  --n_samples 1 \
  --batch_size 1 \
  --allow_code_execution \
  --save_generations \
  --use_auth_token \
  --use_comment \
  --save_generations_path results/codellama_7b_humaneval_2plus500rl-codefast \
  --precision bf16 \
  --decoding_strategy greedy \
  2>&1 | tee log/codellama_7b_humaneval_2plus500rl-codefast.log