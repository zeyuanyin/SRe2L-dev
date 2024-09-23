wandb disabled
# wandb enabled
# wandb online

CUDA_VISIBLE_DEVICES=5 \
python train_FKD.py \
    --wandb-project 'val_rn18_fkd' \
    --batch-size 1024 \
    --gradient-accumulation-steps 2 \
    --model resnet18 \
    --cos \
    -j 4 \
    -T 20 \
    --mix-type 'cutmix' \
    --output-dir ./save/add_sre2l_in1k_rn18_4k_ipc50 \
    --train-dir /home/zeyuan/syn-data/sre2l_in1k_rn18_4k_ipc50 \
    --val-dir /home/zeyuan/imagenet/val \
    --fkd-path ./FKD_cutmix_fp16/