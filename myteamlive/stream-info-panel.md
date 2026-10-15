---
layout: myteamlive
permalink: /myteamlive/stream-info-panel
title: "Stream Info Panel"
section_logo: /images/MyTeamLive.png
section_name: MyTeamLive
section_url: /myteamlive/overview
---


Monitor the livestream status without leaving the Camera View.

## Details

- Orientation: current device orientation (also shown in the control bar).
- Headphones: connection status (also in the control bar).
- Zoom: current zoom factor.
- Quality: configured video resolution (720p or 1080p).
- Active Format: the camera's actual capture resolution, which can differ slightly from Quality.
- FPS: target frame rate (30 or 60).
- Codec: H.264 or HEVC, chosen with the HEVC switch on the Go Live summary.
- Camera: frames per second the camera delivered over the last 10 seconds. It should match FPS.
- Camera Drops: frames the camera dropped in the last 10 seconds, with the most common reason. Steady drops make the picture choppy; note the reason when you report it.
- Thermal State: Nominal, Fair, Serious, or Critical. At Serious, give the device shade or airflow; at Critical, Instant Replay turns itself off.
- Camera Pressure: Nominal, Fair, Serious, Critical, or Shutdown. How hard the camera is working against heat and power. At Critical, quality suffers; at Shutdown, the camera stops.
- Current FPS: measured frame rate.
- Recording Timer: elapsed time since the broadcast started, independent of the game clock.
- Current bitrate in KBps.
- Send Queue: video waiting to go out. It should stay near zero; if it keeps growing, the network can't keep up and the stream will turn Unstable.
- Endpoint: ingest URL and stream key in use.
- Account: connected YouTube or Twitch account, with video title, privacy, and made-for-kids status when applicable.
- Publish State: Ready, Standby, Publishing, Paused, Finished, Aborted.
- Stream State: Ready, Working, Good, Unstable, Closed, Aborted.
- Connection State: Closed, Connecting, Open, Closing.
- Recording State: status, bitrate, and dropped frame details.
- Audio Device: currently actived device.
- Audio Input: currently active microphone.
- Remote Cameras: endpoint and list of configured remote cameras and status.
- Delivered FPS: frames per second a remote camera is sending, updated every 2 seconds. Well below its expected frame rate turns the camera yellow.
