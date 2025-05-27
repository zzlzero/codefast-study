CUDA_VISIBLE_DEVICES=0
mkdir -p log
python main.py \
  --model codellama/CodeLlama-34b-hf \
  --additional_model models/GenGuard_Multi_PL_codellama_34b/model.pth \
  --is_additional_model \
  --tasks mbpp \
  --max_new_tokens 300 \
  --do_sample True \
  --n_samples 1 \
  --batch_size 1 \
  --allow_code_execution \
  --save_generations \
  --use_auth_token \
  --use_comment \
  --save_generations_path results/codellama_34b_mbpp_codefast \
  --precision bf16 \
  --decoding_strategy greedy \
  2>&1 | tee log/codellama_34b_mbpp_codefast.log