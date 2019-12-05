task_name=cifar10

python main.py \
	--use_tpu=False \
	--do_train=True \
	--do_eval=True \
	--task_name=${task_name} \
	--sup_size=4000 \
	--unsup_ratio=5 \
	--train_batch_size=64 \
	--data_dir=data/proc_data/${task_name} \
	--model_dir=ckpt/cifar10_gpu \
	--train_steps=400000 \
	$@
