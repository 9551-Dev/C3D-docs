---
module: [kind=misc] geometry_table_format
---

# this is outdated. for constructing meshes reffer to the mesh module
@{c3d.mesh}

## the geometry table format contains of 3 main values. every geometry has a `geometry` table which defines its mesh
## these values contained within the geometry table are vertices,tris,uvs

| index | Description |
| :- | :-: |
| vertices | a list of vertices in a 1D table. each vertice having 3 coordinates |
| tris | a list of triangle indices defining how to construct the triangles by connecting the vertices |
| uvs | the UV coordinates for each vertex of the model |

##
#
# showcase of a simple 3D triangle
```lua
local scale = 0.5
local scene_object = c3d.scene.add_geometry{
    geometry = {
        vertices={
            -scale,scale,0,-- top left point of the triangle       (vertex 1)
            scale,scale,0, -- top right point of the triangle      (vertex 2)
            0,-scale,0     -- bottom middle point of the triangle  (vertex 3)
        },
        tris={
            3,2,1 -- connects the 3 vertices into a triangle of the 3D points in the correct winding order to not experience face culling issue
        },
        uv = {
            0,0,  -- maps the top left vertex to the top left of the image
            1,0,  -- maps the top right vertex to the top right of the image
            0.5,1 -- maps the bottom middle point of the triangle to the middle and bottom of the image
        }
    }
}
scene_object.color = colors.red
```
## this will result in a red triangle displayed on the screen