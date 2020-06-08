# Colab tutorials for Coral

These Jupyter notebooks provide interactive Python tutorials for
development with Coral. You can download these files and run them on a
local Jupyter notebook, but they're designed for execution with Google
Colab, using the links below.

Train and build a model for the Edge TPU:

+ [Retrain a classification model using post-training quantization (with TF2)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf2.ipynb)

  This shows how to build an image classification model with Keras, train it
  with a custom dataset, quantize it with post-training quantization, and then
  compile it for the Edge TPU.

  We have another [version of this tutorial using TF1](
  https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf1.ipynb).

+ [Retrain a classification model using quant-aware training (with TF1)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_qat_tf1.ipynb)

  This shows how to retrain a quant-aware classification model using TF1. This
  process is complex, so the notebook calls upon several Python scripts
  to do the work (links to these scripts are provided in the notebook).

+ [Retrain an object model using quant-aware training (with TF1)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_detection_qat_tf1.ipynb)

  This shows how to retrain a quant-aware object detection model using TF1. This
  process is complex, so the notebook calls upon several Python scripts
  to do the work (links to these scripts are provided in the notebook).

Other tutorials:

+ [Run Colab on a Coral Dev Board](https://colab.research.google.com/github/google-coral/tutorials/blob/master/run_colab_on_devboard.ipynb)

  This shows how to run a Jupyter notebook on your Dev Board *from* a Google
  Colab interface on your host computer.

+ [Build all the C++ "edgetpu" examples](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_examples.ipynb)

  This is a convenient way to build all the C++ inferencing examples
  from `edgetpu/src/cpp/examples/`, and download them to your computer.

+ [Build the C++ "lstpu" example](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_example_lstpu.ipynb)

  This is a convenient way to build the "lstpu" C++ example
  (it lists all Edge TPUs in your system), and download it to your computer.
