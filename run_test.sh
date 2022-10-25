echo test_start
python ./test.py --img-size 416 --conf 0.001 --batch 16 --device 1 --data ./data/voc.yaml --weights ./runs_1024_csp_0.75/exp0/weights/best.pt