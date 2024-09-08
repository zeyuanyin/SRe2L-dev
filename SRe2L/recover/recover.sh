CUDA_VISIBLE_DEVICES=0 \
python data_synthesis.py --ipc-start 35 --ipc-end 40 \
    --arch-name "resnet18" \
    --exp-name "rn18_bn0.01_[4K]_x_l2_x_tv.crop" \
    --batch-size 100 \
    --lr 0.25 \
    --iteration 200 \
    --l2-scale 0 --tv-l2 0 --r-bn 0.01 \
    --verifier --store-best-images
