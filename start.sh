echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/elenlilco/PlayerTG /PlayerTG
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/elenlilco/PlayerTG -b $BRANCH /PlayerTG
fi
cd /PlayerTG
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
