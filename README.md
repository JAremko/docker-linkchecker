### Docker image with latest https://github.com/linkcheck/linkchecker

#### Usage:
``` bash
docker run -ti \
  --rm \
  --name linkchecker \
  -v $(pwd)/linkcheckerrc:/root/.linkchecker/linkcheckerrc \
  jare/linkchecker \
    --check-extern \
    http://develop.spacemacs.org
```

[Config example](https://github.com/JAremko/docker-linkchecker/blob/master/linkcheckerrc)
