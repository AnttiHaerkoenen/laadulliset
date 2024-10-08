.PHONY: komentorivi teemakartat verkostoanalyysi
#################################################################################
#    Commands                                                                   #
#################################################################################

## Komentorivi
komentorivi: ./13-komentorivi/13-komentorivi.md
	pandoc -t revealjs -s ./13-komentorivi/13-komentorivi.md -o ./13-komentorivi/13-komentorivi.html -i --slide-level 2 -V theme=white -V lang=fi
	pandoc -s ./13-komentorivi/13-komentorivi.md -o ./13-komentorivi/13-komentorivi_print.html

## Verkostoanalyysi
verkostoanalyysi: ./14-verkostoanalyysi/14-verkostoanalyysi.md
	pandoc -t revealjs -s ./14-verkostoanalyysi/14-verkostoanalyysi.md -o ./14-verkostoanalyysi/14-verkostoanalyysi.html -i --slide-level 2 -V theme=white -V lang=fi
	pandoc -s ./14-verkostoanalyysi/14-verkostoanalyysi.md -o ./14-verkostoanalyysi/14-verkostoanalyysi_print.html

## Teemakartat
teemakartat: ./15-teemakartat/15-teemakartat.qmd
	quarto render ./15-teemakartat/15-teemakartat.qmd

#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: help
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=24 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')
