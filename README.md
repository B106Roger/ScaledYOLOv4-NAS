# YOLOv4-NAS

This is the implementation of "[Scaled-YOLOv4: Scaling Cross Stage Partial Network](https://arxiv.org/abs/2011.08036)" using PyTorch framwork.

## Model
``` ./models/yolov4-p5-zdnas-depth-40.yaml```  
The searched yolov4-p5 model by our algorithm with depth-loss and 40 GFLOPS
``` ./models/yolov4-p5-zdnaswot70-relu.yaml```  
The searched yolov4-p5 model by our algorithm with 70 GFLOPS
``` ./models/yolov4-snip50.yaml```  
The searched yolov4-csp model by SNIP with 50 GFLOPS

## Search Space Modification
1. Modify Network Architecture(models/common.py)
![`models/common.py`](doc/common_py_diff.jpg)

2. Modify Parsing Config(models/yolo.py)

3. Provide FLOPS information under different resolution(models/yolo.py)

- Pass input resolution into model constructor
![`train.py`](doc/train_py_diff.png)

- Caclculate FLOPS under given resolution
![`utils/torch_utils.py`](doc/torch_utils_py_diff.png)

## Training Screen
```python train.py --batch-size 64 --img-size 416 --data coco.yaml --cfg ./models/yolov4-snip50.yaml  --weights '' --device 0 --name test```
The commands above should generate following screen.
![`demo training`](doc/demo_training.jpg)

## For detail comparison please visit following url
comparison between current [ScaledYOLOv4-NAS](https://github.com/B106Roger/ScaledYOLOv4-NAS/commit/3d56bebfd8f39fc803b3980147e9f446c841c024) and [WongKinYiu/ScaledYOLOv4](https://github.com/WongKinYiu/ScaledYOLOv4) master branch.

[Comparison URL Is Here](https://github.com/B106Roger/ScaledYOLOv4-NAS/compare/676800364a3446900b9e8407bc880ea2127b3415...3d56bebfd8f39fc803b3980147e9f446c841c024#diff-ed183d67207df065a11e1289f19d34cc2abbc5448dea952683cfe9728c342b95)

## Model Config 
![`model_config`](doc/model_config.jpg)