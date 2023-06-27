if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Adithyan1233/Adis-new.git /Adis-new
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Adis-new
fi
cd /Adis-new
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
