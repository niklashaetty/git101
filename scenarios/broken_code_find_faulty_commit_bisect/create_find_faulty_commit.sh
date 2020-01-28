#!/bin/bash
SUCCESS="true"
FAIL="false"
WORD_LIST_FILE_PATH="/usr/share/dict/words"

mkdir scenario_find_faulty_commit
chmod +x test.sh
cp test.sh scenario_find_faulty_commit/
cd scenario_find_faulty_commit
git init
touch test_results
touch test_file_please_ignore

echo $SUCCESS > test_results
git add test_results
git commit -m "INITIAL COMMIT WHERE TEST IS SUCCESSFUL"

for i in {1..50}
do
  echo $SUCCESS > test_results
  WORD=$(gshuf -n1 $WORD_LIST_FILE_PATH)
  WORD2=$(gshuf -n1 $WORD_LIST_FILE_PATH)
  echo $WORD > test_file_please_ignore
  git add test_results
  git add test_file_please_ignore
  git commit -m "${WORD} ${WORD2}"
done

echo $FAIL > test_results
WORD=$(gshuf -n1 $WORD_LIST_FILE_PATH)
WORD2=$(gshuf -n1 $WORD_LIST_FILE_PATH)
echo $WORD > test_file_please_ignore
git add test_results
git add test_file_please_ignore
git commit -m "${WORD} ${WORD2}"

for i in {1..25}
do
  echo $FAIL > test_results
  WORD=$(gshuf -n1 $WORD_LIST_FILE_PATH)
  WORD2=$(gshuf -n1 $WORD_LIST_FILE_PATH)
  echo $WORD > test_file_please_ignore
  git add test_results
  git add test_file_please_ignore
  git commit -m "${WORD} ${WORD2}"
done


