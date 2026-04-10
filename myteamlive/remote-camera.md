---
layout: myteamlive
title: "More Tab / Remote Camera"
section_logo: /images/MyTeamLive.png
section_name: MyTeamLive
section_url: /myteamlive/index
---

Remote Cameras let a secondary device stream from a different camera angle. The primary device runs the broadcast and scoreboard; secondary sources send their camera feed to the broadcaster. Secondary sources can be:

- **Another MyTeamLive device** — uses the Remote Camera screen in the More tab to connect over WiFi or Local network.
- **Any RTMP-capable device** — such as a GoPro camera or other hardware encoder. Connect using the RTMP URL shown under Camera Connections on the broadcaster.

---

## Broadcaster Setup (Primary Device)

Configure remote cameras in the **Setup** step (step 2) of the Go Live flow.

1. Enable the **Remote Cameras** toggle.
2. Choose a network: **WiFi** for range across the venue; **Local** (Bluetooth/peer) when on cellular or WiFi is unreliable.
3. Under **Camera Connections**, tap **Add Camera** to configure each camera slot with a name.
4. Share the displayed RTMP URL (or the camera name) with each secondary device so they can connect.
5. When the broadcast starts, connected cameras appear in the camera switcher alongside the Quick Control Bar.

---

## Switching Camera Sources During Broadcast

When remote cameras are configured, a column of camera thumbnails appears next to the Quick Control Bar.

- The active source is shown in the main preview.
- Tap any thumbnail in the column to switch the broadcast to that camera.
- A disconnected camera slot is shown with a slash icon; it can't be selected until the device connects.

---

## Remote Camera Setup (MyTeamLive Secondary Device)

1. Open the **More** tab and choose **Remote Camera**.
2. Set **FPS** and **Quality** to match what you want to send. These can be lower than the primary device since the feed is mixed server-side.
3. Choose the same network type (WiFi or Local) as the broadcaster.
4. Tap **Browse** to find the broadcaster on the network.
5. Select the broadcaster from the list.
6. Select the camera slot assigned to this device.
7. Tap **Send video as camera [name]** to open the camera view.
8. Tap the play icon in the control bar to begin streaming to the broadcaster.

---

## Remote Camera Setup (RTMP Device)

Any device that can stream RTMP — such as a GoPro camera — can be used as a remote camera without needing the MyTeamLive app.

1. On the broadcaster, enable **Remote Cameras** and add a camera slot for the device.
2. Copy the **RTMP URL** shown under Camera Connections for that slot.
3. Enter that RTMP URL into the RTMP output settings on your device (e.g., GoPro Quik live streaming settings).
4. Start streaming on the device. The slot will show as connected on the broadcaster.


---

## Remote Camera Live View

The secondary device shows a full-screen live view with its own control bar and zoom controls.

- Use the control bar to start, pause, and stop sending video.
- Zoom and focus work the same as on the primary device.
- Tap the info icon to see stream diagnostics (bitrate, RTMP URL, connection state).
- If the connection to the broadcaster is lost, a dialog lets you continue and reconnect, or close the view.

---

## Tips

- Keep both devices on the same WiFi network for best results. Use Local mode only when WiFi is unavailable or unreliable.
- Add camera slots on the broadcaster before secondary devices try to connect.
- The RTMP URL shown under Camera Connections can be copied or shared directly to the secondary device — both MyTeamLive devices and RTMP hardware encoders use this URL.
- RTMP devices like GoPro cameras connect over WiFi directly using the RTMP URL; they cannot use the Local network mode.
