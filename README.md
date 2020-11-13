# sony-reconnect

This is a command-line tool used to quickly reconnect my Sony WH-1000XM3 headphones to my MacBook Pro.

I've noticed that after this model of headphones are paired to a MacBook, when they reconnect the volume will be set very low (even if you increase the system volume to 100%). Disconnecting and reconnecting the Bluetooth connection appears to fix the problem. As a result, I wrote this command line tool to do this faster.

## Usage

You'll need the full XCode installed to build :(

```
make
make install
```

Add `/usr/local/bin` to your `$PATH` if it's not already.

Then you can run this command from any terminal with **`sony-reconnect`**.
