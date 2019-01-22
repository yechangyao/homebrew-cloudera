# homebrew-cloudera

You can install Cloudera Director Server and Client with `brew tap` and `brew install`

```sh
brew tap <github-username>/cloudera
```

For example, if you use my tap (use this repository) you can use the following commnads.

```sh
brew tap takabow/cloudera
brew install cloudera-director-server
```

If you want to install only Cloudera Diretor Server, use `--without-cloudera-director-client`.

If you want to install only client, you can use following command:

```sh
brew install cloudera-director-client
```

## How to start Cloudera Director Server

```sh
# Start Cloudera Director Server background
cloudera-director-server-start
# Stop Cloudera Director Server background
cloudera-director-server-stop
```

## Access
```
http://localhost:7189
```
