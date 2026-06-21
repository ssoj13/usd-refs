# usd-refs — OpenUSD & VFX reference libraries

A curated collection of [OpenUSD](https://openusd.org) and related computer-graphics / VFX
reference libraries, wired as **git submodules**. Each submodule is pinned to the current
tip of its upstream default branch, so the set captures a known-good snapshot of the modern
open-source CG stack — most of them [Academy Software Foundation](https://www.aswf.io/) projects.

## Clone

```bash
# everything in one go (SSH)
git clone --recurse-submodules git@github.com:ssoj13/usd-refs.git

# or, after a plain clone
git submodule update --init --recursive
```

Submodules are checked out in *detached HEAD* at their pinned commit (normal for submodules).
To work inside one, switch to its branch: `git -C <name> checkout main` (or `master`).

## Contents

### Scene description & geometry
| Library | What it is | Upstream |
|---|---|---|
| **OpenUSD** | Pixar's Universal Scene Description — framework for authoring, composing and interchanging 3D scenes and assets | [`PixarAnimationStudios/OpenUSD`](https://github.com/PixarAnimationStudios/OpenUSD) |
| **OpenSubdiv** | High-performance subdivision-surface evaluation on CPU/GPU | [`PixarAnimationStudios/OpenSubdiv`](https://github.com/PixarAnimationStudios/OpenSubdiv) |
| **Draco** | Mesh & point-cloud geometry compression (also used by glTF) | [`google/draco`](https://github.com/google/draco) |
| **cgltf** | Single-file C/C++ glTF 2.0 loader & writer | [`jkuhlmann/cgltf`](https://github.com/jkuhlmann/cgltf) |

### Shading & look development
| Library | What it is | Upstream |
|---|---|---|
| **MaterialX** | Open standard for exchanging materials and look-dev data across DCCs and renderers | [`AcademySoftwareFoundation/MaterialX`](https://github.com/AcademySoftwareFoundation/MaterialX) |
| **OpenShadingLanguage** (OSL) | Shading language and runtime for production rendering | [`AcademySoftwareFoundation/OpenShadingLanguage`](https://github.com/AcademySoftwareFoundation/OpenShadingLanguage) |

### Color
| Library | What it is | Upstream |
|---|---|---|
| **OpenColorIO** (OCIO) | Color-management pipeline for film/VFX — ACES, view transforms, LUTs | [`AcademySoftwareFoundation/OpenColorIO`](https://github.com/AcademySoftwareFoundation/OpenColorIO) |
| **aces-looks** | Look Modification Transforms (LMTs) for ACES 1 & 2 | [`priikone/aces-looks`](https://github.com/priikone/aces-looks) |

### Imaging & I/O
| Library | What it is | Upstream |
|---|---|---|
| **OpenImageIO** (OIIO) | Image I/O abstraction, texture system and CLI tools | [`AcademySoftwareFoundation/OpenImageIO`](https://github.com/AcademySoftwareFoundation/OpenImageIO) |
| **OpenEXR** | High-dynamic-range image format + the Imath math library | [`AcademySoftwareFoundation/openexr`](https://github.com/AcademySoftwareFoundation/openexr) |
| **OpenJPH** | Fast open implementation of High-Throughput JPEG 2000 (HTJ2K) | [`aous72/OpenJPH`](https://github.com/aous72/OpenJPH) |

### Volumes
| Library | What it is | Upstream |
|---|---|---|
| **OpenVDB** | Sparse volumetric data structure & toolset for volumes and simulation | [`AcademySoftwareFoundation/openvdb`](https://github.com/AcademySoftwareFoundation/openvdb) |

### Datasets
| Library | What it is | Upstream |
|---|---|---|
| **caldera** | Open photogrammetry / terrain reference dataset from *Call of Duty: Warzone* | [`Activision/caldera`](https://github.com/Activision/caldera) |
