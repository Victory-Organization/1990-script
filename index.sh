#!/usr/bin/env sh

_() {
  YEAR="2008"
  echo "Github Username: "
  read -r USERNAME

  [ -z "$USERNAME" ] && exit 1
  [ ! -d $YEAR ] && mkdir $YEAR

  cd "${YEAR}" || exit
  git init
  echo "**${YEAR}** - Hello a Geek was Born Here Aashik KJ Geek since windows Vista time I love Windows Vista My friends are Hari,Lubna,Pranow,Alex" \
    >README.md
  git add .
  GIT_AUTHOR_DATE="${YEAR}-01-01T18:00:00" \
    GIT_COMMITTER_DATE="${YEAR}-01-01T18:00:00" \
    git commit -m "${YEAR}"
  git remote add origin "https://github.com/${USERNAME}/${YEAR}.git"
  git branch -M main
  git push -u origin main -f
  cd ..
  rm -rf "${YEAR}"

  echo
  echo "Cool, check your profile now: https://github.com/${USERNAME}"
} && _

unset -f _
