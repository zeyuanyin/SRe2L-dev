# wandb disabled
wandb enabled
wandb online

CUDA_VISIBLE_DEVICES=3 \
python train_KD.py \
    --wandb-project 'add_sre2l' \
    --batch-size 512 --gradient-accumulation-steps 2 \
    --model resnet18 \
    --teacher-model resnet18 \
    --cos \
    -j 4 \
    -T 20 \
    --mix-type 'cutmix' \
    --output-dir ./save/add_sre2l_in1k_rn18_4k_ipc50 \
    --train-dir /home/zeyuan/sre2l_in1k_rn18_4k_ipc50 \
    --val-dir /home/zeyuan/imagenet/val \
    --wandb-api-key d15c9070e9dbb45d5decc4735216c27bb89f18a4
