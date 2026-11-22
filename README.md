# A Last Cup of Tea

### A Campaign for Nature

[![Build & Test](https://github.com/shakil42051/A-last-cup-of-tea-3D-simulation/actions/workflows/ci.yml/badge.svg)](https://github.com/shakil42051/A-last-cup-of-tea-3D-simulation/actions/workflows/ci.yml)
[![Latest Release](https://img.shields.io/github/v/release/shakil42051/A-last-cup-of-tea-3D-simulation?include_prereleases)](https://github.com/shakil42051/A-last-cup-of-tea-3D-simulation/releases/latest)
[![C++17](https://img.shields.io/badge/C%2B%2B-17-blue.svg)](https://en.cppreference.com/w/cpp/17)
[![OpenGL](https://img.shields.io/badge/OpenGL-FreeGLUT%20%2F%20GLU-5586A4.svg)](https://www.opengl.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A native, real-time **3D interactive simulation** built for a Computer Graphics & Animation Lab in C++17 with compatibility OpenGL, GLU, and FreeGLUT. The entire valley is procedural geometry — no downloaded 3D models, textures, shaders, video files, or web runtimes.

> *"A peaceful moment with nature should never become our last one."*

![Healthy Valley Overview](screenshots/01-healthy.png)

**Demo Video:** [Watch A Last Cup of Tea on YouTube](https://youtu.be/0HA_QRwD12k)

---

## Screenshots

| Tea Ceremony | Winter Snowfall |
| :---: | :---: |
| ![Drinking Tea](screenshots/16-tea-sip.png) | ![Winter Snowfall](screenshots/09-winter.png) |
| *Articulated character reaching, lifting, and sipping tea* | *Dynamic winter season with snowfall and visible breath* |

### Furnished Home & Cow Farm
![Home and Farm Overview](screenshots/home-review.png)

### Interactive Disaster Sequence
![Disaster Sequence Overview](screenshots/disaster-review.png)

Browse all 41 real OpenGL captures in the [`screenshots/`](screenshots/) directory.

---

## Download & Play (Windows / Linux)

Prebuilt packages are published on the [**GitHub Releases**](https://github.com/shakil42051/A-last-cup-of-tea-3D-simulation/releases/latest) page:

- **Windows (Portable Package):** Download `A-Last-Cup-of-Tea-vX.Y.Z-windows-x64.zip`, extract it, and double-click `Play.cmd` (or `last_cup.exe`).
- **Windows (Standalone Executable):** Download `last_cup.exe` directly and run it. Requires 64-bit Windows and an OpenGL-capable display driver.
- **Linux (x64):** Download `A-Last-Cup-of-Tea-vX.Y.Z-linux-x64.tar.gz`, extract it, and run `./last_cup` (requires `freeglut3` and `libglu1-mesa`).

Click inside the window to capture the mouse. Press `Tab` to release it.

---

## Version Highlights

- **Version 4 — Disaster Story:** Activate the glowing red emergency baton with `E` to trigger the warning, earthquake, lava eruptions, meteor impacts, extreme storm, slow last cup, final collapse, and fade. `P` pauses, `R` restarts, `F` changes playback speed, and `M` toggles camera shake. See [Disaster story](docs/DISASTER.md).
- **Version 3 — Homestead & Farm:** Walkable furnished house (living room, kitchen, bedroom, bathroom) with an automatic front door, first-person view (`V`), warm indoor lighting, stone paths, and a fenced cow farm with four animated cows, barn, hay, and water troughs. See [Home and farm](docs/HOMESTEAD.md).
- **Version 2 — Living World:** Articulated human protagonist, collision-aware following camera, animated tea-drinking sequence, four seasons, and six weather states with automatic shelter-seeking. See [Living world](docs/LIVING_WORLD.md).
- **Version 1 — Core Campaign:** Original procedural valley, environmental observations, damage sequence, six restoration tasks, and final tea objective.

---

## Controls

| Input | Action |
|---|---|
| `W` / `A` / `S` / `D` | Move forward / left / backward / right |
| `Mouse` | Orbit the following camera after clicking in the window |
| `E` | Interact; leave the tea table; toggle home lights or put out hay |
| `F` | Cycle disaster playback speed: `1x`, `4x`, `8x` |
| `M` | Toggle disaster camera shake |
| `V` | Toggle first-person and following-camera views |
| `Q` / `C` | Raise / lower the camera angle while the character stays on the ground |
| `F1` / `F2` / `F3` / `F4` | Spring / Summer / Autumn / Winter |
| `1` / `2` / `3` | Clear / Cloudy / Rain |
| `4` / `5` / `6` | Storm / Snow / Windy |
| `T` | Toggle automatic seasons (one season every 90 seconds) |
| `P` | Pause / resume |
| `R` | Restart the entire campaign |
| `H` | Toggle the short help panel |
| `Tab` | Capture / release the mouse |
| `Escape` | Exit |

Interaction distance is measured from the human character rather than the following camera. Diagonal movement is normalized. Mouse pitch ranges from `-65°` to `-5°` in third-person and `-65°` to `+65°` in first-person. The camera boom shortens automatically around buildings and tree canopies.

Selecting a season blends the landscape and sets a matching starting weather (clear in spring/summer, windy in autumn, snow in winter), while number keys let you pick any weather independently. Rain and storms prompt the character to walk to the covered porch bench; press `WASD` at any time to take manual control.

---

## Campaign Walkthrough

1. Walk toward the tea table and press **E**. The character walks to the chair, sits, slides in, reaches for the cup, lifts it, sips, and sets it back down (~12–18 seconds). Press **E** to leave.
2. Explore the flowers, tree, river, and birdwatching perch. The top-right minimap marks the tea table (**T**), house (**H**), cow farm (**C**), emergency baton (**D**), factory (**F**), warning (**!**), and active restoration goals (**G**).
3. Find the warning sign at **(12, -8)** and investigate. The valley deteriorates over **24 seconds** as trees fall, the river darkens, grass dries, smoke rises, and wildlife fades.
4. Complete six restoration actions in any order once the damage event finishes:
   - Plant a tree at **(-9, 1)**.
   - Collect three litter piles at **(-5, 8)**, **(6, 8)**, and **(5, 19)**.
   - Switch off the factory at **(21, -15)**.
   - Restore the wildlife refuge at **(-12, 23)**.
5. Cross the bridge at **x = 0** (spanning **z = 9–18**) to reach the far bank.
6. Recovery smoothly blends back as actions complete: grass (~20%), trees (~40%), butterflies (~60%), and birds (~80%).
7. At 100% recovery, return to the tea table and press **E** for the closing message: **“Don't let this be the last cup.”**

---

## Build from Source

### Windows (MinGW / Portable Tools)

Run `scripts/build-windows.ps1` in PowerShell. The script automatically detects `.tools` if present, or uses `cmake` and MinGW on `PATH`. FreeGLUT 3.6.0 is fetched automatically if not already present locally.

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build-windows.ps1
.\dist\last_cup.exe
```

### Windows (Visual Studio — Desktop development with C++)

```powershell
cmake -S . -B build-vs
cmake --build build-vs --config Release
ctest --test-dir build-vs -C Release --output-on-failure
.\build-vs\Release\last_cup.exe
```

### Linux (Debian / Ubuntu)

```sh
sudo apt-get install -y build-essential cmake freeglut3-dev libglu1-mesa-dev
cmake -S . -B build -DTEA_FETCH_FREEGLUT=OFF -DCMAKE_BUILD_TYPE=Release
cmake --build build -j
ctest --test-dir build --output-on-failure
./build/last_cup
```

Single-command compilation is also supported:

```sh
g++ -std=c++17 -O2 src/main.cpp -o last_cup -lglut -lGLU -lGL
```

### Creating a Release Package

Using CPack (Windows ZIP or Linux TGZ):

```powershell
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
cpack --config build/CPackConfig.cmake -B dist
```

Or on Windows with the helper script:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\package-release.ps1 -Version 4.0.0
```

Pushing a version tag (for example `git tag v4.0.0 && git push origin v4.0.0`) automatically builds, tests, packages, and publishes Windows and Linux release archives via GitHub Actions.

---

## Project Structure

```text
.
├── .github/workflows/       # CI build/test and automated release packaging
│   ├── ci.yml
│   └── release.yml
├── src/                     # C++17 / OpenGL simulation source code
│   ├── main.cpp             # Core world, campaign, input, rendering, and self-tests
│   ├── LivingWorld.h/.inl   # Articulated character, seasons, weather, and particles
│   ├── Homestead.h/.inl     # Furnished house, door/wall collisions, and cow farm
│   └── Disaster.h/.inl      # Disaster phase machine, lava, meteors, and cinematics
├── scripts/                 # Build and release packaging scripts
│   ├── build-windows.ps1
│   └── package-release.ps1
├── docs/                    # Technical documentation and lab reports
│   ├── DISASTER.md          # Disaster story timeline and mechanics
│   ├── HOMESTEAD.md         # Home interior and farm guide
│   ├── LIVING_WORLD.md      # Character animation and weather notes
│   ├── LAB_REPORT.md        # 13-section Computer Graphics lab report
│   ├── VIVA.md              # 55 viva Q&A pairs
│   ├── VALIDATION.md        # Automated test and benchmark evidence
│   └── THIRD_PARTY.md       # Third-party license notices
├── screenshots/             # 41 real OpenGL captures across all states
├── CMakeLists.txt           # CMake build, CTest, and CPack configuration
├── Play.cmd                 # Double-click Windows launcher
├── LICENSE                  # MIT License
└── README.md
```

---

## Architecture & Graphics Concepts

- **State separation:** `World` holds campaign state, `Human` stores protagonist pose and actions, and `Atmosphere` manages season and weather blending. `update()` advances simulation time in seconds while rendering reads immutable state.
- **Coordinate system & transforms:** `x` is left/right, `y` is height, `z` is depth. `gluPerspective` and `gluLookAt` drive the camera; hierarchical objects use nested `glPushMatrix`/`glPopMatrix` transforms with `GL_NORMALIZE` enabled for scaled normals.
- **Lighting & transparency:** Materials use vertex color for ambient/diffuse response and `glMaterialfv` for specular highlights. Blending handles water, steam, smoke, and contact shadows, with depth writes disabled and smoke particles sorted back-to-front.
- **HUD overlay:** Saves projection and modelview matrices, switches to orthographic screen coordinates, draws minimap and status panels, then restores both stacks.

---

## Verification Commands

```powershell
.\dist\last_cup.exe --self-test
.\dist\last_cup.exe --render-check screenshots
.\dist\last_cup.exe --benchmark
```

- `--self-test` runs **144 automated simulation checks** headlessly without creating a graphics window.
- `--render-check screenshots` opens the native OpenGL renderer, captures 39 deterministic campaign, season, weather, home, farm, and disaster frames to `.ppm` files, and exits.
- `--benchmark` measures 240 animated storm frames and verifies zero OpenGL errors (`GL_NO_ERROR`).

---

## Dependencies & Credits

- [FreeGLUT 3.6.0](https://github.com/freeglut/freeglut/tree/v3.6.0)
- [OpenGL 2.1 Reference Pages](https://registry.khronos.org/OpenGL-Refpages/gl2.1/)
- [w64devkit](https://github.com/skeeto/w64devkit) (portable Windows MinGW-w64 toolchain)
- [CMake](https://cmake.org/)

All 3D scene geometry and campaign text are authored in this repository. See [`docs/THIRD_PARTY.md`](docs/THIRD_PARTY.md) for third-party license details.
