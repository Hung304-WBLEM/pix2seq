cd ..

module load cudatoolkit/11.3
export TFDS_DATA_DIR='/home/hqvo2/tensorflow_datasets'

# python3 run.py \
#     --mode=train \
#     --model_dir=model_dir \
#     --config=configs/config_det_finetune.py \
#     --config.dataset.coco_annotations_dir=datasets/mscoco/annotations \
#     --config.train.batch_size=8 \
#     --config.train.epochs=2 \
#     --config.optimization.learning_rate=3e-5 \
#     --config.model.pretrained_ckpt=checkpoints/vit_b_640x640_b256_s400k

python3 run.py \
    --mode=eval \
    --model_dir=model_dir \
    --config=configs/config_det_finetune.py \
    --config.dataset.coco_annotations_dir=datasets/mscoco/annotations \
    --config.eval.batch_size=40
