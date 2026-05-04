SITE_DIR := site
DESIGN_MD_LOCAL := ./node_modules/.bin/design.md

ifeq ($(wildcard $(DESIGN_MD_LOCAL)),)
DESIGN_MD := npx @google/design.md
else
DESIGN_MD := $(DESIGN_MD_LOCAL)
endif

.PHONY: preview render clean lint lint-design check

preview:
	quarto preview $(SITE_DIR)

render:
	quarto render $(SITE_DIR)

clean:
	rm -rf "$(SITE_DIR)/_site" "$(SITE_DIR)/.quarto"

lint: lint-design

lint-design:
	$(DESIGN_MD) lint DESIGN.md
	$(DESIGN_MD) lint DESIGN.web-app.md
	$(DESIGN_MD) lint DESIGN.quarto.md

check: lint render
