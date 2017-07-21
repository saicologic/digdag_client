# digdag_client

This library allows you to access the [Digdag Server](https://github.com/treasure-data/digdag) via Ruby.

It is based on Release [v0.9.12](https://github.com/treasure-data/digdag/releases/tag/v0.9.12).

If you want to see the implementation of the server please refer to the following
[source code](https://github.com/treasure-data/digdag/tree/master/digdag-server/src/main/java/io/digdag/server/rs)

# Install

```
gem install digdag_client
```

# Usage

```
require 'digdag_client'

client = Digdag::Client.new
client.get_sessions
```

default endpoint: http://localhost:65432/

## Change endpoint


```
client = Digdag::Client.new(
  endpoint: 'http://localhost:8000/'
)
```

# Document
http://www.rubydoc.info/gems/digdag_client/0.0.2/Digdag/Client

# Implemented

- Attempt
- Workflow
- Version
- Session
- Log(Implementation part only)

# TODO: Not yet implemented

- Project
- Schedule
