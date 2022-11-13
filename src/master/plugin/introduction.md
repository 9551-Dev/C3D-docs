---
module: [kind=plugin] introduction
---
a guide to show how to setup a basic plugin

# Creating your own module is quite simple really !. here we will make an empty module

:::tip
When debugging plugins you can enable the `debug` mode in C3D to have libC3D/c3d.log contain ton of details about plugin loading !
check @{enabling_debug|how to enable debug mode}
:::

First you want to define your init function into which the plugin registration will go
```lua
function c3d.init()
end
```
after getting that you need to create the actual plugin object. the plugin load function provides you with a `plug/plugin` variable you can use to create a plugin with a given name
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")
    end)
end
```
while this will create your plugin C3D wont actually know it exists since it has not been registered. you can easily do that using the register method
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        very_awesome_plugin:register()
    end)
end
```
now our plugin will be registered but wont show many signs of life. To give it atleast some we can have it output into log when it actually gets registered!
to archive this we can use the plugin.on_init_finish callback which gets ran once all plugins have been registered. to find more check @{plugin_callbacks|plugin callbacks}
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
# everything after this will be more complex and less commented. you can find more info in the other tabs of the plugin tab
## adding a module
now i will add my own module to be used by this plugin.
this is done by grabbing the module registry and making new entry in within the register_modules plugin callback
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_modules()
            local module_registry = c3d.registry.get_module_registry()
            local awesome_module  = module_registry:new_entry("awesome") -- makes the module be called "awesome"

        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
All thats left for a module is to add some values into it. like functions and such. so why not add a function that just kills C3D by erroring ! :P
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_modules()
            local module_registry = c3d.registry.get_module_registry()
            local awesome_module  = module_registry:new_entry("awesome") -- makes the module be called "awesome"

            awesome_module:set_entry(c3d.registry.entry("die"),function()
                error("oops.")
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
Now as mentioned you can also use plugins to modify existing entries. As an example of this lets have the c3d.vector.new function just error
this will be done by grabbing the registry ID from a environment variable and then using the :get function of the registry
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_modules()
            local module_registry = c3d.registry.get_module_registry()
            local vector_module   = module_registry:get(MODULE.vector) -- grabs the vector module from the registry

            vector_module:set_entry(c3d.registry.entry("new"),function()
                error("oops. no way you making a vector")
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
# Now lets go back a bit and lets see about threads.
Threads can be used to run some update code along with C3D in the background. for example we can have a plugin that will log the FPS every 5 seconds
Lets make an example of that here !. this will be very similiar to modules. but actually simpler !
we again use a callback for thread registration and we make a new entry in a registry.
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_threads()
            local thread_registry = c3d.registry.get_thread_registry()

            thread_registry:set_entry(c3d.registry_entry("fps-logger-thread"),function()
                while true do
                    c3d.log.add(c3d.timer.getFPS())
                    c3d.log.dump()
                    sleep(5)
                end
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```

# objects
now we shall step back again before we did modules. and we should try making our own objects and modifying existing ones.
objects are probably the most complex part of C3D plugin making. as you can even do things like add support for new file formats into existing objects.

lets start of by clarifying what an object is. an object is some kind of structure with methods and other values attached to it. along with tools to work with those values.

Any C3D object needs to have a constructor defined. and thats really it. With registies it is the same as with modules.
So lets make an object which is just well.. a table. with nothing special.
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_objects()
            local object_registry = c3d.registry.get_object_registry()
            local awesome_table   = object_registry:new_entry("awesome_table") -- makes the module be called "awesome"

            awesome_table:constructor(function()
                return {}
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
the final goal of this is going to make an object which can be made from a file and will automatically parse json and CC tables from files. also provide get and and set functions cause why not.
This will include making a module for creating new objects. As otherwise the object cant be interacted with by the user

So lets start that off by adding a module for creating new objects of this type.
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_objects()
            local object_registry = c3d.registry.get_object_registry()
            local awesome_table   = object_registry:new_entry("awesome_table") -- makes the module be called "awesome"

            awesome_table:constructor(function()
                return {}
            end)
        end

        function very_awesome_plugin.register_modules()
            local module_registry      = c3d.registry.get_module_registry()
            local awesome_table_module = module_registry:new_entry("awesome_table")

            local data_bus = very_awesome_plugin.get_c3d_bus()

            awesome_table_module:set_entry(c3d.registry.entry("new"),function(...)
                data_bus.object.awesome_table.new(...)
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
now that we got our module we can finally get to how file handling works. you can define a decoder for an object using :define_decoder and then
use :read_file on the object with a given path, which will automatically pick a decoder using the extension in the path given. run the function with the
path modifying to fit the projects path and then return what the decoder returns.
## note that the data given to :define_decoder needs to be a table with a `read` function in it.
the goal here will be to provide either a path to .tbl or .json but have the object always be a Lua table when made using the module with a given path.
```lua
function c3d.init()
    local function json_decode(path)
        local file = fs.open(path,"w")
        local data = file.readAll()
        file.close()
        return textutils.unserializeJSON(data)
    end
    local function tbl_decode(path)
        local file = fs.open(path,"w")
        local data = file.readAll()
        file.close()
        return textutils.unserialize(data)
    end

    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_objects()
            local object_registry = c3d.registry.get_object_registry()
            local awesome_table   = object_registry:new_entry("awesome_table") -- makes the module be called "awesome"¨

            awesome_table:define_decoder(".json",json_decode)
            awesome_table:define_decoder(".tbl", tbl_decode)

            awesome_table:constructor(function(path)
                return awesome_table:read_file(path)
            end)
        end

        function very_awesome_plugin.register_modules()
            local module_registry      = c3d.registry.get_module_registry()
            local awesome_table_module = module_registry:new_entry("awesome_table")

            local data_bus = very_awesome_plugin.get_c3d_bus()

            awesome_table_module:set_entry(c3d.registry.entry("new"),function(...)
                data_bus.object.awesome_table.new(...)
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
Thats almost it! the last thing worthy of noting is how to modify existing objects. here we got an awesome_table object which we made in the registry.
But lets say we want to add a new method to the vector object. Like add a function which logs the vector. We can do that as easily as with modules!
```lua
function c3d.init()
    c3d.plugin.load(function()
        local very_awesome_plugin = plug.new("9551Dev:awesome-plugin")

        function very_awesome_plugin.register_objects()
            local object_registry = c3d.registry.get_object_registry()
            local vector_object   = object_registry:get(OBJECT.vector) -- grabs the vector object from the registry

            vector_object:set_entry(c3d.registry.entry("log"),function(this)
                c3d.log.add("Vector: "..this)
                c3d.log.dump()
            end)
        end

        function very_awesome_plugin.on_init_finish()
            c3d.log.add("Hello from awesome plugin !")
            c3d.log.dump()
        end

        very_awesome_plugin:register()
    end)
end
```
Now you may not realize how powerful this is. but this gives you access to the whole vector object. you can modify the constructor
or even define new decoders !

# congrats you made it to the end ! hopefully you should now have a good idea of what C3D plugins are capable off :P
quick note: this api took really long to pull off lmao