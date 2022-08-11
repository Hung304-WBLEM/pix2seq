cd ..

python3 run.py \
    --mode=train \
    --model_dir=/tmp/model_dir \
    --config=configs/config_det_finetune.py \
    --config.dataset.coco_annotations_dir=/data/hqvo2/all_original_data/mscoco/annotations \
    --config.train.batch_size=8 \
    --config.train.epochs=2 \
    --config.optimization.learning_rate=3e-5 \
    --config.model.pretrained_ckpt=/home/cougarnet.uh.edu/hqvo3/Projects/MultimodalFusion/root_libs/pix2seq/checkpoints/vit_b_640x640_b256_s400k
    # --run_eagerly=True
