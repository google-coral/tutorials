# Colab tutorials for Coral

These Jupyter notebooks provide interactive Python tutorials for
development with Coral. You can download these files and run them on a
local Jupyter notebook, but they're designed for execution with Google
Colab, using the links below.

Train and build a model for the Edge TPU:

+ [Retrain a classification model using post-training quant (TF2)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf2.ipynb)

  This notebook builds the MobileNet V2 classification model using Keras
  (with TF2), retrains it to classify different flowers, quantizes it with post-
  training quantization, and then compiles it for the Edge TPU.

  We have another [version of this tutorial using TF1](
  https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_ptq_tf1.ipynb).

+ [Retrain a classification model using quant-aware training (TF1)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_classification_qat_tf1.ipynb)

  This notebook retrains a quant-aware version of MobileNet V1 (with TF1) to
  classify different flowers, and then compiles it for the Edge TPU.

+ [Retrain an object detection model (MobileNet) using quant-aware training (TF1)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_detection_qat_tf1.ipynb)

  This notebook retrains a quant-aware version of MobileNet V1 SSD (with TF1)
  to detect cats and dogs, and then compiles it for the Edge TPU.

+ [Retrain an object detection model (MobileDet) using post-training quant (TF1)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_ssdlite_mobiledet_qat_tf1.ipynb)

  This notebook retrains the SSDLite MobileDet model to detect cats and dogs,
  quantizes it with post-training quantization, and then compiles it for the
  Edge TPU.

+ [Retrain an object detection model (EfficientDet) using TF Lite Model Maker (TF2)](https://colab.research.google.com/github/google-coral/tutorials/blob/master/retrain_efficientdet_model_maker_tf2.ipynb)

  This notebook retrains the EfficientDet-Lite model using the TensorFlow Lite
  Model Maker library (based on TF2) to detect different salad ingredients,
  exports it to TF Lite (using post-training quantization), and then compiles it
  for the Edge TPU.


Other tutorials:

+ [Web-based Edge TPU Compiler](https://colab.research.google.com/github/google-coral/tutorials/blob/master/compile_for_edgetpu.ipynb)

  This Colab compiles a TensorFlow Lite model for the Edge TPU, in case you
  don't have a system that's compatible with the
  [Edge TPU Compiler](https://coral.ai/docs/edgetpu/compiler/)
  (Debian Linux only).

+ [Run Colab on a Coral Dev Board](https://colab.research.google.com/github/google-coral/tutorials/blob/master/run_colab_on_devboard.ipynb)

  This shows how to run a Jupyter notebook on your Dev Board *from* a Google
  Colab interface on your host computer.

+ [Build the libcoral C++ examples](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_examples.ipynb)

  This is a convenient way to build all the C++ examples in
  [github.com/google-coral/libcoral](https://github.com/google-coral/libcoral),
  and download them to your computer.

+ [Build the C++ "lstpu" example](https://colab.research.google.com/github/google-coral/tutorials/blob/master/build_cpp_example_lstpu.ipynb)

  This is a convenient way to build the "lstpu" C++ example
  (it lists all Edge TPUs in your system), and download it to your computer.
