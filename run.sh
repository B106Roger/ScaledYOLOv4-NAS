# train the yolov4 model
python train.py --batch-size 32 --img-size 416 --data voc.yaml --hyp ./data/hyp.finetune.yaml --cfg ./models/yolov4-csp.yaml --weights '' --device 3,4 --name EXP_NAME
# test the trained model
python test.py --img 416 --conf 0.001 --batch 8 --device 5 --data voc.yaml --weights BEST_WEIGHT.pt
# convert .pt into .onnx
python ./export.py --weights WEIGHT.pt --img-size 416