# YOLOv4-NAS

This is the implementation of "[Scaled-YOLOv4: Scaling Cross Stage Partial Network](https://arxiv.org/abs/2011.08036)" using PyTorch framwork.

## Note
This is Mish activation function version. If you want to use ReLU activation function, you can use **relu** branch. Or you can modify the common.py file (./models/common.py) 
![`models/common.py`](doc/yolo_common_activation.png)

### Dataset Position
```

└── data
    ├── coco  (Link)
    └── VOC2007 (Link) 

```

## Comments
### Training
```python train.py --batch-size 32 --img-size 416 --data voc.yaml --hyp ./data/hyp.finetune.yaml --cfg ./models/yolov4-csp.yaml --weights '' --device 3,4 --name EXP_NAME```
### Testing
```python test.py --img 416 --conf 0.001 --batch 8 --device 5 --data voc.yaml --weights BEST_WEIGHT.pt```
### Convert .pt into .onnx
```python ./export.py --weights WEIGHT.pt --img-size 416```

## For detail comparison please visit following url
comparison between current [ScaledYOLOv4-NAS](https://github.com/B106Roger/ScaledYOLOv4-NAS/commit/3d56bebfd8f39fc803b3980147e9f446c841c024) and [WongKinYiu/ScaledYOLOv4](https://github.com/WongKinYiu/ScaledYOLOv4) master branch.

[Comparison URL Is Here](https://github.com/B106Roger/ScaledYOLOv4-NAS/compare/676800364a3446900b9e8407bc880ea2127b3415...3d56bebfd8f39fc803b3980147e9f446c841c024#diff-ed183d67207df065a11e1289f19d34cc2abbc5448dea952683cfe9728c342b95)

## Model Config 
![`model_config`](doc/model_config.jpg)