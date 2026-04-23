# Channel Setup Guide

Fungoid supports multiple communication channels for logging and interaction.

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

The bot will log messages and can respond to commands in the configured channel.

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

Send messages to your bot and it will log them to the configured chat.

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

Messages are logged to the Nostr network via the configured relay.

---

## Multi-Channel

You can enable multiple channels simultaneously. Messages will be logged to all active channels.

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

- **Never commit tokens to git**
- Use environment variables or a `.env` file (add to `.gitignore`)
- Rotate tokens regularly
- Use separate bots for development and production

---

## Troubleshooting

**Discord bot not responding:**
- Check bot permissions in server settings
- Verify the channel ID is correct
- Ensure bot token is valid

**Telegram messages not sending:**
- Bot must be started (send any message to it first)
- Chat ID must be correct
- Check network connectivity

**Nostr not publishing:**
- Verify private key format (nsec)
- Check relay is reachable
- Ensure network connectivity
