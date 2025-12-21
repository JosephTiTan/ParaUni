export GPUS_PER_NODE=2
export NNODES=1
export NODE_RANK=0
export MASTER_ADDR=0.0.0.0
export MASTER_PORT=32749

torchrun \
    --nproc_per_node=$GPUS_PER_NODE \
    --nnodes=$NNODES \
    --node_rank=$NODE_RANK \
    --master_addr=$MASTER_ADDR \
    --master_port=$MASTER_PORT \
    scripts/process_data/tokenize_images_ddp_dc32_hf.py \
    configs/datasets/internvl3_2b_1024/blip3o60k.py \
    --batch_size 8