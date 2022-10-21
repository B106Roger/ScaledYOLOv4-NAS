echo test_start
python ./test.py --img-size 416 --conf 0.001 --batch 16 --device 1 --data ./data/voc.yaml --weights ./runs_1016_csp/exp0/weights/best.pt