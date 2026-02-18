---@meta
-- Auto-generated from FicsIt-Networks docs.

---@type fun(fn,...):Future
async = async

---@type fun(name:string):ItemType?
findItem = findItem

---@type fun(...)
print = print

---@type fun(seconds:number)
sleep = sleep

---@type ClassLib
classes = classes

---@type Future
eventTask = eventTask

---@type StructLib
structs = structs

---@type Future
timeoutTask = timeoutTask

---@class component
component = component or {}
--- Signature: component.findComponent((string query | xref:/reflection/classes/Class.adoc[Class] type)...)
---@return string[]
function component.findComponent(...) end
--- Signature: component.proxy((id: string | ids: string[])...)
---@return Object|Object[]
function component.proxy(...) end

---@class computer
computer = computer or {}
---@type FINMediaSubsystem
computer.media = computer.media
--- Signature: computer.attentionPing(position: xref:/reflection/structs/Vector.adoc[Vector], username: string?)
function computer.attentionPing(...) end
--- Signature: computer.beep(pitch: number)
function computer.beep(...) end
--- Signature: computer.demote()
function computer.demote(...) end
--- Signature: computer.getEEPROM()
---@return string
function computer.getEEPROM(...) end
--- Signature: computer.getInstance()
---@return ComputerCase
function computer.getInstance(...) end
--- Signature: computer.getMemory() -> (usage: integer, capacity: integer)
function computer.getMemory(...) end
--- Signature: computer.getPCIDevices(type: Class<T>?)
---@generic T:Object
---@param type Class<T>?
---@return T[]
function computer.getPCIDevices(type) end
--- Signature: computer.isPromoted()
---@return boolean
function computer.isPromoted(...) end
--- Signature: computer.log(verbosity: integer, message: string)
function computer.log(...) end
--- Signature: computer.magicTime() -> (integer, string, string)
function computer.magicTime(...) end
--- Signature: computer.millis()
---@return integer
function computer.millis(...) end
--- Signature: computer.panic(error: string)
function computer.panic(...) end
--- Signature: computer.promote()
function computer.promote(...) end
--- Signature: computer.reset()
function computer.reset(...) end
--- Signature: computer.setEEPROM(code: string)
function computer.setEEPROM(...) end
--- Signature: computer.skip()
function computer.skip(...) end
--- Signature: computer.stop()
function computer.stop(...) end
--- Signature: computer.textNotification(text: string, username: string?)
function computer.textNotification(...) end
--- Signature: computer.time()
---@return number
function computer.time(...) end

---@class debug
debug = debug or {}
--- Signature: debug.getinfo()
function debug.getinfo(...) end
--- Signature: debug.log(string...)
function debug.log(...) end
--- Signature: debug.traceback()
function debug.traceback(...) end

---@class event
event = event or {}
--- Signature: event.clear()
function event.clear(...) end
--- Signature: event.filter(params: { event?: string|string[], sender?: xref:/reflection/classes/Object.adoc[Object]|xref:/reflection/classes/Object.adoc[Object][], values?: table<string,any> })
---@return EventFilter
function event.filter(...) end
--- Signature: event.ignore(...: xref:/reflection/classes/Object.adoc[Object])
function event.ignore(...) end
--- Signature: event.ignoreAll()
function event.ignoreAll(...) end
--- Signature: event.listen(...: xref:/reflection/classes/Object.adoc[Object])
function event.listen(...) end
--- Signature: event.listening()
---@return Object[]
function event.listening(...) end
--- Signature: event.pull(timeout: number?) -> (string?, xref:/reflection/classes/Object.adoc[Object], ...)
function event.pull(...) end
--- Signature: event.queue(filter: xref:/reflection/structs/EventFilter.adoc[EventFilter])
---@return EventQueue
function event.queue(...) end
--- Signature: event.registerListener(filter: xref:/reflection/structs/EventFilter.adoc[EventFilter], cb: fun(event, sender, ...))
---@return integer
function event.registerListener(...) end
--- Signature: event.waitFor(filter: xref:/reflection/structs/EventFilter.adoc[EventFilter])
---@return Future
function event.waitFor(...) end

