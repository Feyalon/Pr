for day in {1..365}; do
  GIT_AUTHOR_DATE="$(date -d "$day days ago")" \
  GIT_COMMITTER_DATE="$(date -d "$day days ago")" \
  git commit --allow-empty -m "Заполнить день $day"
done
git push
