# InstancesAPI

Accessible via the `InstancesAPI` [Global](globals.md#api-access). This API provides access to information about the currently connected instance.

There are some events for instances, they can be checked here: [Instance Events](events.md#instances-events)

## Static Properties

| Name              | Description                                                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------------------------------|
| `Ping`            | Ping to Game Server.                                                                                                     |
| `IsConnected`     | Is the local player connected to the Game Server.                                                                        |
| `IsHomeInstance`  | Is the current instance the local player's home world instance.                                                          |
| `InstanceID`      | Current instance id.                                                                                                     |
| `InstanceName`    | Current instance name. <br>(Display Name + ID)                                                                           |
| `InstancePrivacy` | Current instance privacy as string. <br>(Public, FriendsOfFriends, Friends, Group, EveryoneCanInvite, OwnerMustInvite)   |
