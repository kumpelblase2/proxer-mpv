# proxer-mpv

Pipes any proxer.me anime stream into mpv. This is just a fun project and will probably not be developed any further than this. It's more likely that a livestreamer plugin will be provided at a later date.

## Installation

### From Source

```
git clone https://github.com/kumpelblase2/proxer-mpv.git && cd proxer-mpv
crystal build src/proxer-mpv.cr --release
```

## Usage

Please make sure you have mpv in your `$PATH`.

The executeable requires one argument which is the URL of episode you want to watch. E.g.:

    proxer-mpv http://proxer.me/watch/12878/2/engsub


## Contributing

1. Fork it ( https://github.com/kumpelblase2/proxer-mpv/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
