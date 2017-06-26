echo "Upgrading pip..."
sudo pip install --upgrade pip
echo "Installing virtualenv..."
sudo pip install virtualenv

echo "Creating nb virtualenv..."
virtualenv venv

source ./env.sh

echo "Installing jupyter notebook..."
pip install jupyter

echo "Installing nbextensions..."
git clone https://github.com/ipython-contrib/jupyter_contrib_nbextensions.git
pip install -e jupyter_contrib_nbextensions
jupyter contrib nbextension install --sys-prefix

pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --sys-prefix

echo "Done."
echo "\nRun './run.sh' or 'nohup ./run.sh &' to start..."
