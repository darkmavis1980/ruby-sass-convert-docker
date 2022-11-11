# Legacy Sass Convert Image

This is an Ubuntu 20.04 container that has Ruby Sass installed, which is a now dead project by Sass-Lang, as now you should use Dart Sass instead, but it contains a useful CLI to convert old SASS files to SCSS ones.

## Prerequisites

- Docker Deskop or Rancher Desktop

## How to run it

Run the container:

```bash
docker-compose up -d
```

Now you need to copy the files you want to convert, ideally in the mounted volume, and to copy file you can use the folling command:

```bash
docker cp <file-or-folder> <container-name>:<container-path>

# example
docker-cp index.sass ubuntu:/opt/data
```

Once the files are copied, you can access to the bash shell of the container:

```bash
docker-compose exec ubuntu bash
```

And to convert you can simply run:

```bash
# Convert a single file
sass-convert -F sass -T scss styles.sass styles.scss

# Convert a folder
sass-convert -F sass -T scss folder/
```

Then to copy the data back you can use the `docker cp` command again:

```bash
docker cp ubuntu:/opt/data/ ./test
```

> **Note**
>
> With Rancher Desktop, if you target a specific file to copy, it will not work and throw an error, so you must copy a directory instead

To stop the container once you finished:

```bash
docker-compose down
```