---@class filesystem
filesystem = filesystem or {}
--- Signature: filesystem.analyzePath(...: string)
---@return any
function filesystem.analyzePath(...) end
--- Signature: filesystem.children(path: string)
---@return string[]
function filesystem.children(...) end
--- Signature: filesystem.createDir(path: string, recursive: bool)
---@return boolean
function filesystem.createDir(...) end
--- Signature: filesystem.doFile(path: string)
---@return any
function filesystem.doFile(...) end
--- Signature: filesystem.exists(path: string)
---@return boolean
function filesystem.exists(...) end
--- Signature: filesystem.initFileSystem(path: string)
---@return boolean
function filesystem.initFileSystem(...) end
--- Signature: filesystem.isDir(path: string)
---@return boolean
function filesystem.isDir(...) end
--- Signature: filesystem.isFile(path: string)
---@return boolean
function filesystem.isFile(...) end
--- Signature: filesystem.isNode(...: string)
---@return any
function filesystem.isNode(...) end
--- Signature: filesystem.loadFile(path: string)
---@return fun():any
function filesystem.loadFile(...) end
--- Signature: filesystem.makeFileSystem(type: string, name: string)
---@return boolean
function filesystem.makeFileSystem(...) end
--- Signature: filesystem.meta(...: string)
---@return any
function filesystem.meta(...) end
--- Signature: filesystem.mount(device: string, mountPoint: string)
---@return boolean
function filesystem.mount(...) end
--- Signature: filesystem.move(from: string, to: string)
---@return boolean
function filesystem.move(...) end
--- Signature: filesystem.open(path: string, mode: string)
---@return File
function filesystem.open(...) end
--- Signature: filesystem.path([conversion: integer,] ...: string)
---@return string
function filesystem.path(...) end
--- Signature: filesystem.remove(path: string, recursive: bool)
---@return boolean
function filesystem.remove(...) end
--- Signature: filesystem.removeFileSystem(name: string)
---@return boolean
function filesystem.removeFileSystem(...) end
--- Signature: filesystem.rename(path: string, name: string)
---@return boolean
function filesystem.rename(...) end
--- Signature: filesystem.unmount(mountPoint: string)
---@return boolean
function filesystem.unmount(...) end

---@class function_
function_ = function_ or {}
---@type string
function_.description = function_.description
---@type string
function_.displayName = function_.displayName
---@type string
function_.name = function_.name
---@type string
function_.quickRef = function_.quickRef

---@class future
future = future or {}
--- Signature: future.addTask(xref:/reflection/structs/Future.adoc[Future]...)
function future.addTask(...) end
--- Signature: future.any(xref:/reflection/structs/Future.adoc[Future]...)
---@return Future
function future.any(...) end
--- Signature: future.async(thread)
---@return Future
function future.async(...) end
--- Signature: future.join(xref:/reflection/structs/Future.adoc[Future]...)
---@return Future
function future.join(...) end
--- Signature: future.loop()
function future.loop(...) end
--- Signature: future.run()
function future.run(...) end
--- Signature: future.sleep(seconds: number)
---@return Future
function future.sleep(...) end

---@class microcontroller
microcontroller = microcontroller or {}
---@type Object
microcontroller.component = microcontroller.component
---@type Microcontroller
microcontroller.self = microcontroller.self
--- Signature: microcontroller.broadcast(integer, ...)
function microcontroller.broadcast(...) end
--- Signature: microcontroller.close(integer...)
function microcontroller.close(...) end
--- Signature: microcontroller.closeAll()
function microcontroller.closeAll(...) end
--- Signature: microcontroller.getStorage(string)
function microcontroller.getStorage(...) end
--- Signature: microcontroller.open(integer...)
function microcontroller.open(...) end
--- Signature: microcontroller.send()
function microcontroller.send(...) end
--- Signature: microcontroller.setStorage(string)
function microcontroller.setStorage(...) end




