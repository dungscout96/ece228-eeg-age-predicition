# ece228-eeg-age-predicition
Code and data for ECE228 final project-predicting ages using EEG and CNN

## Environment setup
* conda environment configuration is in `environment.yml` file. You should be able to follow this [tutorial](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#restoring-an-environment) to install the needed dependencies.
* `data` directory currently only contains labels. You can download the raw data from this [Google Drive](https://drive.google.com/drive/u/2/folders/1WuDSaNijAjBDTHBlAsvOE6WXtPrrYJxE).

## Directory structure
* Main notebook to build and train CNN model: `AgePrediction-Original-Raw.ipynb`
* MATLAB scripts that prepare dataset:
  * `restingstate_prepare_clean.m`: preprocess EEG data
  * `load_data_master.m`: segment data and create train, validation, and test sets
* `data`: contains all training, validation, and test data
