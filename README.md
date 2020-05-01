# Colab tutorials for Coral

This repo contains Jupyter notebook files that offer interactive tutorials for
development with Coral devices. You can read these files in GitHub's
rendered view, but they're meant to be interactive when viewed through Google
Colab.

To view a tutorial in Colab, use the following links:

+ [Retrain a classification model for Edge TPU (with TF 2.0)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf2.ipynb)

  Build an image classification model, train it with a flowers dataset, quantize
  it with post-training quantization, and then compile it for the Edge TPU.

  We have another [version of the tutorial using TF 1.0](
  https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf1.ipynb)

+ [Run Colab on a Coral Dev Board](https://colab.research.google.com/github/google-coral/tutorials/blob/master/run_colab_on_devboard.ipynb)

  Learn how to run a Jupyter notebook on your Dev Board *from* a Google Colab
  interface on your host computer.

+ [Build all the C++ "edgetpu" examples](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_examples.ipynb)

  This is a convenient way to build all the C++ inferencing examples
  from `edgetpu/src/cpp/examples/`, and download them to your computer.

+ [Build the C++ "lstpu" example](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_example_lstpu.ipynb)

  This is a convenient way to build the "lstpu" C++ example
  (it lists all Edge TPUs in your system), and download it to your computer.
