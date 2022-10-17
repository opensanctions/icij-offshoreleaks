full: data/fragments.json

data/full-oldb.zip:
	mkdir -p data/
	wget -q -c -O data/full-oldb.zip https://offshoreleaks-data.icij.org/offshoreleaks/csv/full-oldb.20220708.zip

data/fragments.json: data/full-oldb.zip
	python parse.py data/full-oldb.zip

clean-entities:
	rm -f data/fragments.json

clean: clean-entities
	rm -rf data/full-oldb.zip