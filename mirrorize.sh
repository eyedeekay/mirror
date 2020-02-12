#! /usr/bin/env sh

if [ ! -z "$1" ]; then
    urlpath="$1"
else
    urlpath="0.9.44"
fi

if [ ! -z "$2" ]; then
    url="$2"
else
    url="https://files.i2p-projekt.de/"
fi

if [ ! -z "$3" ]; then
    subdir="$3"
else
    subdir="mirror"
fi

dirpath=$(echo $url$urlpath | sed 's|https://||g')
toppath=$(dirname $dirpath)
echo "        $dirpath"
echo "        $toppath"
echo "$url$urlpath"

if [ ! -z "$4" ]; then
    secondmirror="$4"
else
    secondmirror="https://eydeekay.github.io/$mirror/$toppath"
fi

wget -m -np -c -R "index.html*" "$url$urlpath/"

mktorrent -a http://zviyq72xcmjupynn5y2f5qa3u7bxyu34jnqmwt6czte2l7idxm7q.b32.i2p/announce \
		-a http://s5ikrdyjwbcgxmqetxb3nyheizftms7euacuub2hic7defkh3xhq.b32.i2p/a \
		-a http://uajd4nctepxpac4c4bdyrdw7qvja2a5u3x25otfhkptcjgd53ioq.b32.i2p/announce \
		-a http://w7tpbzncbcocrqtwwm3nezhnnsw4ozadvi2hmvzdhrqzfxfum7wa.b32.i2p/a \
		-a http://explodie.org:6969/announce \
		-a http://tracker.opentrackr.org:1337/announce \
		-a http://tracker.kamigami.org:2710/announce \
		-a http://tracker.internetwarriors.net:1337/announce \
		-a http://tracker.darli.net:6611/announce \
		-a http://tracker.corpscorp.online:80/announce \
		-a http://tracker.bz:80/announce \
		-a http://tracker.bt4g.com:2095/announce \
		-a http://retracker.sevstar.net:2710/announce \
		-a http://h4.trakx.nibba.trade:80/announce \
		-a http://www.proxmox.com:6969/announce \
		-a http://www.loushao.net:8080/announce \
		-a http://vps02.net.orel.ru:80/announce \
		-a http://tracker4.itzmx.com:2710/announce \
		-a http://tracker3.itzmx.com:6961/announce \
		-a http://tracker2.itzmx.com:6961/announce \
		-a http://tracker1.itzmx.com:8080/announce \
		-a http://tracker01.loveapp.com:6789/announce \
		-a http://tracker.zerobytes.xyz:1337/announce \
		-a http://tracker.yoshi210.com:6969/announce \
		-a http://tracker.torrentyorg.pl:80/announce \
		-a http://tracker.nyap2p.com:8080/announce \
		-a http://tracker.lelux.fi:80/announce \
		-a http://tracker.gbitt.info:80/announce \
		-a http://pow7.com:80/announce \
		-a http://opentracker.i2p.rocks:6969/announce \
		-a http://open.acgtracker.com:1096/announce \
		-a http://open.acgnxtracker.com:80/announce \
		-a http://mail2.zelenaya.net:80/announce \
		-a http://acg.rip:6699/announce \
        --comment "i2p torrent mirror for $urlpath" --web-seed="$dirpath" "$dirpath" 2> /dev/null

for file in $(ls "$dirpath"); do
    if [ ! $(echo "$file" | grep torrent) ]; then
        mktorrent -a http://zviyq72xcmjupynn5y2f5qa3u7bxyu34jnqmwt6czte2l7idxm7q.b32.i2p/announce \
		-a http://s5ikrdyjwbcgxmqetxb3nyheizftms7euacuub2hic7defkh3xhq.b32.i2p/a \
		-a http://uajd4nctepxpac4c4bdyrdw7qvja2a5u3x25otfhkptcjgd53ioq.b32.i2p/announce \
		-a http://w7tpbzncbcocrqtwwm3nezhnnsw4ozadvi2hmvzdhrqzfxfum7wa.b32.i2p/a \
		-a http://explodie.org:6969/announce \
		-a http://tracker.opentrackr.org:1337/announce \
		-a http://tracker.kamigami.org:2710/announce \
		-a http://tracker.internetwarriors.net:1337/announce \
		-a http://tracker.darli.net:6611/announce \
		-a http://tracker.corpscorp.online:80/announce \
		-a http://tracker.bz:80/announce \
		-a http://tracker.bt4g.com:2095/announce \
		-a http://retracker.sevstar.net:2710/announce \
		-a http://h4.trakx.nibba.trade:80/announce \
		-a http://www.proxmox.com:6969/announce \
		-a http://www.loushao.net:8080/announce \
		-a http://vps02.net.orel.ru:80/announce \
		-a http://tracker4.itzmx.com:2710/announce \
		-a http://tracker3.itzmx.com:6961/announce \
		-a http://tracker2.itzmx.com:6961/announce \
		-a http://tracker1.itzmx.com:8080/announce \
		-a http://tracker01.loveapp.com:6789/announce \
		-a http://tracker.zerobytes.xyz:1337/announce \
		-a http://tracker.yoshi210.com:6969/announce \
		-a http://tracker.torrentyorg.pl:80/announce \
		-a http://tracker.nyap2p.com:8080/announce \
		-a http://tracker.lelux.fi:80/announce \
		-a http://tracker.gbitt.info:80/announce \
		-a http://pow7.com:80/announce \
		-a http://opentracker.i2p.rocks:6969/announce \
		-a http://open.acgtracker.com:1096/announce \
		-a http://open.acgnxtracker.com:80/announce \
		-a http://mail2.zelenaya.net:80/announce \
		-a http://acg.rip:6699/announce \
        --comment "i2p torrent mirror for $file" --web-seed="$url$urlpath/$file,$secondmirror$urlpath/$file" -o "$dirpath/$file.torrent" "$dirpath/$file" 2> /dev/null
    fi
done

echo "I2P Mirror" > INDEX.md
echo "==========" >> INDEX.md
echo "" >> INDEX.md

for dir in $(ls "$toppath"); do
    echo " - [$dir](/$subdir/$toppath/$dir)" >> INDEX.md
done

for dir in $(ls); do
    echo " - [$dir](/$subdir/$dir)" >> INDEX.md
done

markdown INDEX.md > index.html
markdown INDEX.md > "$toppath/index.html"

for dir in $(find "$toppath" -type d); do
    echo "I2P Mirror" > "$dir/INDEX.md"
    echo "==========" >> "$dir/INDEX.md"
    echo "" >> "$dir/INDEX.md"
    for file in $(ls "$dir"); do
        echo " - [$file](/$subdir/$dir/$file)" >> "$dir/INDEX.md"
        if [ $(echo "$file" | grep torrent) ]; then
            magnet=$(torrent2magnet "$dir/$file")
            echo "  - [$magnet link for $file]($magnet)" >> "$dir/INDEX.md"
        fi
    done
    echo "Index generation 2 complete"
    markdown "$dir/INDEX.md" > "$dir/index.html"
done

echo "Mirror generation complete"