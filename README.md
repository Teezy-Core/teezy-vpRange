# FiveM Native Simple Voice Proxmity Range Marker
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/Teezy-Core/teezy-vpRange/blob/main/LICENSE)

This is a Lua script for the FiveM that enables the creation of proximity markers for players based on their distance from the player character. The script utilizes the Mumble voice chat plugin to determine the distance between players and creates a marker if the players are within a certain proximity range.

![alt text](https://media.discordapp.net/attachments/804547922011095070/1098325134974144644/image.png?width=1038&height=584)

# Getting Started

**Prerequisites**

* FiveM Server with Mumble Voice Plugin installed
* Basic knowledge of Lua programming language

# Installation

1. Download the script from the source.
2. Place the script in the `resources` folder of your FiveM server.
3. Add the following line to your server.cfg file: `teezy-vpRange`
4. Start your FiveM server and enjoy!

# Usage

**Configuration**

The script has several configuration options that can be modified to suit your needs. These options can be found at the top of the script file.

| Name | Details    |
|:---:   |:---: |
| `Config.EnabaleMarker` | If set to true, the script will create a marker when the player presses a specified control key. |
| `Config.ControlKey` | The control key that must be pressed to create the marker if **Config.EnabaleMarker** is set to true. |
| `Config.EnableMarkOnPlayerTalking` | If set to **true**, the script will create a marker when the player is talking in Mumble. |
| `Config.Range` | An array of proximity ranges and their corresponding marker colors. The script will create a marker based on the player's proximity to other players in the server. |

# Features

* Markers can be create in 2 Scenario `1` is when a EnabaleMarker are true marker will be created when player pressed a key that are specified in `Config.ControlKey` `2` is when  `Config.EnableMarkOnPlayerTalking`  are set to true the marker will be created when player are start talking.
* Drag and Drop
* Supported any Frameworks as it is use Native from FiveM

# TODOS

- [ ] Add more options
- [ ] Make it more user friendly
- [ ] Make it more optimized
- [ ] Make the Marker more accurate (It's not accurate at all)
- [ ] Onesync Infinity Support (If it's possible) IDK LOL

# License

```
MIT License

Copyright (c) 2023 Lester

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
