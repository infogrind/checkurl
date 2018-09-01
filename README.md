# Check URL Existence

A tiny shell command to test if 

## Usage

```
checkurl <url>
```

Exit status:

* `0` if the URL exists
* `1` if the URL does not exist

Whether an URL “exists” is most likely determined by a non-4xx HTTP status code,
though the exact definition depends on `curl`’s implementation of the `--fail`
option. Thus you are best served checking in detail the documentation (and
perhaps implementation) of `curl`.

## Requirements

You need `bash` and `curl` in a recent enough version.


## Credits

The script was inspired by [this answer on
StackOverflow](https://stackoverflow.com/a/12199125).
