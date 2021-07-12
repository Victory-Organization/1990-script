#!/usr/bin/env sh

_() {
  YEAR="2012"
  echo "Github Username: "
  read -r USERNAME

  [ -z "$USERNAME" ] && exit 1
  [ ! -d $YEAR ] && mkdir $YEAR

  cd "${YEAR}" || exit
  git init
  echo "Year **${YEAR}** - Nasa to encrypt data after latest breach

Nasa is to encrypt all its mobile computers after the loss of a laptop containing personal information about more than 10,000 staff

A number of Indian celebrities including AR Rehana, sister of AR Rahman, Naresh Iyer, Sayanora, Abdul Salam and others are in town for the show.  " \
    >README.md
  git add .
  GIT_AUTHOR_DATE="${YEAR}-11-16T18:00:00" \
    GIT_COMMITTER_DATE="${YEAR}-11-16T18:00:00" \
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
