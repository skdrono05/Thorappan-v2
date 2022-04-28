if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MrMKN/Thorappan-v3.git /Thorappan-v3   
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Thorappan-v3
fi
cd /Thorappan-v3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
