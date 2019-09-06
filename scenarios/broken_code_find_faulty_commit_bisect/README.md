## Scenario: Broken code, find the faulty commit

### Context
1) There are close to 100 commits
2) The code fails in the latest commit
3) There is a commit that you know works
4) There is a way to verify that the code is broken (i.e. a test)

### What do you want to achieve?
Find the commit that introduced the error

### How to achieve this?
Run git bisect to find the faulty commit

```
sh create_find_faulty_commit.sh
cd scenario_find_faulty_commit
git bisect start
git bisect bad 				# Current version is bad
git bisect good <good_commit_hash>	# You know this commit works
```

1) Run test with 'cat test_results'
2) if successful, run 'git bisect good', else 'git bisect bad'
3) Repeat until the faulty commit is found

### Comments
This will change history. Do *NOT* do this when commits are on the remote.
Note: The script only works on macOS
to make it work on linux, change gshuf to shuf, and you might have to change the word-list.

