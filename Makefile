

download-su3s: clean clone generate clean index.html

clean:
	rm index.html -f

generate:
	find . -maxdepth 1 -type d -not -path '.git/' | sort | xargs -I {} ./gitpage.sh {}
	 #-exec ./gitpage.sh {} \;

clone:
	git clone https://github.com/i2p/i2p.i2p ; cd i2p.i2p ; git pull --all
	git clone https://github.com/i2p/i2p.itoopie;	cd i2p.itoopie ; git pull --all
	git clone https://github.com/i2p/i2p.firefox;	cd i2p.firefox ; git pull --all
	git clone https://github.com/i2p/i2p.www;		cd i2p.www ; git pull --all
	#git clone https://github.com/i2p/i2p.keyring.i2p;	cd i2p.keyring.i2p ; git pull --all
	git clone https://github.com/i2p/libsam3;	cd libsam3 ; git pull --all
	git clone https://github.com/i2p/i2p.plugins.zzzot;	cd i2p.plugins.zzzot ; git pull --all
	git clone https://github.com/i2p/i2p.android.base;	cd i2p.android.base ; git pull --all
	git clone https://github.com/i2p/i2p.i2p-opentracker;	cd i2p.i2p-opentracker ; git pull --all
	git clone https://github.com/i2p/i2p.newsxml;	cd i2p.newsxml ; git pull --all
	git clone https://github.com/i2p/i2p-jpackage-mac;	cd i2p-jpackage-mac ; git pull --all
	git clone https://github.com/i2p/i2p.i2p-bote;	cd i2p.i2p-bote ; git pull --all
	git clone https://github.com/i2p/i2p.scripts;	cd i2p.scripts ; git pull --all
	git clone https://github.com/i2p/i2p-jpackage;	cd i2p-jpackage ; git pull --all
	git clone https://github.com/i2p/i2p.syndie;	cd i2p.syndie ; git pull --all
	#git clone https://github.com/i2p/i2p.i2p-bote.mhatta;	cd i2p.i2p-bote.mhatta ; git pull --all
	git clone https://github.com/i2p/i2p.i2p-bote.android;	cd i2p.i2p-bote.android ; git pull --all
	#git clone https://github.com/i2p/gitinator;	cd gitinator ; git pull --all
	git clone https://github.com/i2p/i2p.graphics;	cd i2p.graphics ; git pull --all
	git clone https://github.com/i2p/i2p.plugins.i2pcontrol;	cd i2p.plugins.i2pcontrol ; git pull --all	
	git clone https://github.com/i2p/i2p-rs;	cd i2p-rs ; git pull --all
	git clone https://github.com/i2p/i2p.plugins.orchid;	cd i2p.plugins.orchid ; git pull --all
	git clone https://github.com/i2p/i2psam;	cd i2psam ; git pull --all
	git clone https://github.com/i2p/i2pbutton;	cd i2pbutton ; git pull --all
	git clone https://github.com/i2p/i2p-browser;	cd i2p-browser ; git pull --all

index.html: index
	@echo "<!DOCTYPE html>" > index.html
	@echo "<html>" >> index.html
	@echo "<head>" >> index.html
	@echo "  <title>idk's source mirror</title>" >> index.html
	@echo "  <link rel=\"stylesheet\" type=\"text/css\" href =\"/style.css\" />" >> index.html
	@echo "  <meta name=\"description\" content=\"I2P Software Source Code\"/>" >> index.html
	@echo "</head>" >> index.html
	@echo "<body>" >> index.html
	pandoc README.md INDEX.md >> index.html
	@echo "  <script src=\"script.js\" type=\"text/javascript\"></script>" >> index.html
	@echo "</body>" >> index.html
	@echo "</html>" >> index.html

index:
	echo "" > INDEX.md
	find . -maxdepth 1 -type d -not -path '.git/' | sort | xargs -I {} echo '- [{}]({})' >> INDEX.md
	#-exec echo "- [{}]({})" >> INDEX.md \;
	echo "" >> INDEX.md
	sed -i 's|./||g' INDEX.md
	sed -i 's|\[.\]|\[mirror.home\]|g' INDEX.md
	sed -i 's|- \[.git\](.git)||g' INDEX.md
