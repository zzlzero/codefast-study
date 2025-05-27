CUDA_VISIBLE_DEVICES=7
mkdir -p log
python main.py \
  --model /data/zzl/model/CodeLlama-13b-hf \
  --additional_model models/GenGuard_Multi_PL_codellama_13b/model.pth \
  --is_additional_model \
  --tasks mbxp \
  --language cpp \
  --max_new_tokens 300 \
  --do_sample True \
  --n_samples 1 \
  --batch_size 1 \
  --allow_code_execution \
  --save_generations \
  --use_auth_token \
  --use_comment \
  --save_generations_path results/codellama_13b_mbxp_cpp_codefast_onlynewline \
  --precision bf16 \
  --decoding_strategy greedy \
  2>&1 | tee log/codellama_13b_mbxp_cpp_codefast_onlynewline.log