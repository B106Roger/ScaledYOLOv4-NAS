echo start
python ./train.py --data ./data/voc.yaml --hyp ./data/hyp.finetune.yaml --cfg ./models/yolov4-csp-20.yaml --batch-size 16 --weight '' --device 0,1 --img-size 416 | tee runs/output_1024_csp_0.75.txt
# python ./train.py --data ./data/voc.yaml --hyp ./data/hyp.finetune.yaml --cfg ./models/yolov4-csp-20.yaml --batch-size 16 --weight '' --device 1 --img-size 416 |& tee -a ./runs/output.txt