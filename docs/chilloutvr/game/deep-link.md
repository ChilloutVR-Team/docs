# Deep-Links

ChilloutVR supports **deep links** that let you open the game directly into specific contexts, such as joining an
instance, opening details of avatars, props, or worlds, and more.

These links can be pasted into your **web browser** and trigger the respective operations.

---

## Instance Links

The instance ids are in the format: `i+bab275f822c020a0-152002-e81321-1fe976f9`, but since this is a url, you have to
replace the `+` with it's encoded counterpart: `%2B`. This results in `i%2Bbab275f822c020a0-152002-e81321-1fe976f9`

### Join Instance in Desktop  

Note: always works – will start the game if closed

```chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9```

Link Example: [Join Instance (Desktop)](chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9)

### Join Instance in Desktop (specifically)

Note: always works – will start the game if closed

```chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9&startInVR=false```

Link Example: [Join Instance (Desktop, startInVR=false)](chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9&startInVR=false)

### Join Instance in VR (specifically)

Note: Always works – will start the game and SteamVR if closed

```chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9&startInVR=true```

Link Example: [Join Instance (VR, startInVR=true)](chilloutvr://instance/join?instanceId=i%2Bbab275f822c020a0-152002-e81321-1fe976f9&startInVR=true)

---

## Details Links

You can also open the detail pages for certain entities in game. Note that it requires the game already running,
otherwise nothing will happen.

### Avatar Details

```chilloutvr://details/avatar?id=17c267db-18c4-4900-bb73-ad323f082640```

Link Example: [Avatar Details](chilloutvr://details/avatar?id=17c267db-18c4-4900-bb73-ad323f082640)  

### Prop Details

```chilloutvr://details/prop?id=1f7d0ac0-9629-4240-b01c-b5ec0e300efd```

Link Example: [Prop Details](chilloutvr://details/prop?id=1f7d0ac0-9629-4240-b01c-b5ec0e300efd)

### World Details

```chilloutvr://details/world?id=501e2584-ce9a-4570-8c28-ef496e033f5f```

Link Example: [World Details](chilloutvr://details/world?id=501e2584-ce9a-4570-8c28-ef496e033f5f)

### Instance Details

```chilloutvr://details/instance?id=i%2Bbab275f822c020a0-152002-e81321-1fe976f9```

Link Example: [Instance Details](chilloutvr://details/instance?id=i%2Bbab275f822c020a0-152002-e81321-1fe976f9)

### User Details

```chilloutvr://details/user?id=b3005d19-e487-bafc-70ac-76d2190d5a29```

Link Example: [User Details](chilloutvr://details/user?id=b3005d19-e487-bafc-70ac-76d2190d5a29)

### Group Details

```chilloutvr://details/group?id=504f7441-5921-4eca-a1b6-db42333aded7```

Link Example: [Group Details](chilloutvr://details/group?id=504f7441-5921-4eca-a1b6-db42333aded7)

