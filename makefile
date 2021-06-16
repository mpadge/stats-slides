LFILE = stats
SETUPFILE = setup-script

all: knith #open

knith: $(LFILE).Rmd
	echo "rmarkdown::render('$(LFILE).Rmd',output_file='$(LFILE).html')" | R --no-save -q

open: $(LFILE).html
	xdg-open $(LFILE).html &

clean:
	rm -rf *.html xaringan-themer.css *_cache *_files libs
