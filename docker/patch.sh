#!/bin/bash
# 目标：容易删除容器且不再次下载
# robust_downloader.downloader - INFO - Downloading https://dl.fbaipublicfiles.com/fasttext/supervised-models/lid.176.bin to lid.176.bin (125.2M)
#sed -i -e 's#cache_dir=.*fast_langdetect"#cache_dir="models/gpt_sovits_v4/fast_langdetect"#g' /app/text/LangSegmenter/langsegmenter.py
:<<'REM0'
./doc/d2l-zh/pytorch/chapter_preliminaries/probability.ipynb
---------------------------------------------------------------------------
AttributeError                            Traceback (most recent call last)
Cell In[9], line 5
      2 cum_counts = counts.cumsum(dim=0)
      3 estimates = cum_counts / cum_counts.sum(dim=1, keepdims=True)
----> 5 d2l.set_figsize((6, 4.5))
      6 for i in range(6):
      7     d2l.plt.plot(estimates[:, i].numpy(),
      8                  label=("P(die=" + str(i + 1) + ")"))
File /opt/conda/lib/python3.11/site-packages/d2l/torch.py:47, in set_figsize(figsize)
     45 def set_figsize(figsize=(3.5, 2.5)):
     46     """Set the figure size for matplotlib."""
---> 47     use_svg_display()
     48     d2l.plt.rcParams['figure.figsize'] = figsize
File /opt/conda/lib/python3.11/site-packages/d2l/torch.py:41, in use_svg_display()
     39 def use_svg_display():
     40     """Use the svg format to display a plot in Jupyter."""
---> 41     display.set_matplotlib_formats('svg')
AttributeError: module 'IPython.display' has no attribute 'set_matplotlib_formats'
REM0

pip install --no-cache-dir --upgrade 'd2l>=1.0.3'
# restore other
pip install --no-cache-dir --upgrade 'numpy==1.26.4' 'requests>=2.32.3' 'jupyter==1.1.1' 'matplotlib-inline==0.1.7' 'matplotlib==3.10.5'


#13 15.27 ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
#13 15.27 d2l 1.0.3 requires jupyter==1.0.0, but you have jupyter 1.1.1 which is incompatible.
#13 15.27 d2l 1.0.3 requires matplotlib==3.7.2, but you have matplotlib 3.10.5 which is incompatible.
#13 15.27 d2l 1.0.3 requires matplotlib-inline==0.1.6, but you have matplotlib-inline 0.1.7 which is incompatible.
#13 15.27 d2l 1.0.3 requires numpy==1.23.5, but you have numpy 1.26.4 which is incompatible.
#13 15.27 d2l 1.0.3 requires requests==2.31.0, but you have requests 2.32.5 which is incompatible.
#13 15.27 Successfully installed jupyter-1.1.1 matplotlib-3.10.5 matplotlib-inline-0.1.7 numpy-1.26.4 requests-2.32.5
#13 15.39 done.

echo "done."
