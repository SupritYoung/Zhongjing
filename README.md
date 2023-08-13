
# Zhongjing: Enhancing the Chinese Medical Capabilities of Large Language Model through Expert Feedback and Real-world Multi-turn Dialogue
<div align="center">
  <img src="assets/logo.jpg" alt="项目标志" width="25%">
</div>

## 概述

最近，以 ChatGPT 为代表的大型语言模型在许多领域取得了令人瞩目的表现。然而，由于医学等领域的复杂性和专业性，这些模型在特定领域（如医学）的表现相对较差。虽然一些中文医学大型模型已经出现，但它们主要是在质量参差不齐的单轮医疗对话上微调基础模型，导致改进有限。

Zhongjing-LLaMA 是首个采用预训练、有监督微调和强化学习与人类反馈（RLHF）的完整训练流程来发展中文医学大型模型的尝试。在性能上显著超越了以前的中文医学模型，在某些对话场景中甚至接近专业医生的专业水平。

此外，我们精心构建了一个包含 70,000 条完全来源于真实医患对话的多轮对话数据集。该数据集包含大量医生主动提问的语句，有助于提升模型的主动医疗询问能力。

更多关于我们工作的详细信息，请参阅我们的论文：[Zhongjing: Enhancing the Chinese Medical Capabilities of Large Language Model through Expert Feedback and Real-world Multi-turn Dialogue](https://arxiv.org/abs/2308.03549)。

## 更新

- [x] [8-10] 已上传论文
- [x] [8-13] 已上传测试集，公开训练方法和过程
- [ ] 预训练对话模型已上传
- [ ] 已发布完整的中文医学对话数据集 CMtMedQA

## 方法

Zhongjing 的训练过程如下图所示：

![训练过程](assets/method.png)

## 模型

- [ ] 我们的模型即将发布

## 训练过程

预训练损失可视化：

![预训练损失](assets/pretrain_plot.png)

在 RLHF 阶段，奖励模型和 PPO 的训练过程如下图所示：

![训练损失](assets/training_loss.png)

![训练奖励](assets/training_reward.png)

所有训练过程均展现出有效的收敛性。

## 数据

- CMtMedQA：包含 70,000 条多轮对话的数据集，来源于真实医患交流。
- [CMtMedQA_test](data/CMtMedQA_test.json)：包含 1000 条用于评估模型多轮对话能力的测试集，其中还包含了 200 条用于评估模型对中文医疗安全性的响应，包括诱导攻击和极端问题。
- [RLHF 部分示例数据](data/rlhf2000_7_31.json)：包含了 2000 条用于训练 奖励模型的数据。

## 评估结果

我们结合使用 GPT-4 和专业医生的评估方法，从安全性、专业性和流畅性三个角度对模型的对话能力进行评估，评估结果如下图所示：

![评估结果](assets/eval.png)

## 限制声明

尽管我们的模型在中文医学能力方面取得了显著进展，但在安全性和专业性方面仍有提升的空间，可能在某些情况下会给出意料之外的回答。

## 致谢

- 特别感谢 [hiyouga](https://github.com/hiyouga/LLaMA-Efficient-Tuning) 提供的 LLaMA 微调框架。
- 本项目基于 [Ziya-LLaMA](https://huggingface.co/IDEA-CCNL/Ziya-LLaMA-13B-v1)。
- 感谢提供 [ChatMed_Consult_Dataset](https://huggingface.co/datasets/michaelwzhu/ChatMed_Consult_Dataset) 数据集的创作者。

## 引用

如果您希望引用这个工作，请使用以下格式：

```text
@article{yang2023zhongjing,
  title={Zhongjing: Enhancing the Chinese Medical Capabilities of Large Language Model through Expert Feedback and Real-world Multi-turn Dialogue},
  author={Yang, Songhua and Zhao, Hanjia and Zhu, Senbin and Zhou, Guangyu and Xu, Hongfei and Jia, Yuxiang and Zan, Hongying},
  journal={arXiv preprint arXiv:2308.03549},
  year={2023}
}
```
