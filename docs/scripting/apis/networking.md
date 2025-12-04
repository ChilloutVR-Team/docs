<big><sub>**`WasmScripting`**</sub></big>
# Networking API

Provides low-level message sending and receiving. Currently uses Mod Network and has no concept of ownership.

A proper high-level networking API is planned for a future update, built on top of this existing low-level API.

## Static Members

### Static Events

| Signature                                                | Description                            |
|----------------------------------------------------------|----------------------------------------|
| Action<[Player](player.md), Span<byte>> OnReceiveMessage | Invoked whenever a message is received |

### Static Methods

| Signature                                                                                                                             | Description                                             |
|---------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| void SendMessage(BufferReaderWriter writer, short[] playerIds = null, SendType sendType = SendType.Unreliable, bool loopback = false) | Sends a message using the given writer                  |
| void SendMessage(Span<byte> message, short[] playerIds = null, SendType sendType = SendType.Unreliable, bool loopback = false)        | Sends a raw message                                     |
| bool WillMessageBeDropped(int messageSize)                                                                                            | Returns true if a message of this size would be dropped |
| float NetworkCloggedPercentage()                                                                                                      | Returns the network congestion percentage               |
| int Ping                                                                                                                              | Current ping to the game server in ms                   |
| [Player](player.md) GetInstanceOwner()                                                                                                | Returns the instance owner player                       |

### Example

```csharp
using CVR;
using WasmScripting;

public partial class NetworkManager : WasmBehaviour
{

    private void Awake()
    {
        Networking.OnReceiveMessage += OnNetworkMessageReceived;
    }

    private enum MessageType : byte
    {
        ChatMessage = 0,
    }

    private void OnNetworkMessageReceived(Player sender, Span<byte> message)
    {
        BufferReaderWriter reader = new(message);
        reader.Read(out MessageType type);

        switch (type)
        {
            case MessageType.ChatMessage:
                reader.Read(out string chatText);
                TextWall.Instance.AddGlobalUserText(sender, chatText);
                break;
        }
    }

    public void SendTextChatMessage(string text)
    {
        BufferReaderWriter writer = new();
        writer.Write(MessageType.ChatMessage);
        writer.Write(text);
        Networking.SendMessage(writer);
    }
}
```