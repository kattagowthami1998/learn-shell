#Get Rating
# >7 -good
# <7 - Average

input=$1
if [ -z "$input"];then
  echo input movie is missing
  exit
fi

percent=$(curl -s https://www.themoviedb.org/movie/$input | grep user_score_chart | xargs -n1 |grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

echo Percent is $percent

if [ "$percent" ge 70]; then
  echo good
  else
    echo average
  fi