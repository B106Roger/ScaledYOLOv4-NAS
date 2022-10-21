echo start
python ./train.py --data ./data/voc.yaml --hyp ./data/hyp.finetune.yaml --cfg ./models/yolov4-p5-20.yaml --batch-size 16 --weight '' --device 1 --img-size 416 | tee runs/output_1012_p5.txt