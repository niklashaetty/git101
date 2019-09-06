mkdir scenario_a_lot_of_local_commits
cd scenario_a_lot_of_local_commits
git init
touch test
echo "one line" >> test
git add test
git commit -m "Initial commit"

echo "one line" >> test
git add test
git commit -m "Fixed an issue where taxes were calculated incorrectly"

echo "one line" >> test
git add test
git commit -m "Fixed a typo"

echo "one line" >> test
git add test
git commit -m "Typo again..."

echo "one line" >> test
git add test
git commit -m "Removed whitespace"

echo "one line" >> test
git add test
git commit -m "stuff....."

echo "one line" >> test
git add test
git commit -m "Isdfjjdsfjkfds"

echo "one line" >> test
git add test
git commit -m "I hate life."

