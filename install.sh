echo "Upgrading pip..."
sudo pip install --upgrade pip
echo "Installing virtualenv..."
sudo pip install virtualenv

echo "Creating nb virtualenv..."
virtualenv venv

source ./env.sh

echo "Installing jupyter notebook..."
pip install jupyter

echo "Done."
echo "\nRun './run.sh' or 'nohup ./run.sh &' to start..."
