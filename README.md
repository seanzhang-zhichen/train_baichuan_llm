# 使用说明

## 继续预训练

```bash
cd scripts
sh pretrain_train.sh
```


## 微调

```bash
cd scripts
sh sft_train.sh
```

优化器参数参考的是llama1、llama2的论文


## 相关博客
[deepspeed多机多卡并行训练指南](https://blog.csdn.net/qq_44193969/article/details/132612837)
[增量预训练baichuan-13b-chat遇到的那些坑](https://blog.csdn.net/qq_44193969/article/details/132003852)

