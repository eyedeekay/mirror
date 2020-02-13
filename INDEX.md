I2P Mirror
==========

 - [0.9.1](/mirror/files.i2p-projekt.de/0.9.1)
 - [0.9.10](/mirror/files.i2p-projekt.de/0.9.10)
 - [0.9.11](/mirror/files.i2p-projekt.de/0.9.11)
 - [0.9.12](/mirror/files.i2p-projekt.de/0.9.12)
 - [0.9.13](/mirror/files.i2p-projekt.de/0.9.13)
 - [0.9.14](/mirror/files.i2p-projekt.de/0.9.14)
 - [0.9.14.1](/mirror/files.i2p-projekt.de/0.9.14.1)
 - [0.9.2](/mirror/files.i2p-projekt.de/0.9.2)
 - [0.9.3](/mirror/files.i2p-projekt.de/0.9.3)
 - [0.9.4](/mirror/files.i2p-projekt.de/0.9.4)
 - [0.9.42](/mirror/files.i2p-projekt.de/0.9.42)
 - [0.9.43](/mirror/files.i2p-projekt.de/0.9.43)
 - [0.9.44](/mirror/files.i2p-projekt.de/0.9.44)
 - [0.9.5](/mirror/files.i2p-projekt.de/0.9.5)
 - [0.9.6](/mirror/files.i2p-projekt.de/0.9.6)
 - [0.9.7](/mirror/files.i2p-projekt.de/0.9.7)
 - [0.9.7.1](/mirror/files.i2p-projekt.de/0.9.7.1)
 - [0.9.8](/mirror/files.i2p-projekt.de/0.9.8)
 - [0.9.8.1](/mirror/files.i2p-projekt.de/0.9.8.1)
 - [0.9.9](/mirror/files.i2p-projekt.de/0.9.9)
 - [index.html](/mirror/files.i2p-projekt.de/index.html)
 - [INDEX.md](/mirror/files.i2p-projekt.de/INDEX.md)
 - [0-torrent.png](/mirror/0-torrent.png)
 - [0.9.1.torrent](/mirror/0.9.1.torrent)
 - [0.9.2.torrent](/mirror/0.9.2.torrent)
 - [0.9.3.torrent](/mirror/0.9.3.torrent)
 - [0.9.4.torrent](/mirror/0.9.4.torrent)
 - [0.9.5.torrent](/mirror/0.9.5.torrent)
 - [1-torrent.png](/mirror/1-torrent.png)
 - [2-torrent.png](/mirror/2-torrent.png)
 - [3-torrent.png](/mirror/3-torrent.png)
 - [4-torrent.png](/mirror/4-torrent.png)
 - [5-torrent.png](/mirror/5-torrent.png)
 - [6-torrent.png](/mirror/6-torrent.png)
 - [7-torrent.png](/mirror/7-torrent.png)
 - [INDEX.md](/mirror/INDEX.md)
 - [README.md](/mirror/README.md)
 - [files.i2p-projekt.de](/mirror/files.i2p-projekt.de)
 - [files.i2p-projekt.de.torrent](/mirror/files.i2p-projekt.de.torrent)
 - [index.html](/mirror/index.html)
 - [index.rss](/mirror/index.rss)
 - [markdown](/mirror/markdown)
 - [mirrorize-all.sh](/mirror/mirrorize-all.sh)
 - [mirrorize.sh](/mirror/mirrorize.sh)
 - [releases.list](/mirror/releases.list)

mirror
------


My mirror of the official i2p.i2p packages(Starting at 0.9.1). Has a an extra
feature where it generates a torrent for every file in the directory and an RSS
feed for every file in the directory, including torrents. The torrents also
all include a web seed which will use an official I2P mirror or this repository
to supply the torrents in the absence of a client seeding the file.

### Requirements:

mktorrent
torrent2magnet
pip3
python3-virtualenv
markdown

### Seeding

#### Follow this guide to seed the official I2P distro with BiglyBT.

- **Start the way you normally would to add a torrent:**
 - ![Start adding the torrent](0-torrent.png)
- **This time, copy this RSS feed URL into the field:**
 - ![Copy the RSS feed URL](1-torrent.png)
- **Confirm that you with to add the feed:**
 - ![Add the Feed](2-torrent.png)
- **Confirm the details:**
 - ![Confirm the details](3-torrent.png)
- **View the feed contents:**
 - ![View the feed contents](4-torrent.png)
- **Filter the feed contents so it only shows torrent files:**
 - ![filter the feed contents](5-torrent.png)
- **Download the files you want to help seed:**
 - ![Download some files](6-torrent.png)
- **Finally, if you really want to help, configure BiglyBT to automatically download**
  **new torrents from the feed.**
 - ![Auto-download the feed contents](7-torrent.png)