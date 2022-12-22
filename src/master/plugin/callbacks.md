---
module: [kind=plugin] callbacks
---
# callbacks
# A list of all the callbacks provided by the plugin api for you to use to integrate your plugin deeper into C3D

| Name | Description |
| :- | :-: |
| register_objects | called in the moment when all of the objects should have already been added to the registries |
| register_modules | called in the moment when all of the modules should have already been added to the registries |
| register_threads | called in the moment when all of the threads should have already been added to the registries |
| frame_finished | Gets called when C3D finishes drawing and proccesing a frame |
| on_init_finish | Gets called as the last step of plugin loading in C3D. Allows you to do stuff to inicialize your plugin before C3D starts |
| post_display | Gets called right after C3D draws a frame to the screen, including c3d.postrender callback |
| post_frame | Gets called right after C3D finishes drawing a frame to the screen |
| pre_frame | Gets called right before C3D starts making a frame |

##
#
# examples