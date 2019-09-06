## Scenario: A lot of local commits

### Context
... You have a made a feature, and in a hurry fixed typoes etc with a lot of local, ugly commits

### What do you want to achieve?
One short commit describing.

### How to achieve this?
Rebase with interactive flag and squash

```
git rebase --interactive <first_commit_hash>
```
1) Change 'pick' to 'squash' on all except the commit you want to squash into
2) Comment out commit messages that are uneeded
3) Done!

### Comments
This will change history. Do *NOT* do this when commits are on the remote.

