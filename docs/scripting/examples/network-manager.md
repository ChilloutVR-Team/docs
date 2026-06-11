# Example: Network Manager

Simple example of using the [Networking API](../apis/networking.md) and [Buffer Reader Writer](../apis/buffer-reader-writer.md) to send and receive chat messages.

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