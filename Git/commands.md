# Github commands

### Get list of merged PRs
```bash
git log --merges --first-parent global \
        --pretty=format:"%h %<(10,trunc)%aN %C(white)%<(15)%ar%Creset %C(red bold)%<(15)%D%Creset %s"
```

### To delete all branches in Git except main
```bash
git branch | grep -v "main" | xargs git branch -D
```
