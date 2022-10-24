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