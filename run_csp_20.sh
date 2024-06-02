python -m torch.distributed.launch --nproc_per_node 2  train.py --batch-size 48 --img 416 --data ./data/coco.yaml --cfg ./models/yolov4-csp-coco.yaml --weights '' --device 0,1 --name csp-coco --hyp ./data/hyp.finetune.yaml --noautoanchor
export LD_LIBRARY_PATH=/home/user/anaconda3/envs/zdnas/lib
python test.py --img 416 --conf 0.001 --batch 8 --device 0 --data voc.yaml --weights weights/yolov4-p5.pt
python train.py --batch-size 32 --img-size 416 --data voc.yaml --hyp ./data/hyp.finetune.yaml --cfg   --weights '' --device 2 --name test --resume