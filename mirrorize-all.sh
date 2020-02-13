
for version in $(cat releases.list); do
    ./mirrorize.sh "$version"
    git add . && git commit -am "add $version" && git push
done