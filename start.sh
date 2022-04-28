if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MrMKN/Thorappan-v2.git /Thorappan-v2   
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Thorappan-v2
fi
cd /Thorappan-v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
