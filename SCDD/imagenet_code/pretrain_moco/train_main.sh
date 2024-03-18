python main_moco.py \
  -a resnet18 \
  --lr 0.03 \
  --batch-size 256 \
  --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0 \
  /your/path/imagenet \
  --mlp --moco-t 0.2 --aug-plus --cos 