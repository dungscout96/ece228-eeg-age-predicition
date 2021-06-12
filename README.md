# ece228-eeg-age-predicition
Code and data for ECE228 final project-predicting ages using EEG and Deep Learning

## Environment setup
* conda environment configuration is in `environment.yml` file.
* `data` directory currently only contains labels. You can download the raw data from this Google Driv: https://drive.google.com/drive/u/2/folders/1WuDSaNijAjBDTHBlAsvOE6WXtPrrYJxE.

## Directory structure
* Notebooks to build and train models: 
  * `AgePrediction-Original.ipynb`: Implement Putten et al. (2018) model
  * `AgePrediction-EEGNet.ipynb`: Implement EEGNet model
  * `AgePrediction-Conv1d.ipynb`: Implement Conv1D model
  * `AgePrediction-LSTM-and-ML.ipynb`: Implement LSTM models and baseline traditional classifiers
* All of our notebooks follow the same sequence:
  * Load data
  * Specify and create model
  * Run training experiments, setting different random seeds for each experiment
  * Test codes to evaluate model performance
* MATLAB scripts that prepare dataset:
  * `restingstate_prepare_clean.m`: preprocess EEG data
  * `load_data_master.m`: segment data and create train, validation, and test sets
* `data`: contains all training, validation, and test data
* `runs`: tensorboard logs to generate training vs. validation curves
