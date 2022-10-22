; -*- mode: Lisp;-*-

(sources
  /src/master/modules/
  /src/master/callbacks/
  /src/master/event-callbacks/
  /src/master/objects/
  /src/master/examples/
  /src/master/misc/
)


(doc
  (destination docs/)
  (index doc/index.md)
	
  (site
    (title "C3D Docs")
    (logo src/master/pack.png)
    (url https://c3d.madefor.cc/)
    (source-link https://github.com/9551-Dev/C3D/blob/${commit}/${path}#L${line})

    (styles src/web/styles.css)
    ;; (scripts build/rollup/index.js)
    (head doc/head.html)
  )

  (module-kinds
    (modules Modules)
    (callbacks Callbacks)
    (event-callbacks Event-Callbacks)
    (objects Object)
    (examples Examples)
    (misc Misc)
  )

  (library-path
    /src/master/modules/
    /src/master/callbacks/
    /src/master/event-callbacks/
    /src/master/objects/
    /src/master/examples/
    /src/master/misc/
  )
)

(at /
  (linters
    -syntax:string-index
    -format:separator-space
    -format:bracket-space
  )
  (lint
    (bracket-spaces
      (call no-space)
      (function-args no-space)
      (parens no-space)
      (table space)
      (index no-space)
    )

    (globals
      :max
      _CC_DEFAULT_SETTINGS
      _CC_DISABLE_LUA51_FEATURES
      sleep 
      write 
      printError 
      read 
      rs 
      colors
      colours
      commands
      disk
      fs
      gps
      help
      http
      io
      keys
      multishell
      os 
      paintutils
      parallel
      peripheral
      pocket
      rednet
      redstone
      settings 
      shell
      term
      textutils
      turtle
      vector
      window
      _HOST
    )
  )
)
(at
  ;; Setup override for wip/old files
  (
    
  )
  (
    linters -all
  )
)
