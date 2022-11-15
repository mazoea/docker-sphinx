FROM python:3-alpine

WORKDIR /opt/docs/

RUN pip install --no-cache-dir -U Sphinx sphinx_bootstrap_theme

ENTRYPOINT [ "sphinx-build" ]
CMD [ "--version" ]
