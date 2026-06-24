# LINBIT Hugo theme — dev tasks for the bundled exampleSite.
# The exampleSite is a self-contained Hugo site under exampleSite/; it finds the
# theme via the exampleSite/themes/linbit -> ../.. symlink, so everything runs
# from the repo root with the theme's own node_modules.

.PHONY: serve build clean

node_modules: package.json
	npm install
	@touch node_modules

# Live-reload preview of the exampleSite (theme showcase + design-system style guide).
serve: node_modules
	hugo server --source exampleSite --disableFastRender --bind 0.0.0.0 --port 1315

# Static build of the exampleSite → exampleSite/public/
build: node_modules
	hugo --source exampleSite --minify

clean:
	rm -rf exampleSite/public exampleSite/resources exampleSite/hugo_stats.json exampleSite/.hugo_build.lock
