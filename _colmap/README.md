# `_colmap` — colmap-rs parity references

Mirror of the `_ref/` git submodules from
[`colmap-rs`](https://github.com/ssoj13/colmap-rs) (same names, URLs, pinned commits).

| Path | URL | Commit |
|---|---|---|
| `colmap` | `git@github.com:colmap/colmap.git` | `97bcd8f83efc0078ebe0667da7885a1e7d12df04` |
| `PoseLib` | `git@github.com:PoseLib/PoseLib.git` | `fa7280fee27f97aff31ae7f98bab7f583fac7d08` |
| `ceres-solver` | `git@github.com:ceres-solver/ceres-solver.git` | `bac1127f9ef672405bd0d2d9c84e809ae89bd239` |
| `SiftGPU` | `git@github.com:pitzer/SiftGPU.git` | `90e9f4c1fcc8ebcc592b3c5b43d60bd4b4ba3560` |
| `vlfeat` | `git@github.com:vlfeat/vlfeat.git` | `1b9075fc42fe54b42f0e937f8b9a230d8e2c7701` |
| `cgal` | `git@github.com:CGAL/cgal.git` | `6d7e0ed06ac794f7b6cd844a56c17becd7d6fc3e` |
| `ply2splat` | `git@github.com:bastikohn/ply2splat.git` | `1d75b7470121bc95d27fa9f531cd1e2ceb32dbbf` |
| `wgpu-3dgs-viewer` | `git@github.com:ssoj13/wgpu-3dgs-viewer.git` | `0694d1fd5e51d90b92ac10412e1211664a8ebac2` |
| `wgpu-3dgs-editor` | `git@github.com:ssoj13/wgpu-3dgs-editor.git` | `c1ca91491457644326539dfad08b7bf88c0e27d0` |
| `wgpu-3dgs-core` | `git@github.com:ssoj13/wgpu-3dgs-core.git` | `06e863859adac08c8a7929135c9bc0e959f72590` |
| `web-splat` | `git@github.com:ssoj13/web-splat.git` | `f1223191ab826867648635bd3ab49f263776bfaa` |
| `bevy_gaussian_splatting` | `git@github.com:mosure/bevy_gaussian_splatting.git` | `d6a443289bc89e978fbbec7a365dc49294c40444` |

```bash
git submodule update --init --recursive -- _colmap
```

Note: top-level `colmap` / `ceres-solver` in this repo are separate submodules and may
be pinned to different commits than the copies under `_colmap/`.
