#!/usr/bin/env sh

_() {
  YEAR="2008"
  echo "Github Username: "
  read -r USERNAME

  [ -z "$USERNAME" ] && exit 1
  [ ! -d $YEAR ] && mkdir $YEAR

  cd "${YEAR}" || exit
  git init
  echo "**${YEAR}** - 
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS###########SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@##SSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS@@@@@@@@@@@@@@@@#S%*+;;++**%#@@@@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSSS
SSSSSSSSSSSSSSS@@@@@@@@@@@@@@#%+::::::::::::;*#@@@@@@@@@@@@@@@@@@@@SSSSSSSSSSSSS
SSSSSSSSSSSSSSS@@@@@@@@@@@S?+:::::::::::::::::;?S@@@@@@@@@@@@@@@@@@#SSSSSSSSSSSS
SSSSSSSSSSSSSSS@@@@@@@@@@?;::::::::::::::::::::::;;?#@@@@@@@@@@@@@@SSSSSSSSSSSSS
SSSSSSSSSSSSSSS#@@@@@@@@S;::::::::::::::::::::::::::;*#@@@@@@@@@@@#SSSSSSSSSSSSS
SSSSSSSSSSSSSSS@@@@@@@@#?;::::::::::::::::::::::::::,:*#@@@@@@@@@#SSSSSSSSSSSSSS
SSSSSSSSSSSSSSS@@@@@@#*;:::::::::::::::::::::::::;;++;:+?#@@@@@@#SSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS@@@@@+::;;;;;*%??*;::::::::::+?%%%?**+***?#@@@@#SSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS%S@@@;::::::::;;+*+::::::::;+*++;::::::;+*%@@@#SSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS?;;S@;:::;*?*SSS%*+;::::::;+**+%##S?%?+::+%@S*%SSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS?::+%:::::;;:+??;:::::::::;:::::**+:;;::::?@+;SSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS*:;:;:::::::::::::::::::::::::::::::::::::+%*;%SSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS%:::::::::::::::::::::::::::::::::::::::::+;+;%SSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSS%;::::::::::::::::::::::::::::::::::::::::*;;+SSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSS?::::::::::::::::::::::::::;:::::::::::::*;:?SSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSS*;;;:::::::::::::::::::::;;::::::::::::;*;+SSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSS%:::::::::::::::::::::::::::::::::::+SSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSS*:::::::::;;;:::::::::;;++;:::::::;?SSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSS+::::::::;;::::::::::::;;:::::::;*SSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSS+:::::::::::::;;;;;;::::::::;;+?SSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSSSS%;:::::::::::::::::::::::::;+?%SSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSSSSS#@#;:;+;:::::::::::::::::::;+??%SSSSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSSSS%S@@@@+::;+*+;:::::::::::::;+*%%**S@#SSSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSS%%?SSSSS%*#@@@@?::::;+++***??%%?%%%%SS%*;;+#@@@SSSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSS%SSSSS*+%@@@@?:::::::::;+*??%%S%%%%?+:::+#@###SSSSSSSSSSSSSSSSSSSSSS
SSSSSSSSSSSSSSSSS%*+*?#@@?::::::::::::::::;+**+;::::+@#%%@@@@##SSSSSSSSSSSSSSSSS
SSSSSSSSSSS##@@@#S*+++*S@%::::::::::::::::::;;::::::S#??%@@@@@@@@@###SSSSSSSSSSS
SSSSSS##@@@@@@@@S%?*+++*%#?::::::::::::::::::::::::%S**?#@@@@@@@@##@@@@####SSSSS
##@@@@@@@@@@##@@S%%*++;;++%%+::::::::::::::::::::;%%++?S@@@@@@@@@#SS##@@@@@@###S
@@@@@@@@@@@@@@@@#%?**++++++?%?;:::::::::::::::::*S?+*?#@@@#S#@@@@@@@#####@@@@@@@
@@@@@@@@@@@@@@@@@???*++++++++*?*;:::::::::::::;?%*+*%#@@@#%?S@@#@@@@@@####@@@@@@
@@@@@@@@@@@@@@@@@%?%?**+++++;++**+::::::::::::+*+*?%S@@#S%?*S@@@#@@#####@@@@@@@@
@@@###########SS##%??*++;;++;;+*?%?+::::::::;+++?%SSSSS%??**S@##S#####@@@@@@@@@@
@@@@###########SSS#S??*++*?%S#@#####SS%S%?+%@#####SS%%??????@#########@@@@@@@@@@
@@@@@###@######@@@#@S%S##@@@@@S%%%SSSS#@@#@@@@@###@@###S#S%#@#######@@@@@@@@@@@@
@@@@@@@#######SS######SSS###SSS#SSSSS#@##@@@@#SSSSSSSS#@@######@@@##@@@@@@@@@@@@
@@@@@@@@#####@@@#############@@#SS%S#@###@#SSSSSSSSSSS###SSSSSS#@@##@@@@@@@@@@@@
@@@@@@@@@@@########@#@@@@@@###SSS%SS#@#@@#SSS##SSSSSS###########@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@###SSS#SSSS##SSSSSSSSSS#@#@SSSSSSS####SS###S######S#@@@@@@@@@@@@@@@
@@@@#############SSSSSSSSSSSSSSSSS%S#@#@S%SS%%SSS#SSSSSSSSSSSSSSS##@@#@@@@@@@@@@   " \
    >README.md
  git add .
  GIT_AUTHOR_DATE="${YEAR}-04-015T18:00:00" \
    GIT_COMMITTER_DATE="${YEAR}-04-05T18:00:00" \
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
