#! /usr/bin/env sh

cd "$1" || exit 1
echo "$1"
echo "git repository: $1" > index.md
echo "==========================" >> index.md
echo "" >> index.md
echo "## Git Summary" >> index.md
echo "" >> index.md
echo '```' >> index.md
git summary >> index.md
echo '```' >> index.md
echo "" >> index.md
echo '```' >> index.md
git log --pretty=format:"%h %ad %s" --date=short >> index.md
echo '```' >> index.md
echo "" >> index.md
echo "## Files" >> index.md
echo "" >> index.md
echo '```' >> index.md
git ls-tree -r --name-only HEAD >> index.md
echo '```' >> index.md
echo "" >> index.md
echo "## Branches" >> index.md
echo "" >> index.md
echo '```' >> index.md
git branch -a >> index.md
echo '```' >> index.md
echo "" >> index.md
echo "## Tags" >> index.md
echo "" >> index.md
echo '```' >> index.md
git tag -l >> index.md
echo '```' >> index.md
echo "" >> index.md
echo "## Remotes" >> index.md
echo "" >> index.md
echo '```' >> index.md
git remote -v >> index.md
echo '```' >> index.md
echo "" >> index.md
if [ -f README.md ]; then
    pandoc README.md index.md -o index.html
else
    pandoc index.md -o index.html
fi
