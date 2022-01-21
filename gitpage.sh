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

echo "<!DOCTYPE html>" > index.html
echo "<html>" >> index.html
echo "<head>" >> index.html
echo "  <title>idk's source mirror</title>" >> index.html
echo "  <link rel=\"stylesheet\" type=\"text/css\" href =\"/style.css\" />" >> index.html
echo "  <meta name=\"description\" content=\"I2P software source\"/>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html

if [ -f README.md ]; then
    if [ -f INDEX.md ]; then
        pandoc README.md INDEX.md index.md >> index.html
    else
        pandoc README.md index.md >> index.html
    fi
else
    pandoc index.md >> index.html
fi

echo "</body>" >> index.html
echo "</html>" >> index.html

