LFILE = stats
SETUPFILE = setup-script

all: knith swap #open

knith: $(LFILE).Rmd
	echo "rmarkdown::render('$(LFILE).Rmd',output_file='$(LFILE).html')" | R --no-save -q

swap:
	Rscript swapslides.R

open: $(LFILE).html
	xdg-open $(LFILE).html &

clean:
	rm -rf *.html xaringan-themer.css *_cache *_files libs
