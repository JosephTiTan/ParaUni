export NODE_RANK=0
export MASTER_ADDR=0.0.0.0
export MASTER_PORT=32748

export PYTHONPATH=./:$PYTHONPATH
GPUS_PER_NODE=2 NNODES=1 bash scripts/train_ddp.sh \
     configs/finetune/openuni_l_internvl3_2b_sana_1_6b_1024_hf_blip3o60k.py \
     --deepspeed deepspeed_zero2
