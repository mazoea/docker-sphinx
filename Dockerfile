FROM python:3-alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir Sphinx sphinx_bootstrap_theme && \
    rm -rf /root/.cache

WORKDIR /opt/docs/
RUN adduser -D maz
USER maz


ENTRYPOINT [ "sphinx-build" ]
CMD [ "--version" ]
