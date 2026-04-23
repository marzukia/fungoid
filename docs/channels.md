# 🍄 Fungoid Channel Setup

<div align="center">

**multi-channel logging for the modern dev**

![Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)
![Telegram](https://img.shields.io/badge/Telegram-%230088CC.svg?style=for-the-badge&logo=telegram&logoColor=white)
![Nostr](https://img.shields.io/badge/Nostr-%233cdc50.svg?style=for-the-badge&logo=nostr&logoColor=white)

</div>

---

fungoid supports **discord**, **telegram**, and **nostr** for logging and interaction.

## 🎨 Theme Colors

all channel output uses the fungoid color palette:

```bash
# orange #ff7800
echo -e "\033[38;2;255;120;0m→\033[0m discord"
# green #3cdc50
echo -e "\033[38;2;60;220;80m✓\033[0m telegram"
# pink #d966ff
echo -e "\033[38;2;217;102;255m◉\033[0m nostr"
```

full color reference: [COLORS.md](COLORS.md)


---

## Discord

### Setup

1. **Create a Discord Bot**
   - Go to [Discord Developer Portal](https://discord.com/developers/applications)
   - Create a new application
   - Go to "Bot" section and create a bot
   - Copy the bot token

2. **Add Bot to Your Server**
   - Go to "OAuth2" > "URL Generator"
   - Select scopes: `bot`
   - Select permissions: `Send Messages`, `Read Message History`
   - Copy the generated URL and invite the bot

3. **Configure Fungoid**
   ```bash
   export DISCORD_BOT_TOKEN="your-bot-token"
   export DISCORD_CHANNEL_ID="your-channel-id"
   ```

### Usage

the bot will log messages and can respond to commands in the configured channel.

---

## Telegram

### Setup

1. **Create a Bot**
   - Message [@BotFather](https://t.me/BotFather) on Telegram
   - Send `/newbot` and follow the instructions
   - Copy the bot token

2. **Get Your Chat ID**
   - Message your bot
   - Visit `https://api.telegram.org/bot<YOUR_TOKEN>/getUpdates`
   - Find your chat ID in the response

3. **Configure Fungoid**
   ```bash
   export TELEGRAM_BOT_TOKEN="your-bot-token"
   export TELEGRAM_CHAT_ID="your-chat-id"
   ```

### Usage

send messages to your bot and it will log them to the configured chat.

---

## Nostr

### Setup

1. **Generate Keys**
   ```bash
   # Using nostr-cli or any nostr wallet
   nostr-keygen
   ```

2. **Configure Fungoid**
   ```bash
   export NOSTR_PRIVATE_KEY="your-nsec"
   export NOSTR_RELAY="wss://relay.damus.io"
   ```

3. **Optional: Publish Public Key**
   - Share your `npub` so others can message you

### Usage

messages are logged to the nostr network via the configured relay.

---

## Multi-Channel

you can enable multiple channels simultaneously. messages will be logged to all active channels.

```bash
# Enable all channels
export DISCORD_BOT_TOKEN="..."
export DISCORD_CHANNEL_ID="..."
export TELEGRAM_BOT_TOKEN="..."
export TELEGRAM_CHAT_ID="..."
export NOSTR_PRIVATE_KEY="..."
export NOSTR_RELAY="wss://relay.damus.io"
```

---

## Security

- **never commit tokens to git**
- use environment variables or a `.env` file (add to `.gitignore`)
- rotate tokens regularly
- use separate bots for development and production

---

## Troubleshooting

**discord bot not responding:**
- check bot permissions in server settings
- verify the channel ID is correct
- ensure bot token is valid

**telegram messages not sending:**
- bot must be started (send any message to it first)
- chat ID must be correct
- check network connectivity

**nostr not publishing:**
- verify private key format (nsec)
- check relay is reachable
- ensure network connectivity
