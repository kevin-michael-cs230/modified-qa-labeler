#!/bin/bash

set -x

source activate tensorflow2_p36

python model1_bert_code/predict_test.py      \
  --model_dir model1_ckpt/                                  \
  --data_path google-quest-challenge/                        \
  --sub_file output/model1_submission.csv                      \
  > logs/model1_inference.log
