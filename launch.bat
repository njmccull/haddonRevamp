@echo off
echo "Pushing Master"
git config --global core.autocrlf input
git add .
sleep 5s
set /p comment= Enter a comment for your changes:
sleep 5s
git commit -am "%comment%"
sleep 5s
git push origin gh-pages
sleep 5s
echo "Pushing Assets"
cd assets
git config --global core.autocrlf input
git add .
sleep 5s
set /p comment= Enter a comment for your changes:
sleep 5s
git commit -am "%comment%"
sleep 5s
git push origin master
sleep 5s
echo "If no errors shown, website updated successfully."
cd ..
set /p comment= "Press enter to finish."
