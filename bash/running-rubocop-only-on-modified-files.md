# Running Rubocop Only On Modified Files

```bash
# View the list of files that have been modified
git ls-files -m

# View the list of likes excluding deleted files
git ls-files -m | xargs ls -1 2>/dev/null

# View only the modified files with .rb extension
git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$'

# Run Rubocop for modified files
git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop -A
```
