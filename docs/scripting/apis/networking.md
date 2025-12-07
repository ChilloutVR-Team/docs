# Networking API

Provides low-level message sending and receiving. Currently uses Mod Network and has no concept of ownership.

A proper high-level networking API is planned for a future update, built on top of this existing low-level API.

For networking-related events, see [Available Events - Networking Events](available-events.md/#networking-events).

## Networking
<big><sub>**`WasmScripting.Networking`**</sub></big>

### Static Members

#### Static Events

| Signature                                                | Description                            |
|----------------------------------------------------------|----------------------------------------|
| Action<[Player](player.md), Span&lt;byte&gt; OnReceiveMessage | Invoked whenever a message is received |

#### Static Methods

| Signature                                                                                                                                                                     | Description                                             |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| void SendMessage([BufferReaderWriter](buffer-reader-writer.md) writer, short[] playerIds = null, [SendType](#sendtype) sendType = SendType.Unreliable, bool loopback = false) | Sends a message using the given writer                  |
| void SendMessage(Span&lt;byte&gt; message, short[] playerIds = null, [SendType](#sendtype) sendType = SendType.Unreliable, bool loopback = false)                                          | Sends a raw message                                     |
| bool WillMessageBeDropped(int messageSize)                                                                                                                                    | Returns true if a message of this size would be dropped |
| float NetworkCloggedPercentage()                                                                                                                                              | Returns the network congestion percentage               |
| int Ping                                                                                                                                                                      | Current ping to the game server in ms                   |
| [Player](player.md) GetInstanceOwner()                                                                                                                                        | Returns the instance owner player                       |

!!! Tip
    You can get player ids via the `NetworkId` property on the [Player API](player.md).

## SendType
<big><sub>**`WasmScripting.SendType`**</sub></big>

| Member              | Description                                     |
|---------------------|-------------------------------------------------|
| Unreliable          | Message may be dropped or arrive out of order   |
| UnreliableSequenced | Message may be dropped but will arrive in order |
| Reliable            | Message will arrive and in the order sent       |

## Relevant Examples

- [Network Manager](../examples/network-manager.md)