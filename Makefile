# Makefile for deploying aaronbieber.com.

OPTS=-rovWz
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
DEST=airborne@aaronbieber.com:/var/www/march.wtf/htdocs/

deploy:
	rsync $(OPTS) $(EXCLUDE) ./ $(DEST)
