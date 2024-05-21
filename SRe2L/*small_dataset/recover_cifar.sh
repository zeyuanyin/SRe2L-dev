# echo "test time: cifar10(ipc=50)"

# CUDA_VISIBLE_DEVICES=1 \
# python recover_cifar.py \
# --arch-name "resnet18" \
# --arch-path '/path/to/cifar100/resnet18_E200/ckpt.pth' \
# --exp-name "test_time_cifar10_rn18_1K_mobile.lr0.25.bn0.01" \
# --batch-size 10 \
# --lr 0.25 \
# --iteration 1000 \
# --r-bn 0.01 \
# --store-best-images \
# --ipc-start 0 --ipc-end 50

#output: 0.168 hours


echo "test time: cifar10(ipc=50) (bs=100, ipc=5)"

CUDA_VISIBLE_DEVICES=3 \
python recover_cifar10_bs100.py \
--arch-name "resnet18" \
--arch-path '/path/to/cifar100/resnet18_E200/ckpt.pth' \
--exp-name "test_time_cifar10_bs=100_rn18_1K_mobile.lr0.25.bn0.01" \
--batch-size 100 \
--lr 0.25 \
--iteration 1000 \
--r-bn 0.01 \
--store-best-images \
--ipc-start 0 --ipc-end 5

#output: 0.022 hours



echo "test time: cifar10(ipc=50) (bs=100, ipc=5)"

CUDA_VISIBLE_DEVICES=3 \
python recover_cifar10_bs100.py \
--arch-name "resnet18" \
--arch-path '/path/to/cifar100/resnet18_E200/ckpt.pth' \
--exp-name "test_time_cifar10_bs=100_rn18_4K_mobile.lr0.25.bn0.01" \
--batch-size 100 \
--lr 0.25 \
--iteration 4000 \
--r-bn 0.01 \
--store-best-images \
--ipc-start 0 --ipc-end 5

#output: 0.084 hours

