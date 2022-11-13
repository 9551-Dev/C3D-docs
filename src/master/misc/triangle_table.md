---
module: [kind=misc] triangle_table
---
## This lists the fields that the internals of the engine use for storing triangles. You can modify and read these from within shaders. And just read from elsewhere using things like the @{c3d.interact|interaction module}

| name | type | description |
| :- | :- | :- |
| [1] | vertex | The first vertex of the triangle. |
| [2] | vertex | The second vertex of the triangle. |
| [3] | vertex | The third vertex of the triangle. |
| "index" | number | The index of the triangle. defined in the mesh.|
| "fg" | function | The fragment shader used for this triangle. By default inherited from the parent object. |
| "object" | scene_object | Pointer to the scene object that this triangle belongs to. |
| "texture" | texture | Pointer to the texture that this triangle will use when being rasterized. |
| "pixel_size" | number | The pixel size to render this triangle width |
| "z_layer" | number | Allows you to force a depth value for this triangle |
| "orig1" | vertex | The original vertex 1 |
| "orig2" | vertex | The original vertex 2 |
| "orig3" | vertex | The original vertex 3 |