# Zulip bot container

This container image allow running all zulip bots in a single container.

It uses supervisor to spawn bot processes.


## Usage

To add a bot, you should add the bots you want in the bots folder, following 
this format:

```
bots
| - your-bot
| | - bot.py
| | - zuliprc
| \ - other resources
```

You should also add a file for launching your bot in the supervisor.d folder, 
following the format described in the bot.sample.
 
For the bot creation, you can follow the official guide: https://zulipchat.com/api/writing-bots

## Launch the container

To run it, you can use the provided docker-compose file:

```bash
# docker-compose up -d
```
