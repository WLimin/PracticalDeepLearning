#!/bin/bash
# 目标：容易删除容器且不再次下载
# robust_downloader.downloader - INFO - Downloading https://dl.fbaipublicfiles.com/fasttext/supervised-models/lid.176.bin to lid.176.bin (125.2M)
#sed -i -e 's#cache_dir=.*fast_langdetect"#cache_dir="models/gpt_sovits_v4/fast_langdetect"#g' /app/text/LangSegmenter/langsegmenter.py
# I don't like this error: fatal: not a git repository (or any of the parent directories): .git
#sed -i -e '/\"git_/s/^/#/' /app/Speech-AI-Forge/modules/config.py

echo "done."
