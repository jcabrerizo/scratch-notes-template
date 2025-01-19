# Scratch Notes Template

This repository serves as a template for creating notes repositories with the required structure to be compatible with
the [uber scratch-notes repository](https://github.com/jcabrerizo/scratch-notes). In this structure, multiple notes
repositories can be added as submodules.

## After Creating a Repository

> [!NOTE]  
> All notes and their directory structure must reside under the [docs](./docs/) directory to ensure compatibility with
> the uber project and to be rendered correctly by MkDocs.

The [MkDocs configuration](./mkdocs.yml) for the repository is fully customizable. You can modify themes, plugins, and
extensions to suit your preferences.

To change the name of the generated site, which defaults to "Example," follow this simple command:

```bash
SITE_NAME="My new notes site"
sed -i "/site_name: Example/c\site_name: $SITE_NAME" mkdocs.yml
```

## MkDocs Configuration

This template includes a pre-configured [mkdocs.yml](./mkdocs.yml) file, enabling you to render this project as a
standalone [MkDocs](https://www.mkdocs.org/) site. The template uses
the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme via its Docker image.

By default, the `make` command launches the site at:

```
http://0.0.0.0:8888
```

You can customize the port by specifying a different value for `HOST_PORT`:

```bash
make HOST_PORT=8080
```

## TODO

- Add documentation on creating a GitHub Pages site using MkDocs.
- Provide instructions on automating the deployment of a GitHub Pages site with GitHub Actions.

