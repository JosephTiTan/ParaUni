export PYTHONPATH=.
accelerate launch scripts/evaluation/gen_eval.py configs/models/openuni_l_internvl3_2b_sana_1_6b_1024_hf.py --checkpoint /home/ma-user/work/tanjt/code/OpenUni-main/work_dirs_conn2/openuni_l_internvl3_2b_sana_1_6b_1024_hf_blip3o60k/iter_10000.pth  --batch_size 4  --output /home/ma-user/work/tanjt/code/OpenUni-main/eval_file/eval_conn2 \
         --height 1024 --width 1024 \
         --seed 123

## >>>>> DPG-Bench <<<<<
# export PYTHONPATH=.
# accelerate launch scripts/evaluation/dpg_bench.py configs/models/openuni_l_internvl3_2b_sana_1_6b_1024_hf.py --checkpoint /home/ma-user/work/tanjt/code/OpenUni-main/work_dirs_mean28_laynorm/openuni_l_internvl3_2b_sana_1_6b_1024_hf_blip3o60k/iter_10000.pth  --batch_size 4  --output /home/ma-user/work/tanjt/code/OpenUni-main/dpg_file/evalmean28_laynorm \
#          --height 1024 --width 1024 \
#          --seed 42
