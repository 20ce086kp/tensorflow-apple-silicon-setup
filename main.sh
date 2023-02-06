# Author: Kashyap Patel
# Email: 20ce086.kashyappatel@gmail.com
# Purpose: Apple Silicon Conda Environment and TensorFlow Setup

# activating miniforge3 env
source ~/miniforge3/bin/activate

# creating new directory
mkdir $1
cd $1

# creating conda environment with python 3.8
conda create --prefix ./$2 python=3.8

# activating conda environment
conda activate ./$2

# installing tensor flow dependencies
conda install -c apple tensorflow-deps

# installing tensorflow for macos
python -m pip install tensorflow-macos

# installing tensorflow metal to leverage apple metal
python -m pip install tensorflow-metal

# issue1:- ModuleNotFoundError: No module named 'chardet'
# chrdet install
pip install chardet

# install common data science packages
conda install jupyter pandas numpy matplotlib scikit-learn
