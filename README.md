# usd-refs — OpenUSD, VFX, graphics & computer-vision reference libraries

A curated collection of [OpenUSD](https://openusd.org) and related computer-graphics, VFX,
imaging and computer-vision reference libraries, wired as **git submodules**. Each submodule
is pinned to the current tip of its upstream default branch, so the set captures a known-good
snapshot of the modern open-source CG/CV stack — many of them
[Academy Software Foundation](https://www.aswf.io/) projects.

## Clone

```bash
# everything in one go (SSH)
git clone --recurse-submodules git@github.com:ssoj13/usd-refs.git

# or, after a plain clone
git submodule update --init --recursive

# just one library (the tree is large; checkout selectively)
git submodule update --init opencv
```

Submodules are checked out in *detached HEAD* at their pinned commit (normal for submodules).
To work inside one, switch to its branch: `git -C <name> checkout <main|master|develop>`.
Most upstreams are on GitHub via SSH; **Eigen** lives on GitLab (HTTPS).

## Contents

### Scene description, geometry & interchange
| Library | What it is | Upstream |
|---|---|---|
| **OpenUSD** | Pixar's Universal Scene Description — author, compose and interchange 3D scenes/assets | [`PixarAnimationStudios/OpenUSD`](https://github.com/PixarAnimationStudios/OpenUSD) |
| **OpenSubdiv** | High-performance subdivision-surface evaluation on CPU/GPU | [`PixarAnimationStudios/OpenSubdiv`](https://github.com/PixarAnimationStudios/OpenSubdiv) |
| **Alembic** | Baked-geometry cache interchange format for VFX/animation | [`alembic/alembic`](https://github.com/alembic/alembic) |
| **OpenTimelineIO** | Editorial timeline / cut interchange (OTIO) | [`AcademySoftwareFoundation/OpenTimelineIO`](https://github.com/AcademySoftwareFoundation/OpenTimelineIO) |
| **Ptex** | Per-face texture mapping without explicit UVs (Disney) | [`wdas/ptex`](https://github.com/wdas/ptex) |
| **Draco** | Mesh & point-cloud geometry compression (also used by glTF) | [`google/draco`](https://github.com/google/draco) |
| **cgltf** | Single-file C/C++ glTF 2.0 loader & writer | [`jkuhlmann/cgltf`](https://github.com/jkuhlmann/cgltf) |
| **assimp** | Open Asset Import Library — load/convert dozens of 3D formats | [`assimp/assimp`](https://github.com/assimp/assimp) |
| **meshoptimizer** | Mesh optimization: vertex cache, overdraw, LODs, compression | [`zeux/meshoptimizer`](https://github.com/zeux/meshoptimizer) |
| **MikkTSpace** | Reference tangent-space computation standard | [`mmikk/MikkTSpace`](https://github.com/mmikk/MikkTSpace) |

### Shading & look development
| Library | What it is | Upstream |
|---|---|---|
| **MaterialX** | Open standard for exchanging materials/look-dev across DCCs and renderers | [`AcademySoftwareFoundation/MaterialX`](https://github.com/AcademySoftwareFoundation/MaterialX) |
| **OpenShadingLanguage** (OSL) | Shading language and runtime for production rendering | [`AcademySoftwareFoundation/OpenShadingLanguage`](https://github.com/AcademySoftwareFoundation/OpenShadingLanguage) |
| **OpenPBR** | Open surface shading model spec (with MaterialX) | [`AcademySoftwareFoundation/OpenPBR`](https://github.com/AcademySoftwareFoundation/OpenPBR) |
| **OpenFX** | Image-effect plugin API (Nuke/Resolve/etc.) | [`AcademySoftwareFoundation/openfx`](https://github.com/AcademySoftwareFoundation/openfx) |

### Color
| Library | What it is | Upstream |
|---|---|---|
| **OpenColorIO** (OCIO) | Color-management pipeline for film/VFX — ACES, view transforms, LUTs | [`AcademySoftwareFoundation/OpenColorIO`](https://github.com/AcademySoftwareFoundation/OpenColorIO) |
| **aces-dev** | ACES reference transforms (CTL) — the color-science core | [`ampas/aces-dev`](https://github.com/ampas/aces-dev) |
| **aces-looks** | Look Modification Transforms (LMTs) for ACES 1 & 2 | [`priikone/aces-looks`](https://github.com/priikone/aces-looks) |
| **rawtoaces** | Convert camera RAW to ACES | [`AcademySoftwareFoundation/rawtoaces`](https://github.com/AcademySoftwareFoundation/rawtoaces) |

### Imaging & I/O
| Library | What it is | Upstream |
|---|---|---|
| **OpenImageIO** (OIIO) | Image I/O abstraction, texture system and CLI tools | [`AcademySoftwareFoundation/OpenImageIO`](https://github.com/AcademySoftwareFoundation/OpenImageIO) |
| **OpenEXR** | High-dynamic-range image format + the Imath math library | [`AcademySoftwareFoundation/openexr`](https://github.com/AcademySoftwareFoundation/openexr) |
| **OpenJPH** | Fast open implementation of High-Throughput JPEG 2000 (HTJ2K) | [`aous72/OpenJPH`](https://github.com/aous72/OpenJPH) |
| **LibRaw** | Decode camera RAW formats | [`LibRaw/LibRaw`](https://github.com/LibRaw/LibRaw) |
| **libjxl** | JPEG XL reference codec | [`libjxl/libjxl`](https://github.com/libjxl/libjxl) |
| **libheif** | HEIF / AVIF image container codec | [`strukturag/libheif`](https://github.com/strukturag/libheif) |
| **libde265** | Open H.265 / HEVC video decoder (used by libheif) | [`strukturag/libde265`](https://github.com/strukturag/libde265) |
| **dav1d** | Small, fast AV1 video decoder (VideoLAN) | [`videolan/dav1d`](https://github.com/videolan/dav1d) |
| **rav1e** | Fast and safe AV1 video encoder (Rust, Xiph/AOMedia) | [`xiph/rav1e`](https://github.com/xiph/rav1e) |
| **openh264** | Cisco's open H.264 codec (encoder/decoder) | [`cisco/openh264`](https://github.com/cisco/openh264) |

### Volumes
| Library | What it is | Upstream |
|---|---|---|
| **OpenVDB** | Sparse volumetric data structure & toolset for volumes/simulation | [`AcademySoftwareFoundation/openvdb`](https://github.com/AcademySoftwareFoundation/openvdb) |

### Rendering & denoising
| Library | What it is | Upstream |
|---|---|---|
| **Embree** | Intel high-performance CPU ray-tracing kernels | [`RenderKit/embree`](https://github.com/RenderKit/embree) |
| **OpenImageDenoise** (OIDN) | AI image denoiser for ray-traced renders | [`RenderKit/oidn`](https://github.com/RenderKit/oidn) |
| **filament** | Real-time physically-based renderer (reference quality) | [`google/filament`](https://github.com/google/filament) |
| **bgfx** | Cross-platform rendering abstraction library | [`bkaradzic/bgfx`](https://github.com/bkaradzic/bgfx) |

### GPU / graphics API
| Library | What it is | Upstream |
|---|---|---|
| **Vulkan-Headers** | Official Vulkan API headers | [`KhronosGroup/Vulkan-Headers`](https://github.com/KhronosGroup/Vulkan-Headers) |
| **VulkanMemoryAllocator** | GPU memory allocator for Vulkan (AMD) | [`GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator`](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator) |
| **SPIRV-Cross** | Reflect & cross-compile SPIR-V to GLSL/HLSL/MSL | [`KhronosGroup/SPIRV-Cross`](https://github.com/KhronosGroup/SPIRV-Cross) |
| **glslang** | Khronos reference GLSL/HLSL → SPIR-V compiler | [`KhronosGroup/glslang`](https://github.com/KhronosGroup/glslang) |
| **KTX-Software** | KTX2 / Basis Universal GPU-texture container tools | [`KhronosGroup/KTX-Software`](https://github.com/KhronosGroup/KTX-Software) |

### UI & widgets
| Library | What it is | Upstream |
|---|---|---|
| **Dear ImGui** | Immediate-mode GUI for tools and debug UIs | [`ocornut/imgui`](https://github.com/ocornut/imgui) |
| **ImGuizmo** | 3D transform gizmos for ImGui viewports | [`CedricGuillemet/ImGuizmo`](https://github.com/CedricGuillemet/ImGuizmo) |
| **imgui-node-editor** | Node-graph editor widget (Nuke/Houdini-style) | [`thedmd/imgui-node-editor`](https://github.com/thedmd/imgui-node-editor) |
| **ImPlot** | Plotting/graphing widgets for ImGui | [`epezent/implot`](https://github.com/epezent/implot) |
| **GLFW** | Windowing, input and OpenGL/Vulkan context | [`glfw/glfw`](https://github.com/glfw/glfw) |
| **SDL** | Cross-platform windowing, input, audio | [`libsdl-org/SDL`](https://github.com/libsdl-org/SDL) |

### Math foundation
| Library | What it is | Upstream |
|---|---|---|
| **Eigen** | Linear-algebra library (foundation for CV/graphics) | [`libeigen/eigen`](https://gitlab.com/libeigen/eigen) |
| **GLM** | GLSL-style math for graphics | [`g-truc/glm`](https://github.com/g-truc/glm) |

### Computer vision & photogrammetry
| Library | What it is | Upstream |
|---|---|---|
| **OpenCV** | The core computer-vision library | [`opencv/opencv`](https://github.com/opencv/opencv) |
| **opencv_contrib** | Extra/experimental OpenCV modules | [`opencv/opencv_contrib`](https://github.com/opencv/opencv_contrib) |
| **COLMAP** | Structure-from-Motion & Multi-View Stereo | [`colmap/colmap`](https://github.com/colmap/colmap) |
| **AliceVision** | Photogrammetry framework (engine behind Meshroom) | [`alicevision/AliceVision`](https://github.com/alicevision/AliceVision) |
| **openMVG** | Multiple-View Geometry / SfM library | [`openMVG/openMVG`](https://github.com/openMVG/openMVG) |
| **openMVS** | Multi-View Stereo reconstruction (mesh/texture) | [`cdcseacave/openMVS`](https://github.com/cdcseacave/openMVS) |
| **Ceres Solver** | Nonlinear least-squares / bundle adjustment | [`ceres-solver/ceres-solver`](https://github.com/ceres-solver/ceres-solver) |
| **AprilTag** | Fiducial marker detection for tracking/calibration | [`AprilRobotics/apriltag`](https://github.com/AprilRobotics/apriltag) |
| **gaussian-splatting** | 3D Gaussian Splatting reference implementation | [`graphdeco-inria/gaussian-splatting`](https://github.com/graphdeco-inria/gaussian-splatting) |
| **instant-ngp** | Instant Neural Graphics Primitives (NeRF) | [`NVlabs/instant-ngp`](https://github.com/NVlabs/instant-ngp) |

### Sensors / depth / point clouds
| Library | What it is | Upstream |
|---|---|---|
| **librealsense** | Intel RealSense depth-camera SDK | [`IntelRealSense/librealsense`](https://github.com/IntelRealSense/librealsense) |
| **PCL** | Point Cloud Library — LiDAR/depth processing | [`PointCloudLibrary/pcl`](https://github.com/PointCloudLibrary/pcl) |
| **GTSAM** | Factor-graph optimization for SLAM/odometry | [`borglab/gtsam`](https://github.com/borglab/gtsam) |

### Datasets
| Library | What it is | Upstream |
|---|---|---|
| **caldera** | Open photogrammetry / terrain reference dataset from *Call of Duty: Warzone* | [`Activision/caldera`](https://github.com/Activision/caldera) |
