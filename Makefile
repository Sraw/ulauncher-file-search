
EXT_NAME:=com.github.sraw.ulauncher-file-search

EXT_DIR:=$(shell pwd)

.PHONY: help link unlink
.DEFAULT_TARGET: help

help: ## Show help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

link: ## Symlink the project source directory with Ulauncher extensions dir.
	@ln -s ${EXT_DIR} ~/.cache/ulauncher_cache/extensions/${EXT_NAME}

unlink: ## Unlink extension from Ulauncher
	@rm -r ~/.cache/ulauncher_cache/extensions/${EXT_NAME}
