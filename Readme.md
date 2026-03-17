# Status

[![☃ build-and-publish](https://github.com/mazoea/docker-sphinx/actions/workflows/ci.yml/badge.svg?branch=latest)](https://github.com/mazoea/docker-sphinx/actions/workflows/ci.yml)

## Included tooling

This image contains:

- `Sphinx`
- `sphinx_bootstrap_theme`
- `myst-parser` (Markdown support)
- `sphinxcontrib-mermaid` (Mermaid diagrams)

## Sphinx project configuration

In your `conf.py`, add:

```python
extensions = [
	"sphinx.ext.autodoc",
	"sphinx.ext.coverage",
	"sphinx.ext.todo",
	"myst_parser",
	"sphinxcontrib.mermaid",
]

source_suffix = {
	".rst": "restructuredtext",
	".md": "markdown",
}

# Allows standard fenced blocks like ```mermaid in Markdown files.
myst_fence_as_directive = ["mermaid"]
```

Then include `.md` files in your toctree as usual.
