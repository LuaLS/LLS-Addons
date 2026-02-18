---@meta
-- Auto-generated reflection class and struct stubs for FicsIt-Networks.

---@generic T
---@class Class<T>: ReflectionBase
local __ClassGeneric = {}

---@generic T
---@class StructType<T>: ReflectionBase
local __StructTypeGeneric = {}

-- Compatibility shims for engine/base classes referenced by docs but not
-- explicitly present in reflection class pages.
---@generic T
---@class Array<T>: { [integer]: T }
local Array = {}

---@class FINModuleBase
local FINModuleBase = {}

---@class FINComputerModule
local FINComputerModule = {}

---@class FINSizeablePanel
local FINSizeablePanel = {}

---@class FGBuildableConveyorAttachment
local FGBuildableConveyorAttachment = {}

---@class FGBuildableStorage
local FGBuildableStorage = {}

---@class FGBuildableWall
local FGBuildableWall = {}

---@class FGBuildableControlPanelHost
local FGBuildableControlPanelHost = {}

---@class FGBuildablePipelineAttachment
local FGBuildablePipelineAttachment = {}

---@class SignPrefab
local SignPrefab = {}
---@class Actor: Object
---@field location Vector
---@field rotation Rotator
---@field scale Vector
local Actor = {}
--- Signature: Actor:getComponents(`componentType` : Class<xref:/reflection/classes/ActorComponent.adoc[ActorComponent]>)
---@return ActorComponent[]
function Actor:getComponents(...) end
--- Signature: Actor:getFactoryConnectors()
---@return FactoryConnection[]
function Actor:getFactoryConnectors(...) end
--- Signature: Actor:getInventories()
---@return Inventory[]
function Actor:getInventories(...) end
--- Signature: Actor:getNetworkConnectors()
---@return ActorComponent[]
function Actor:getNetworkConnectors(...) end
--- Signature: Actor:getPipeConnectors()
---@return PipeConnectionBase[]
function Actor:getPipeConnectors(...) end
--- Signature: Actor:getPowerConnectors()
---@return PowerConnection[]
function Actor:getPowerConnectors(...) end

---@class ActorComponent: Object
---@field owner Actor
local ActorComponent = {}

---@class ArrayProperty: Property
local ArrayProperty = {}
--- Signature: ArrayProperty:getInner()
---@return Property
function ArrayProperty:getInner(...) end

---@class BasicSubplate_2x2: FINModuleBase
local BasicSubplate_2x2 = {}
--- Signature: BasicSubplate_2x2:getModules()
---@return Object[]
function BasicSubplate_2x2:getModules(...) end
--- Signature: BasicSubplate_2x2:getSubModule()
---@return Actor
function BasicSubplate_2x2:getSubModule(...) end
--- Signature: BasicSubplate_2x2:getModule(`X` : Int, `Y` : Int)
---@return Actor
function BasicSubplate_2x2:getModule(...) end

---@class BigGaugeModule: FINModuleBase
---@field limit number
---@field percent number
local BigGaugeModule = {}
--- Signature: BigGaugeModule:setBackgroundColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function BigGaugeModule:setBackgroundColor(...) end
--- Signature: BigGaugeModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function BigGaugeModule:setColor(...) end

---@class Build_Speakers_C: SpeakerPole
local Build_Speakers_C = {}
--- Signature: Build_Speakers_C:getRange()
---@return number
function Build_Speakers_C:getRange(...) end
--- Signature: Build_Speakers_C:getVolume()
---@return number
function Build_Speakers_C:getVolume(...) end
--- Signature: Build_Speakers_C:setRange(`Range` : Float)
function Build_Speakers_C:setRange(...) end
--- Signature: Build_Speakers_C:setVolume(`Volume` : Float)
function Build_Speakers_C:setVolume(...) end

---@class Buildable: Actor
---@field numFactoryConnections integer
---@field numFactoryOutputConnections integer
---@field numPowerConnections integer
local Buildable = {}

---@class BuzzerModule: FINModuleBase
---@field attackCurve number
---@field attackTime number
---@field decayCurve number
---@field decayTime number
---@field frequency number
---@field isPlaying boolean
---@field volume number
local BuzzerModule = {}
--- Signature: BuzzerModule:beep()
function BuzzerModule:beep(...) end
--- Signature: BuzzerModule:stop()
function BuzzerModule:stop(...) end

---@class CircuitBridge: Buildable
---@field isBridgeActive boolean
---@field isBridgeConnected boolean
local CircuitBridge = {}

---@class CircuitSwitch: CircuitBridge
---@field buildingTag string
---@field hasBuildingTag boolean
---@field isSwitchOn boolean
local CircuitSwitch = {}
--- Signature: CircuitSwitch:setIsSwitchOn(`state` : Bool)
function CircuitSwitch:setIsSwitchOn(...) end

---@class CircuitSwitchPriority: CircuitSwitch
---@field priority integer
local CircuitSwitchPriority = {}
--- Signature: CircuitSwitchPriority:setPrioritySwitchGroupOn(`state` : Bool)
function CircuitSwitchPriority:setPrioritySwitchGroupOn(...) end

---@generic T
---@class Class<T>: ReflectionBase
local Class = {}
--- Signature: Class:getAllSignals()
---@return Signal[]
function Class:getAllSignals(...) end
--- Signature: Class:getSignals()
---@return Signal[]
function Class:getSignals(...) end

---@class ClassLib
---@field Actor Class<Actor>
---@field ActorComponent Class<ActorComponent>
---@field ArrayProperty Class<ArrayProperty>
---@field BasicSubplate_2x2 Class<BasicSubplate_2x2>
---@field BigGaugeModule Class<BigGaugeModule>
---@field Build_Speakers_C Class<Build_Speakers_C>
---@field Buildable Class<Buildable>
---@field BuzzerModule Class<BuzzerModule>
---@field CircuitBridge Class<CircuitBridge>
---@field CircuitSwitch Class<CircuitSwitch>
---@field CircuitSwitchPriority Class<CircuitSwitchPriority>
---@field Class Class<Class>
---@field ClassProperty Class<ClassProperty>
---@field CodeableMerger Class<CodeableMerger>
---@field CodeableSplitter Class<CodeableSplitter>
---@field ComputerCase Class<ComputerCase>
---@field DimensionalDepot Class<DimensionalDepot>
---@field DimensionalDepotUploader Class<DimensionalDepotUploader>
---@field DockingStation Class<DockingStation>
---@field Door Class<Door>
---@field EncoderModule Class<EncoderModule>
---@field FINAdvancedNetworkConnectionComponent Class<FINAdvancedNetworkConnectionComponent>
---@field FINComputerGPU Class<FINComputerGPU>
---@field FINComputerGPUT2 Class<FINComputerGPUT2>
---@field FINInternetCard Class<FINInternetCard>
---@field FINMediaSubsystem Class<FINMediaSubsystem>
---@field FINModularIndicatorPoleModule Class<FINModularIndicatorPoleModule>
---@field Factory Class<Factory>
---@field FactoryConnection Class<FactoryConnection>
---@field Function Class<Function>
---@field GPUT1 Class<GPUT1>
---@field GaugeModule Class<GaugeModule>
---@field IndicatorModule Class<IndicatorModule>
---@field IndicatorPole Class<IndicatorPole>
---@field Inventory Class<Inventory>
---@field ItemCategory Class<ItemCategory>
---@field ItemType Class<ItemType>
---@field LargeControlPanel Class<LargeControlPanel>
---@field LargeMicroDisplayModule Class<LargeMicroDisplayModule>
---@field LargeVerticalControlPanel Class<LargeVerticalControlPanel>
---@field LightSource Class<LightSource>
---@field LightsControlPanel Class<LightsControlPanel>
---@field Manufacturer Class<Manufacturer>
---@field MicroDisplayModule Class<MicroDisplayModule>
---@field Microcontroller Class<Microcontroller>
---@field ModularIndicatorPole Class<ModularIndicatorPole>
---@field ModularPoleModule_Buzzer Class<ModularPoleModule_Buzzer>
---@field ModularPoleModule_Indicator Class<ModularPoleModule_Indicator>
---@field ModuleButton Class<ModuleButton>
---@field ModulePanel Class<ModulePanel>
---@field ModulePotentiometer Class<ModulePotentiometer>
---@field ModuleStopButton Class<ModuleStopButton>
---@field ModuleSwitch Class<ModuleSwitch>
---@field ModuleTextDisplay Class<ModuleTextDisplay>
---@field NetworkCard Class<NetworkCard>
---@field NetworkRouter Class<NetworkRouter>
---@field Object Class<Object>
---@field ObjectProperty Class<ObjectProperty>
---@field PipeConnection Class<PipeConnection>
---@field PipeConnectionBase Class<PipeConnectionBase>
---@field PipeHyperStart Class<PipeHyperStart>
---@field PipeReservoir Class<PipeReservoir>
---@field PipelinePump Class<PipelinePump>
---@field PotWDisplayModule Class<PotWDisplayModule>
---@field PotentiometerModule Class<PotentiometerModule>
---@field PowerCircuit Class<PowerCircuit>
---@field PowerConnection Class<PowerConnection>
---@field PowerInfo Class<PowerInfo>
---@field PowerStorage Class<PowerStorage>
---@field Property Class<Property>
---@field PushbuttonModule Class<PushbuttonModule>
---@field RailroadSignal Class<RailroadSignal>
---@field RailroadStation Class<RailroadStation>
---@field RailroadSwitchControl Class<RailroadSwitchControl>
---@field RailroadTrack Class<RailroadTrack>
---@field RailroadTrackConnection Class<RailroadTrackConnection>
---@field RailroadVehicle Class<RailroadVehicle>
---@field RailroadVehicleMovement Class<RailroadVehicleMovement>
---@field Recipe Class<Recipe>
---@field ReflectionBase Class<ReflectionBase>
---@field ResourceSink Class<ResourceSink>
---@field Screen Class<Screen>
---@field SectionedPanelBasePanelA Class<SectionedPanelBasePanelA>
---@field SectionedPanelRearPanelA Class<SectionedPanelRearPanelA>
---@field SignBase Class<SignBase>
---@field SignType Class<SignType>
---@field Signal Class<Signal>
---@field SizeableModulePanel Class<SizeableModulePanel>
---@field SpeakerPole Class<SpeakerPole>
---@field SquareMicroDisplayModule Class<SquareMicroDisplayModule>
---@field Struct Class<Struct>
---@field StructProperty Class<StructProperty>
---@field SwitchModule2Position Class<SwitchModule2Position>
---@field SwitchModule3Position Class<SwitchModule3Position>
---@field TargetList Class<TargetList>
---@field TimeTable Class<TimeTable>
---@field TraceProperty Class<TraceProperty>
---@field Train Class<Train>
---@field TrainPlatform Class<TrainPlatform>
---@field TrainPlatformCargo Class<TrainPlatformCargo>
---@field TrainPlatformConnection Class<TrainPlatformConnection>
---@field Vehicle Class<Vehicle>
---@field VehicleScanner Class<VehicleScanner>
---@field WheeledVehicle Class<WheeledVehicle>
---@field WidgetSign Class<WidgetSign>
local ClassLib = {}

---@class ClassProperty: Property
local ClassProperty = {}
--- Signature: ClassProperty:getSubclass()
---@return Class
function ClassProperty:getSubclass(...) end

---@class CodeableMerger: FGBuildableConveyorAttachment
---@field canOutput boolean
local CodeableMerger = {}
--- Signature: CodeableMerger:getInput(`input` : Int)
---@return Item
function CodeableMerger:getInput(...) end
--- Signature: CodeableMerger:transferItem(`input` : Int)
---@return boolean
function CodeableMerger:transferItem(...) end

---@class CodeableSplitter: FGBuildableConveyorAttachment
local CodeableSplitter = {}
--- Signature: CodeableSplitter:canOutput(`output` : Int)
---@return boolean
function CodeableSplitter:canOutput(...) end
--- Signature: CodeableSplitter:getConnectorByIndex(`outputIndex` : Int)
---@return FactoryConnection
function CodeableSplitter:getConnectorByIndex(...) end
--- Signature: CodeableSplitter:getInput()
---@return Item
function CodeableSplitter:getInput(...) end
--- Signature: CodeableSplitter:transferItem(`output` : Int)
---@return boolean
function CodeableSplitter:transferItem(...) end

---@class Color
---@field a number
---@field b number
---@field g number
---@field r number
local Color = {}
--- Signature: Color:FIR_Operator_Mul_1(`factor` : Float)
---@return Vector
function Color:FIR_Operator_Mul_1(...) end
--- Signature: Color:FIR_Operator_Div_1(`factor` : Float)
---@return Vector
function Color:FIR_Operator_Div_1(...) end
--- Signature: Color:FIR_Operator_Add(`other` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
---@return Color
function Color:FIR_Operator_Add(...) end
--- Signature: Color:FIR_Operator_Neg_1()
---@return Color
function Color:FIR_Operator_Neg_1(...) end
--- Signature: Color:FIR_Operator_Sub(`other` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
---@return Color
function Color:FIR_Operator_Sub(...) end

---@class ComputerCase: Buildable
local ComputerCase = {}
--- Signature: ComputerCase:getLog(`pageSize` : Int, `page` : Int) -> (`log` : Array<Struct<xref:/reflection/structs/LogEntry.adoc[LogEntry]>>, `logSize` : Int)
function ComputerCase:getLog(...) end
--- Signature: ComputerCase:getState()
---@return integer
function ComputerCase:getState(...) end
--- Signature: ComputerCase:startComputer()
function ComputerCase:startComputer(...) end
--- Signature: ComputerCase:stopComputer()
function ComputerCase:stopComputer(...) end

---@class DimensionalDepot: Actor
---@field centralStorageItemStackLimit integer
---@field centralStorageTimeToUpload number
local DimensionalDepot = {}
--- Signature: DimensionalDepot:canUploadItemsToCentralStorage(`itemType` : Class<xref:/reflection/classes/ItemType.adoc[ItemType]>)
---@return boolean
function DimensionalDepot:canUploadItemsToCentralStorage(...) end
--- Signature: DimensionalDepot:getCentralStorageItemLimit(`itemType` : Class<xref:/reflection/classes/ItemType.adoc[ItemType]>)
---@return integer
function DimensionalDepot:getCentralStorageItemLimit(...) end
--- Signature: DimensionalDepot:getItemCountFromCentralStorage(`itemType` : Class<xref:/reflection/classes/ItemType.adoc[ItemType]>)
---@return integer
function DimensionalDepot:getItemCountFromCentralStorage(...) end
--- Signature: DimensionalDepot:getAllItemsFromCentralStorage()
---@return ItemAmount[]
function DimensionalDepot:getAllItemsFromCentralStorage(...) end

---@class DimensionalDepotUploader: FGBuildableStorage
---@field centralStorage DimensionalDepot
---@field centralStorageUploadProgress number
---@field isUploadInventoryEmpty boolean
---@field isUploadingToCentralStorage boolean
local DimensionalDepotUploader = {}

---@class DockingStation: Factory
---@field isLoadMode boolean
---@field isLoadUnloading boolean
local DockingStation = {}
--- Signature: DockingStation:getDocked()
---@return Actor
function DockingStation:getDocked(...) end
--- Signature: DockingStation:getFuelInv()
---@return Inventory
function DockingStation:getFuelInv(...) end
--- Signature: DockingStation:getInv()
---@return Inventory
function DockingStation:getInv(...) end
--- Signature: DockingStation:undock()
function DockingStation:undock(...) end

---@class Door: FGBuildableWall
local Door = {}
--- Signature: Door:getConfiguration()
---@return integer
function Door:getConfiguration(...) end
--- Signature: Door:setConfiguration(`configuration` : Int)
function Door:setConfiguration(...) end

---@class EncoderModule: FINModuleBase
---@field enabled boolean
local EncoderModule = {}
--- Signature: EncoderModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function EncoderModule:setColor(...) end

---@class EventFilter
local EventFilter = {}
--- Signature: EventFilter:FIR_Operator_Mul(`operand` : Struct<xref:/reflection/structs/EventFilter.adoc[EventFilter]>)
---@return EventFilter
function EventFilter:FIR_Operator_Mul(...) end
--- Signature: EventFilter:FIR_Operator_BitAND(`operand` : Struct<xref:/reflection/structs/EventFilter.adoc[EventFilter]>)
---@return EventFilter
function EventFilter:FIR_Operator_BitAND(...) end
--- Signature: EventFilter:matches(`name` : String, `sender` : Object<xref:/reflection/classes/Object.adoc[Object]>, ...)
---@return boolean
function EventFilter:matches(...) end
--- Signature: EventFilter:FIR_Operator_Neg()
---@return EventFilter
function EventFilter:FIR_Operator_Neg(...) end
--- Signature: EventFilter:FIR_Operator_BitNOT()
---@return EventFilter
function EventFilter:FIR_Operator_BitNOT(...) end
--- Signature: EventFilter:FIR_Operator_Add(`operand` : Struct<xref:/reflection/structs/EventFilter.adoc[EventFilter]>)
---@return EventFilter
function EventFilter:FIR_Operator_Add(...) end
--- Signature: EventFilter:FIR_Operator_BitOR(`operand` : Struct<xref:/reflection/structs/EventFilter.adoc[EventFilter]>)
---@return EventFilter
function EventFilter:FIR_Operator_BitOR(...) end

---@class EventQueue
local EventQueue = {}
--- Signature: EventQueue:pull(timeout: number?) -> (string?, xref:/reflection/classes/Object.adoc[Object], ...)
function EventQueue:pull(...) end
--- Signature: EventQueue:waitFor(filter: xref:/reflection/structs/EventFilter.adoc[EventFilter]) -> (string?, xref:/reflection/classes/Object.adoc[Object], ...)
function EventQueue:waitFor(...) end

---@class FINAdvancedNetworkConnectionComponent: ActorComponent
local FINAdvancedNetworkConnectionComponent = {}

---@class FINComputerGPU: FINComputerModule
local FINComputerGPU = {}
--- Signature: FINComputerGPU:bindScreen(`newScreen` : Trace<xref:/reflection/classes/Object.adoc[Object]>)
function FINComputerGPU:bindScreen(...) end
--- Signature: FINComputerGPU:getScreenSize()
---@return Vector2D
function FINComputerGPU:getScreenSize(...) end

---@class FINComputerGPUT2: FINComputerGPU
local FINComputerGPUT2 = {}
--- Signature: FINComputerGPUT2:drawBezier(`p0` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `p1` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `p2` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `p3` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `thickness` : Float, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function FINComputerGPUT2:drawBezier(...) end
--- Signature: FINComputerGPUT2:drawBox(`boxSettings` : Struct<xref:/reflection/structs/GPUT2DrawCallBox.adoc[GPUT2DrawCallBox]>)
function FINComputerGPUT2:drawBox(...) end
--- Signature: FINComputerGPUT2:drawLines(`points` : Array<Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>>, `thickness` : Float, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function FINComputerGPUT2:drawLines(...) end
--- Signature: FINComputerGPUT2:drawRect(`position` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `size` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `image` : String, `rotation` : Float)
function FINComputerGPUT2:drawRect(...) end
--- Signature: FINComputerGPUT2:drawSpline(`start` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `startDirections` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `end_` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `endDirection` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `thickness` : Float, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function FINComputerGPUT2:drawSpline(...) end
--- Signature: FINComputerGPUT2:drawText(`position` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `text` : String, `size` : Int, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `monospace` : Bool)
function FINComputerGPUT2:drawText(...) end
--- Signature: FINComputerGPUT2:flush()
function FINComputerGPUT2:flush(...) end
--- Signature: FINComputerGPUT2:getFontBaseline(`size` : Int, `monospace` : Bool)
---@return integer
function FINComputerGPUT2:getFontBaseline(...) end
--- Signature: FINComputerGPUT2:getFontBaselineBatch(`size` : Array<Int>, `monospace` : Array<Bool>)
---@return integer[]
function FINComputerGPUT2:getFontBaselineBatch(...) end
--- Signature: FINComputerGPUT2:getFontHeight(`size` : Int, `monospace` : Bool)
---@return integer
function FINComputerGPUT2:getFontHeight(...) end
--- Signature: FINComputerGPUT2:getFontHeightBatch(`size` : Array<Int>, `monospace` : Array<Bool>)
---@return integer[]
function FINComputerGPUT2:getFontHeightBatch(...) end
--- Signature: FINComputerGPUT2:measureText(`text` : String, `size` : Int, `monospace` : Bool)
---@return Vector2D
function FINComputerGPUT2:measureText(...) end
--- Signature: FINComputerGPUT2:measureTextBatch(`text` : Array<String>, `size` : Array<Int>, `monospace` : Array<Bool>)
---@return Vector2D[]
function FINComputerGPUT2:measureTextBatch(...) end
--- Signature: FINComputerGPUT2:popClip()
function FINComputerGPUT2:popClip(...) end
--- Signature: FINComputerGPUT2:popGeometry()
function FINComputerGPUT2:popGeometry(...) end
--- Signature: FINComputerGPUT2:pushClipRect(`position` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `size` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
function FINComputerGPUT2:pushClipRect(...) end
--- Signature: FINComputerGPUT2:pushClipPolygon(`topLeft` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `topRight` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `bottomLeft` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `bottomRight` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
function FINComputerGPUT2:pushClipPolygon(...) end
--- Signature: FINComputerGPUT2:pushLayout(`offset` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `size` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `scale` : Float)
function FINComputerGPUT2:pushLayout(...) end
--- Signature: FINComputerGPUT2:pushTransform(`translation` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>, `rotation` : Float, `scale` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
function FINComputerGPUT2:pushTransform(...) end

---@class FINInternetCard: FINComputerModule
local FINInternetCard = {}
--- Signature: FINInternetCard:request(`url` : String, `method` : String, `data` : String, ...)
---@return Future
function FINInternetCard:request(...) end

---@class FINMediaSubsystem: Actor
local FINMediaSubsystem = {}
--- Signature: FINMediaSubsystem:findGameIcon(`IconName` : String)
---@return IconData
function FINMediaSubsystem:findGameIcon(...) end
--- Signature: FINMediaSubsystem:getGameIcons(`PageSize` : Int, `Page` : Int)
---@return IconData[]
function FINMediaSubsystem:getGameIcons(...) end
--- Signature: FINMediaSubsystem:isTextureLoaded(`TextureReference` : String)
---@return boolean
function FINMediaSubsystem:isTextureLoaded(...) end
--- Signature: FINMediaSubsystem:isTextureLoading(`TextureReference` : String)
---@return boolean
function FINMediaSubsystem:isTextureLoading(...) end
--- Signature: FINMediaSubsystem:loadTexture(`TextureReference` : String)
function FINMediaSubsystem:loadTexture(...) end

---@class FINModularIndicatorPoleModule: Buildable
local FINModularIndicatorPoleModule = {}
--- Signature: FINModularIndicatorPoleModule:getNext()
---@return FINModularIndicatorPoleModule
function FINModularIndicatorPoleModule:getNext(...) end
--- Signature: FINModularIndicatorPoleModule:getPrevious()
---@return Buildable
function FINModularIndicatorPoleModule:getPrevious(...) end

---@class Factory: Buildable
---@field canChangePotential boolean
---@field canChangeProductionBoost boolean
---@field currentPotential number
---@field currentProductionBoost number
---@field cycleTime number
---@field maxDefaultPotential number
---@field maxDefaultProductionBoost number
---@field maxPotential number
---@field maxProductionBoost number
---@field minDefaultProductionBoost number
---@field minPotential number
---@field potential number
---@field potentialInventory Inventory
---@field powerConsumProducing number
---@field productionBoost number
---@field productivity number
---@field progress number
---@field standby boolean
local Factory = {}
--- Signature: Factory:setPotential(`potential` : Float)
function Factory:setPotential(...) end
--- Signature: Factory:setProductionBoost(`productionBoost` : Float)
function Factory:setProductionBoost(...) end

---@class FactoryConnection: ActorComponent
---@field allowedItem Class<ItemType>
---@field blocked boolean
---@field direction integer
---@field isConnected boolean
---@field type integer
---@field unblockedTransfers integer
local FactoryConnection = {}
--- Signature: FactoryConnection:addUnblockedTransfers(`unblockedTransfers` : Int)
---@return integer
function FactoryConnection:addUnblockedTransfers(...) end
--- Signature: FactoryConnection:getConnected()
---@return FactoryConnection
function FactoryConnection:getConnected(...) end
--- Signature: FactoryConnection:getInventory()
---@return Inventory
function FactoryConnection:getInventory(...) end

---@class File
local File = {}
--- Signature: File:close()
function File:close(...) end
--- Signature: File:read(...: integer)
---@return any
function File:read(...) end
--- Signature: File:seek(where: string, offset: integer)
---@return integer
function File:seek(...) end
--- Signature: File:write(... string)
function File:write(...) end

---@class Function: ReflectionBase
---@field flags integer
local Function = {}
--- Signature: Function:getParameters()
---@return Property[]
function Function:getParameters(...) end

---@class Future
local Future = {}
--- Signature: Future:await()
function Future:await(...) end
--- Signature: Future:canGet()
function Future:canGet(...) end
--- Signature: Future:get()
function Future:get(...) end
--- Signature: Future:poll()
---@return boolean
---@return number?
function Future:poll(...) end

---@class FutureStruct
local FutureStruct = {}

---@class GPUT1: FINComputerGPU
local GPUT1 = {}
--- Signature: GPUT1:fill(`x` : Int, `y` : Int, `dx` : Int, `dy` : Int, `str` : String)
function GPUT1:fill(...) end
--- Signature: GPUT1:flush()
function GPUT1:flush(...) end
--- Signature: GPUT1:getBuffer()
---@return GPUT1Buffer
function GPUT1:getBuffer(...) end
--- Signature: GPUT1:getScreen()
---@return Object
function GPUT1:getScreen(...) end
--- Signature: GPUT1:getSize() -> (`w` : Int, `h` : Int)
function GPUT1:getSize(...) end
--- Signature: GPUT1:setBackground(`r` : Float, `g` : Float, `b` : Float, `a` : Float)
function GPUT1:setBackground(...) end
--- Signature: GPUT1:setBuffer(`buffer` : Struct<xref:/reflection/structs/GPUT1Buffer.adoc[GPUT1Buffer]>)
function GPUT1:setBuffer(...) end
--- Signature: GPUT1:setForeground(`r` : Float, `g` : Float, `b` : Float, `a` : Float)
function GPUT1:setForeground(...) end
--- Signature: GPUT1:setSize(`w` : Int, `h` : Int)
function GPUT1:setSize(...) end
--- Signature: GPUT1:setText(`x` : Int, `y` : Int, `str` : String)
function GPUT1:setText(...) end

---@class GPUT1Buffer
local GPUT1Buffer = {}
--- Signature: GPUT1Buffer:clone()
---@return GPUT1Buffer
function GPUT1Buffer:clone(...) end
--- Signature: GPUT1Buffer:copy(`x` : Int, `y` : Int, `buffer` : Struct<xref:/reflection/structs/GPUT1Buffer.adoc[GPUT1Buffer]>, `textBlendMode` : Int, `foregroundBlendMode` : Int, `backgroundBlendMode` : Int)
function GPUT1Buffer:copy(...) end
--- Signature: GPUT1Buffer:fill(`x` : Int, `y` : Int, `width` : Int, `height` : Int, `character` : String, `foreground` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `background` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function GPUT1Buffer:fill(...) end
--- Signature: GPUT1Buffer:get(`x` : Int, `y` : Int) -> (`c` : String, `foreground` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `background` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function GPUT1Buffer:get(...) end
--- Signature: GPUT1Buffer:getSize() -> (`width` : Float, `height` : Float)
function GPUT1Buffer:getSize(...) end
--- Signature: GPUT1Buffer:set(`x` : Int, `y` : Int, `c` : String, `foreground` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `background` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
---@return boolean
function GPUT1Buffer:set(...) end
--- Signature: GPUT1Buffer:setRaw(`characters` : String, `foreground` : Array<Float>, `background` : Array<Float>)
---@return boolean
function GPUT1Buffer:setRaw(...) end
--- Signature: GPUT1Buffer:setSize(`width` : Float, `height` : Float)
function GPUT1Buffer:setSize(...) end
--- Signature: GPUT1Buffer:setText(`x` : Int, `y` : Int, `text` : String, `foreground` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `background` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function GPUT1Buffer:setText(...) end

---@class GPUT2DrawCallBox
---@field color Color
---@field hasCenteredOrigin boolean
---@field hasOutline boolean
---@field horizontalTiling boolean
---@field image string
---@field imageSize Vector2D
---@field isBorder boolean
---@field isRounded boolean
---@field margin Margin
---@field outlineColor Color
---@field outlineThickness number
---@field position Vector2D
---@field radii Vector4
---@field rotation number
---@field size Vector2D
---@field verticalTiling boolean
local GPUT2DrawCallBox = {}

---@class GaugeModule: FINModuleBase
---@field limit number
---@field percent number
local GaugeModule = {}
--- Signature: GaugeModule:setBackgroundColor(`r` : Float, `g` : Float, `b` : Float)
function GaugeModule:setBackgroundColor(...) end
--- Signature: GaugeModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function GaugeModule:setColor(...) end

---@class IconData
---@field animated boolean
---@field hidden boolean
---@field iconName string
---@field iconType string
---@field id integer
---@field isValid boolean
---@field ref string
---@field searchOnly boolean
local IconData = {}

---@class IndicatorModule: FINModuleBase
local IndicatorModule = {}
--- Signature: IndicatorModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function IndicatorModule:setColor(...) end

---@class IndicatorPole: Buildable
local IndicatorPole = {}
--- Signature: IndicatorPole:getColor() -> (`r` : Float, `g` : Float, `b` : Float, `e` : Float)
function IndicatorPole:getColor(...) end
--- Signature: IndicatorPole:getTopPole()
---@return IndicatorPole
function IndicatorPole:getTopPole(...) end
--- Signature: IndicatorPole:setColor(`r` : Float, `g` : Float, `b` : Float, `e` : Float)
function IndicatorPole:setColor(...) end
--- Signature: IndicatorPole:getBottomPole()
---@return IndicatorPole
function IndicatorPole:getBottomPole(...) end

---@class Inventory: ActorComponent
---@field itemCount integer
---@field size integer
local Inventory = {}
--- Signature: Inventory:canSplitAtIndex(`index` : Int)
---@return boolean
function Inventory:canSplitAtIndex(...) end
--- Signature: Inventory:flush()
function Inventory:flush(...) end
--- Signature: Inventory:getStack(...)
function Inventory:getStack(...) end
--- Signature: Inventory:sort()
function Inventory:sort(...) end
--- Signature: Inventory:splitAtIndex(`index` : Int, `num` : Int)
function Inventory:splitAtIndex(...) end
--- Signature: Inventory:swapStacks(`index1` : Int, `index2` : Int)
---@return boolean
function Inventory:swapStacks(...) end

---@class Item
---@field type Class<ItemType>
local Item = {}

---@class ItemAmount
---@field amount integer
---@field type Class<ItemType>
local ItemAmount = {}

---@class ItemCategory: Object
---@field name string
local ItemCategory = {}

---@class ItemStack
---@field count integer
---@field item Item
local ItemStack = {}

---@class ItemType: Object
---@field canBeDiscarded boolean
---@field category Class<ItemCategory>
---@field description string
---@field energy number
---@field fluidColor Color
---@field form integer
---@field max integer
---@field name string
---@field radioactiveDecay number
local ItemType = {}

---@class LargeControlPanel: Buildable
local LargeControlPanel = {}
--- Signature: LargeControlPanel:getModules()
---@return Object[]
function LargeControlPanel:getModules(...) end
--- Signature: LargeControlPanel:getModule(`x` : Int, `y` : Int)
---@return Actor
function LargeControlPanel:getModule(...) end

---@class LargeMicroDisplayModule: FINModuleBase
local LargeMicroDisplayModule = {}
--- Signature: LargeMicroDisplayModule:setText(`text` : String)
function LargeMicroDisplayModule:setText(...) end
--- Signature: LargeMicroDisplayModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function LargeMicroDisplayModule:setColor(...) end

---@class LargeVerticalControlPanel: Buildable
local LargeVerticalControlPanel = {}
--- Signature: LargeVerticalControlPanel:getModules()
---@return Object[]
function LargeVerticalControlPanel:getModules(...) end
--- Signature: LargeVerticalControlPanel:getModule(`x` : Int, `y` : Int, `panel` : Int)
---@return Actor
function LargeVerticalControlPanel:getModule(...) end

---@class LightSource: Buildable
---@field colorSlot integer
---@field intensity number
---@field isLightEnabled boolean
---@field isTimeOfDayAware boolean
local LightSource = {}
--- Signature: LightSource:getColorFromSlot(`slot` : Int)
---@return Color
function LightSource:getColorFromSlot(...) end
--- Signature: LightSource:setColorFromSlot(`slot` : Int, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function LightSource:setColorFromSlot(...) end

---@class LightsControlPanel: FGBuildableControlPanelHost
---@field colorSlot integer
---@field intensity number
---@field isLightEnabled boolean
---@field isTimeOfDayAware boolean
local LightsControlPanel = {}
--- Signature: LightsControlPanel:setColorFromSlot(`slot` : Int, `color` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function LightsControlPanel:setColorFromSlot(...) end

---@class LogEntry
---@field content string
---@field timestamp string
---@field verbosity integer
local LogEntry = {}
--- Signature: LogEntry:format()
---@return string
function LogEntry:format(...) end

---@class Manufacturer: Factory
local Manufacturer = {}
--- Signature: Manufacturer:getInputInv()
---@return Inventory
function Manufacturer:getInputInv(...) end
--- Signature: Manufacturer:getOutputInv()
---@return Inventory
function Manufacturer:getOutputInv(...) end
--- Signature: Manufacturer:getRecipe()
---@return Class<Recipe>
function Manufacturer:getRecipe(...) end
--- Signature: Manufacturer:getRecipes()
---@return Array<Class<Recipe>>
function Manufacturer:getRecipes(...) end
--- Signature: Manufacturer:setRecipe(`recipe` : Class<xref:/reflection/classes/Recipe.adoc[Recipe]>)
---@return boolean
function Manufacturer:setRecipe(...) end

---@class Margin
---@field bottom number
---@field left number
---@field right number
---@field top number
local Margin = {}

---@class MicroDisplayModule: FINModuleBase
local MicroDisplayModule = {}
--- Signature: MicroDisplayModule:setText(`text` : String)
function MicroDisplayModule:setText(...) end
--- Signature: MicroDisplayModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function MicroDisplayModule:setColor(...) end

---@class Microcontroller: Buildable
local Microcontroller = {}

---@class ModularIndicatorPole: Buildable
local ModularIndicatorPole = {}
--- Signature: ModularIndicatorPole:getModule(`module` : Int)
---@return Actor
function ModularIndicatorPole:getModule(...) end
--- Signature: ModularIndicatorPole:getNext()
---@return Actor
function ModularIndicatorPole:getNext(...) end

---@class ModularPoleModule_Buzzer: FINModularIndicatorPoleModule
---@field attackCurve number
---@field attackTime number
---@field decayCurve number
---@field decayTime number
---@field frequency number
---@field isPlaying boolean
---@field volume number
local ModularPoleModule_Buzzer = {}
--- Signature: ModularPoleModule_Buzzer:beep()
function ModularPoleModule_Buzzer:beep(...) end
--- Signature: ModularPoleModule_Buzzer:stop()
function ModularPoleModule_Buzzer:stop(...) end

---@class ModularPoleModule_Indicator: FINModularIndicatorPoleModule
local ModularPoleModule_Indicator = {}
--- Signature: ModularPoleModule_Indicator:setColor(`r` : Float, `g` : Float, `b` : Float, `e` : Float)
function ModularPoleModule_Indicator:setColor(...) end
--- Signature: ModularPoleModule_Indicator:getColor()
---@return Color
function ModularPoleModule_Indicator:getColor(...) end

---@class ModuleButton: FINModuleBase
local ModuleButton = {}
--- Signature: ModuleButton:trigger()
function ModuleButton:trigger(...) end
--- Signature: ModuleButton:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function ModuleButton:setColor(...) end

---@class ModulePanel: Buildable
local ModulePanel = {}
--- Signature: ModulePanel:getModules()
---@return Object[]
function ModulePanel:getModules(...) end
--- Signature: ModulePanel:getModule(`x` : Int, `y` : Int)
---@return Actor
function ModulePanel:getModule(...) end
--- Signature: ModulePanel:getXModule(`X` : Int)
---@return Actor
function ModulePanel:getXModule(...) end
--- Signature: ModulePanel:getYModule(`Y` : Int)
---@return Actor
function ModulePanel:getYModule(...) end

---@class ModulePotentiometer: FINModuleBase
local ModulePotentiometer = {}
--- Signature: ModulePotentiometer:rotate(`anticlockwise` : Bool)
function ModulePotentiometer:rotate(...) end

---@class ModuleStopButton: FINModuleBase
local ModuleStopButton = {}
--- Signature: ModuleStopButton:trigger()
function ModuleStopButton:trigger(...) end

---@class ModuleSwitch: FINModuleBase
---@field state boolean
local ModuleSwitch = {}

---@class ModuleTextDisplay: FINModuleBase
---@field monospace boolean
---@field size integer
---@field text string
local ModuleTextDisplay = {}

---@class NetworkCard: FINComputerModule
local NetworkCard = {}
--- Signature: NetworkCard:broadcast(`port` : Int, ...)
function NetworkCard:broadcast(...) end
--- Signature: NetworkCard:closeAll()
function NetworkCard:closeAll(...) end
--- Signature: NetworkCard:close(`port` : Int)
function NetworkCard:close(...) end
--- Signature: NetworkCard:open(`port` : Int)
function NetworkCard:open(...) end
--- Signature: NetworkCard:send(`receiver` : String, `port` : Int, ...)
function NetworkCard:send(...) end

---@class NetworkRouter: Buildable
---@field isAddrWhitelist boolean
---@field isWhitelist boolean
local NetworkRouter = {}
--- Signature: NetworkRouter:addPortList(`port` : Int)
function NetworkRouter:addPortList(...) end
--- Signature: NetworkRouter:getAddrList()
---@return string[]
function NetworkRouter:getAddrList(...) end
--- Signature: NetworkRouter:getPortList()
---@return integer[]
function NetworkRouter:getPortList(...) end
--- Signature: NetworkRouter:removeAddrList(`addr` : String)
function NetworkRouter:removeAddrList(...) end
--- Signature: NetworkRouter:removePortList(`port` : Int)
function NetworkRouter:removePortList(...) end
--- Signature: NetworkRouter:setAddrList()
---@return string[]
function NetworkRouter:setAddrList(...) end
--- Signature: NetworkRouter:setPortList()
---@return integer[]
function NetworkRouter:setPortList(...) end
--- Signature: NetworkRouter:addAddrList(`addr` : String)
function NetworkRouter:addAddrList(...) end

---@class Object
---@field hash integer
---@field id string
---@field internalName string
---@field internalPath string
---@field isNetworkComponent boolean
---@field nick string
local Object = {}
--- Signature: Object:getHash()
---@return integer
function Object:getHash(...) end
--- Signature: Object:getType()
---@return Class
function Object:getType(...) end
--- Signature: Object:isA(`parent` : Class<xref:/reflection/classes/Object.adoc[Object]>)
---@return boolean
function Object:isA(...) end
--- Signature: Object:isChildOf(`parent` : Class<xref:/reflection/classes/Object.adoc[Object]>)
---@return boolean
function Object:isChildOf(...) end

---@class ObjectProperty: Property
local ObjectProperty = {}
--- Signature: ObjectProperty:getSubclass()
---@return Class
function ObjectProperty:getSubclass(...) end

---@class PipeConnection: PipeConnectionBase
---@field fluidBoxContent number
---@field fluidBoxFlowDrain number
---@field fluidBoxFlowFill number
---@field fluidBoxFlowLimit number
---@field fluidBoxFlowThrough number
---@field fluidBoxHeight number
---@field fluidBoxLaminarHeight number
---@field networkID integer
local PipeConnection = {}
--- Signature: PipeConnection:flushPipeNetwork()
function PipeConnection:flushPipeNetwork(...) end
--- Signature: PipeConnection:getFluidDescriptor()
---@return ItemType
function PipeConnection:getFluidDescriptor(...) end

---@class PipeConnectionBase: ActorComponent
---@field isConnected boolean
local PipeConnectionBase = {}
--- Signature: PipeConnectionBase:getConnection()
---@return PipeConnectionBase
function PipeConnectionBase:getConnection(...) end

---@class PipeHyperStart: Factory
local PipeHyperStart = {}

---@class PipeReservoir: Factory
---@field flowDrain number
---@field flowFill number
---@field flowLimit number
---@field fluidContent number
---@field maxFluidContent number
local PipeReservoir = {}
--- Signature: PipeReservoir:flush()
function PipeReservoir:flush(...) end
--- Signature: PipeReservoir:getFluidType()
---@return Class<ItemType>
function PipeReservoir:getFluidType(...) end

---@class PipelinePump: FGBuildablePipelineAttachment
---@field defaultFlowLimit number
---@field designedHeadlift number
---@field flow number
---@field flowLimit number
---@field indicatorHeadlift number
---@field maxHeadlift number
---@field userFlowLimit number
local PipelinePump = {}

---@class PotWDisplayModule: FINModuleBase
---@field autovalue boolean
---@field enabled boolean
---@field max integer
---@field min integer
---@field value integer
local PotWDisplayModule = {}
--- Signature: PotWDisplayModule:setText(`text` : String)
function PotWDisplayModule:setText(...) end
--- Signature: PotWDisplayModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function PotWDisplayModule:setColor(...) end

---@class PotentiometerModule: FINModuleBase
---@field enabled boolean
---@field max integer
---@field min integer
---@field value integer
local PotentiometerModule = {}
--- Signature: PotentiometerModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function PotentiometerModule:setColor(...) end

---@class PowerCircuit: Object
---@field batteryCapacity number
---@field batteryIn number
---@field batteryInput number
---@field batteryOut number
---@field batteryStore number
---@field batteryStorePercent number
---@field batteryTimeUntilEmpty number
---@field batteryTimeUntilFull number
---@field capacity number
---@field consumption number
---@field hasBatteries boolean
---@field isFuesed boolean
---@field maxPowerConsumption number
---@field production number
---@field productionBoost number
---@field productionBoostPercent number
local PowerCircuit = {}
--- Signature: PowerCircuit:getGroupPrioritySwitches()
---@return CircuitSwitchPriority[]
function PowerCircuit:getGroupPrioritySwitches(...) end
--- Signature: PowerCircuit:resetFuse()
function PowerCircuit:resetFuse(...) end

---@class PowerConnection: ActorComponent
---@field connections integer
---@field maxConnections integer
local PowerConnection = {}
--- Signature: PowerConnection:getCircuit()
---@return PowerCircuit
function PowerConnection:getCircuit(...) end
--- Signature: PowerConnection:getPower()
---@return PowerInfo
function PowerConnection:getPower(...) end

---@class PowerInfo: ActorComponent
---@field baseProduction number
---@field consumption number
---@field dynProduction number
---@field hasPower boolean
---@field maxDynProduction number
---@field targetConsumption number
local PowerInfo = {}
--- Signature: PowerInfo:getCircuit()
---@return PowerCircuit
function PowerInfo:getCircuit(...) end

---@class PowerStorage: Factory
---@field batteryMaxIndicatorLevel integer
---@field batteryStatus integer
---@field powerCapacity number
---@field powerIn number
---@field powerOut number
---@field powerStore number
---@field powerStorePercent number
---@field timeUntilEmpty number
---@field timeUntilFull number
local PowerStorage = {}

---@class PrefabSignData
---@field auxiliary Color
---@field background Color
---@field emissive number
---@field foreground Color
---@field layout Class<Object>
---@field signType Class<SignType>
local PrefabSignData = {}
--- Signature: PrefabSignData:getIconElement(`elementName` : String)
---@return integer
function PrefabSignData:getIconElement(...) end
--- Signature: PrefabSignData:getIconElements() -> (`iconElements` : Array<String>, `iconElementValues` : Array<Int>)
function PrefabSignData:getIconElements(...) end
--- Signature: PrefabSignData:getTextElement(`elementName` : String)
---@return integer
function PrefabSignData:getTextElement(...) end
--- Signature: PrefabSignData:getTextElements() -> (`textElements` : Array<String>, `textElementValues` : Array<String>)
function PrefabSignData:getTextElements(...) end
--- Signature: PrefabSignData:setIconElement(`elementName` : String, `value` : Int)
function PrefabSignData:setIconElement(...) end
--- Signature: PrefabSignData:setIconElements(`iconElements` : Array<String>, `iconElementValues` : Array<Int>)
function PrefabSignData:setIconElements(...) end
--- Signature: PrefabSignData:setTextElement(`elementName` : String, `value` : String)
function PrefabSignData:setTextElement(...) end
--- Signature: PrefabSignData:setTextElements(`textElements` : Array<String>, `textElementValues` : Array<String>)
function PrefabSignData:setTextElements(...) end

---@class Property: ReflectionBase
---@field dataType integer
---@field flags integer
local Property = {}

---@class PushbuttonModule: FINModuleBase
---@field enabled boolean
---@field operationalMode integer
---@field state boolean
local PushbuttonModule = {}
--- Signature: PushbuttonModule:Trigger()
function PushbuttonModule:Trigger(...) end
--- Signature: PushbuttonModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function PushbuttonModule:setColor(...) end

---@class RailroadSignal: Buildable
---@field aspect integer
---@field blockValidation integer
---@field hasObservedBlock boolean
---@field isBiDirectional boolean
---@field isPathSignal boolean
local RailroadSignal = {}
--- Signature: RailroadSignal:getGuardedConnnections()
---@return RailroadTrackConnection[]
function RailroadSignal:getGuardedConnnections(...) end
--- Signature: RailroadSignal:getObservedBlock()
---@return RailroadSignalBlock
function RailroadSignal:getObservedBlock(...) end
--- Signature: RailroadSignal:getObservedConnections()
---@return RailroadTrackConnection[]
function RailroadSignal:getObservedConnections(...) end

---@class RailroadSignalBlock
---@field blockValidation integer
---@field isBlockOccupied boolean
---@field isPathBlock boolean
---@field isValid boolean
local RailroadSignalBlock = {}
--- Signature: RailroadSignalBlock:getApprovedReservations()
---@return Train[]
function RailroadSignalBlock:getApprovedReservations(...) end
--- Signature: RailroadSignalBlock:getOccupation()
---@return Train[]
function RailroadSignalBlock:getOccupation(...) end
--- Signature: RailroadSignalBlock:getQueuedReservations()
---@return Train[]
function RailroadSignalBlock:getQueuedReservations(...) end
--- Signature: RailroadSignalBlock:isOccupiedBy(`train` : Object<xref:/reflection/classes/Train.adoc[Train]>)
---@return boolean
function RailroadSignalBlock:isOccupiedBy(...) end

---@class RailroadStation: TrainPlatform
---@field dockedOffset integer
---@field name string
local RailroadStation = {}

---@class RailroadSwitchControl: Buildable
local RailroadSwitchControl = {}
--- Signature: RailroadSwitchControl:getControlledConnections()
---@return RailroadTrackConnection[]
function RailroadSwitchControl:getControlledConnections(...) end
--- Signature: RailroadSwitchControl:switchPosition()
---@return integer
function RailroadSwitchControl:switchPosition(...) end
--- Signature: RailroadSwitchControl:toggleSwitch()
function RailroadSwitchControl:toggleSwitch(...) end

---@class RailroadTrack: Buildable
---@field isOwnedByPlatform boolean
---@field length number
local RailroadTrack = {}
--- Signature: RailroadTrack:getClosestTrackPosition(`worldPos` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>) -> (`track` : Trace<xref:/reflection/classes/RailroadTrack.adoc[RailroadTrack]>, `offset` : Float, `forward` : Float)
function RailroadTrack:getClosestTrackPosition(...) end
--- Signature: RailroadTrack:getConnection(`direction` : Int)
---@return RailroadTrackConnection
function RailroadTrack:getConnection(...) end
--- Signature: RailroadTrack:getTrackGraph()
---@return TrackGraph
function RailroadTrack:getTrackGraph(...) end
--- Signature: RailroadTrack:getVehicles()
---@return RailroadVehicle[]
function RailroadTrack:getVehicles(...) end
--- Signature: RailroadTrack:getWorldLocAndRotAtPos(`track` : Trace<xref:/reflection/classes/RailroadTrack.adoc[RailroadTrack]>, `offset` : Float, `forward` : Float) -> (`location` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>, `rotation` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>)
function RailroadTrack:getWorldLocAndRotAtPos(...) end

---@class RailroadTrackConnection: ActorComponent
---@field connectorLocation Vector
---@field connectorNormal Vector
---@field isConnected boolean
---@field isFacingSwitch boolean
---@field isTrailingSwitch boolean
---@field numSwitchPositions integer
local RailroadTrackConnection = {}
--- Signature: RailroadTrackConnection:forceSwitchPosition(`index` : Int)
function RailroadTrackConnection:forceSwitchPosition(...) end
--- Signature: RailroadTrackConnection:getConnection(`index` : Int)
---@return RailroadTrackConnection
function RailroadTrackConnection:getConnection(...) end
--- Signature: RailroadTrackConnection:getConnections()
---@return RailroadTrackConnection[]
function RailroadTrackConnection:getConnections(...) end
--- Signature: RailroadTrackConnection:getFacingSignal()
---@return RailroadSignal
function RailroadTrackConnection:getFacingSignal(...) end
--- Signature: RailroadTrackConnection:getNext()
---@return RailroadTrackConnection
function RailroadTrackConnection:getNext(...) end
--- Signature: RailroadTrackConnection:getOpposite()
---@return RailroadTrackConnection
function RailroadTrackConnection:getOpposite(...) end
--- Signature: RailroadTrackConnection:getStation()
---@return RailroadStation
function RailroadTrackConnection:getStation(...) end
--- Signature: RailroadTrackConnection:getSwitchControl()
---@return RailroadSwitchControl
function RailroadTrackConnection:getSwitchControl(...) end
--- Signature: RailroadTrackConnection:getSwitchPosition()
---@return integer
function RailroadTrackConnection:getSwitchPosition(...) end
--- Signature: RailroadTrackConnection:getTrack()
---@return RailroadTrack
function RailroadTrackConnection:getTrack(...) end
--- Signature: RailroadTrackConnection:getTrackPos() -> (`track` : Trace<xref:/reflection/classes/RailroadTrack.adoc[RailroadTrack]>, `offset` : Float, `forward` : Float)
function RailroadTrackConnection:getTrackPos(...) end
--- Signature: RailroadTrackConnection:getTrailingSignal()
---@return RailroadSignal
function RailroadTrackConnection:getTrailingSignal(...) end
--- Signature: RailroadTrackConnection:setSwitchPosition(`index` : Int)
function RailroadTrackConnection:setSwitchPosition(...) end

---@class RailroadVehicle: Vehicle
---@field isDocked boolean
---@field isReversed boolean
---@field length number
local RailroadVehicle = {}
--- Signature: RailroadVehicle:getCoupled(`coupler` : Int)
---@return RailroadVehicle
function RailroadVehicle:getCoupled(...) end
--- Signature: RailroadVehicle:getMovement()
---@return RailroadVehicleMovement
function RailroadVehicle:getMovement(...) end
--- Signature: RailroadVehicle:getTrackGraph()
---@return TrackGraph
function RailroadVehicle:getTrackGraph(...) end
--- Signature: RailroadVehicle:getTrackPos() -> (`track` : Trace<xref:/reflection/classes/RailroadTrack.adoc[RailroadTrack]>, `offset` : Float, `forward` : Float)
function RailroadVehicle:getTrackPos(...) end
--- Signature: RailroadVehicle:getTrain()
---@return Train
function RailroadVehicle:getTrain(...) end
--- Signature: RailroadVehicle:isCoupled(`coupler` : Int)
---@return boolean
function RailroadVehicle:isCoupled(...) end

---@class RailroadVehicleMovement: ActorComponent
---@field airBrakingForce number
---@field airResistance number
---@field brakingForce number
---@field curvatureResistance number
---@field dynamicBrakingForce number
---@field gradientForce number
---@field gradientResistance number
---@field gravitationalForce number
---@field isMoving boolean
---@field mass number
---@field maxAirBrakingEffort number
---@field maxDynamicBrakingEffort number
---@field maxSpeed number
---@field maxTractiveEffort number
---@field numWheelsets integer
---@field orientation number
---@field payloadMass number
---@field relativeSpeed number
---@field resistiveForce number
---@field rollingResistance number
---@field speed number
---@field tareMass number
---@field trackCurvature number
---@field trackGrade number
---@field tractiveForce number
---@field wheelRotation number
---@field wheelsetAngle number
local RailroadVehicleMovement = {}
--- Signature: RailroadVehicleMovement:getCouplerRotationAndExtention(`coupler` : Int) -> (`x` : Float, `y` : Float, `z` : Float, `extention` : Float)
function RailroadVehicleMovement:getCouplerRotationAndExtention(...) end
--- Signature: RailroadVehicleMovement:getVehicle()
---@return RailroadVehicle
function RailroadVehicleMovement:getVehicle(...) end
--- Signature: RailroadVehicleMovement:getWheelsetOffset(`wheelset` : Int)
---@return number
function RailroadVehicleMovement:getWheelsetOffset(...) end
--- Signature: RailroadVehicleMovement:getWheelsetRotation(`wheelset` : Int) -> (`x` : Float, `y` : Float, `z` : Float)
function RailroadVehicleMovement:getWheelsetRotation(...) end

---@class Recipe: Object
---@field duration number
---@field name string
local Recipe = {}
--- Signature: Recipe:getIngredients()
---@return ItemAmount[]
function Recipe:getIngredients(...) end
--- Signature: Recipe:getProducts()
---@return ItemAmount[]
function Recipe:getProducts(...) end

---@class ReflectionBase: Object
---@field description string
---@field displayName string
---@field name string
local ReflectionBase = {}

---@class ReflectionFunction
---@field asFunctionObject Function
---@field callDeferred function
---@field quickRef string
local ReflectionFunction = {}

---@class ResourceSink: Factory
---@field numCoupons integer
---@field trackDefault integer
---@field trackExploration integer
local ResourceSink = {}
--- Signature: ResourceSink:getCouponProgress(`track` : Int)
---@return number
function ResourceSink:getCouponProgress(...) end
--- Signature: ResourceSink:getNumPoints(`track` : Int)
---@return integer
function ResourceSink:getNumPoints(...) end
--- Signature: ResourceSink:getNumPointsToNextCoupon(`track` : Int)
---@return integer
function ResourceSink:getNumPointsToNextCoupon(...) end

---@class Rotator
---@field pitch number
---@field roll number
---@field yaw number
local Rotator = {}
--- Signature: Rotator:FIR_Operator_Add(`other` : Struct<xref:/reflection/structs/Rotator.adoc[Rotator]>)
---@return Rotator
function Rotator:FIR_Operator_Add(...) end
--- Signature: Rotator:FIR_Operator_Sub(`other` : Struct<xref:/reflection/structs/Rotator.adoc[Rotator]>)
---@return Rotator
function Rotator:FIR_Operator_Sub(...) end

---@class Screen: Buildable
local Screen = {}
--- Signature: Screen:getSize() -> (`width` : Int, `height` : Int)
function Screen:getSize(...) end

---@class SectionedPanelBasePanelA: Buildable
local SectionedPanelBasePanelA = {}
--- Signature: SectionedPanelBasePanelA:getModules()
---@return Object[]
function SectionedPanelBasePanelA:getModules(...) end
--- Signature: SectionedPanelBasePanelA:getModule(`x` : Int, `y` : Int, `panel` : Int)
---@return Actor
function SectionedPanelBasePanelA:getModule(...) end

---@class SectionedPanelRearPanelA: Buildable
local SectionedPanelRearPanelA = {}
--- Signature: SectionedPanelRearPanelA:getModules()
---@return Object[]
function SectionedPanelRearPanelA:getModules(...) end
--- Signature: SectionedPanelRearPanelA:getModule(`x` : Int, `y` : Int, `panel` : Int)
---@return Actor
function SectionedPanelRearPanelA:getModule(...) end

---@class SignBase: Buildable
local SignBase = {}
--- Signature: SignBase:getSignType()
---@return Class<SignType>
function SignBase:getSignType(...) end

---@class SignType: Object
---@field dimensions Vector2D
local SignType = {}
--- Signature: SignType:getColors() -> (`foreground` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `background` : Struct<xref:/reflection/structs/Color.adoc[Color]>, `auxiliary` : Struct<xref:/reflection/structs/Color.adoc[Color]>)
function SignType:getColors(...) end
--- Signature: SignType:getIconElements()
---@return Object[]
function SignType:getIconElements(...) end
--- Signature: SignType:getPrefabs()
---@return Array<Class<SignPrefab>>
function SignType:getPrefabs(...) end
--- Signature: SignType:getTextElements()
---@return string[]
function SignType:getTextElements(...) end

---@class Signal: ReflectionBase
---@field isVarArgs boolean
local Signal = {}
--- Signature: Signal:getParameters()
---@return Property[]
function Signal:getParameters(...) end

---@class SizeableModulePanel: FINSizeablePanel
---@field height integer
---@field width integer
local SizeableModulePanel = {}
--- Signature: SizeableModulePanel:getModules()
---@return Object[]
function SizeableModulePanel:getModules(...) end
--- Signature: SizeableModulePanel:getModule(`x` : Int, `y` : Int)
---@return Actor
function SizeableModulePanel:getModule(...) end

---@class SpeakerPole: Buildable
local SpeakerPole = {}
--- Signature: SpeakerPole:playSound(`sound` : String, `startPoint` : Float)
function SpeakerPole:playSound(...) end
--- Signature: SpeakerPole:stopSound()
function SpeakerPole:stopSound(...) end

---@class SquareMicroDisplayModule: FINModuleBase
local SquareMicroDisplayModule = {}
--- Signature: SquareMicroDisplayModule:setText(`text` : String)
function SquareMicroDisplayModule:setText(...) end
--- Signature: SquareMicroDisplayModule:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function SquareMicroDisplayModule:setColor(...) end

---@class Struct: ReflectionBase
---@field isConstructable boolean
local Struct = {}
--- Signature: Struct:getAllFunctions()
---@return Property[]
function Struct:getAllFunctions(...) end
--- Signature: Struct:getAllProperties()
---@return Property[]
function Struct:getAllProperties(...) end
--- Signature: Struct:getFunctions()
---@return Function[]
function Struct:getFunctions(...) end
--- Signature: Struct:getParent()
---@return Class
function Struct:getParent(...) end
--- Signature: Struct:getProperties()
---@return Property[]
function Struct:getProperties(...) end
--- Signature: Struct:isChildOf(`parent` : Object<xref:/reflection/classes/Struct.adoc[Struct]>)
---@return boolean
function Struct:isChildOf(...) end

---@class StructLib
---@field Color StructType<Color>
---@field EventFilter StructType<EventFilter>
---@field Future StructType<Future>
---@field GPUT1Buffer StructType<GPUT1Buffer>
---@field GPUT2DrawCallBox StructType<GPUT2DrawCallBox>
---@field IconData StructType<IconData>
---@field Item StructType<Item>
---@field ItemAmount StructType<ItemAmount>
---@field ItemStack StructType<ItemStack>
---@field LogEntry StructType<LogEntry>
---@field Margin StructType<Margin>
---@field PrefabSignData StructType<PrefabSignData>
---@field RailroadSignalBlock StructType<RailroadSignalBlock>
---@field Rotator StructType<Rotator>
---@field TargetPoint StructType<TargetPoint>
---@field TimeTableStop StructType<TimeTableStop>
---@field TrackGraph StructType<TrackGraph>
---@field TrainDockingRuleSet StructType<TrainDockingRuleSet>
---@field Vector StructType<Vector>
---@field Vector2D StructType<Vector2D>
---@field Vector4 StructType<Vector4>
local StructLib = {}

---@class StructProperty: Property
local StructProperty = {}
--- Signature: StructProperty:getSubclass()
---@return Struct
function StructProperty:getSubclass(...) end

---@generic T
---@class StructType<T>: ReflectionBase
local StructType = {}

---@class SwitchModule2Position: FINModuleBase
---@field enabled boolean
---@field state boolean
local SwitchModule2Position = {}
--- Signature: SwitchModule2Position:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function SwitchModule2Position:setColor(...) end

---@class SwitchModule3Position: FINModuleBase
---@field enabled boolean
---@field state integer
local SwitchModule3Position = {}
--- Signature: SwitchModule3Position:setColor(`Red` : Float, `Green` : Float, `Blue` : Float, `Emit` : Float)
function SwitchModule3Position:setColor(...) end

---@class TargetList: Actor
local TargetList = {}
--- Signature: TargetList:addTarget(`target` : Struct<xref:/reflection/structs/TargetPoint.adoc[TargetPoint]>)
function TargetList:addTarget(...) end
--- Signature: TargetList:getTarget()
---@return TargetPoint
function TargetList:getTarget(...) end
--- Signature: TargetList:getTargets()
---@return TargetPoint[]
function TargetList:getTargets(...) end
--- Signature: TargetList:removeTarget(`index` : Int)
function TargetList:removeTarget(...) end
--- Signature: TargetList:setTarget(`index` : Int, `target` : Struct<xref:/reflection/structs/TargetPoint.adoc[TargetPoint]>)
function TargetList:setTarget(...) end
--- Signature: TargetList:setTargets(`targets` : Array<Struct<xref:/reflection/structs/TargetPoint.adoc[TargetPoint]>>)
function TargetList:setTargets(...) end

---@class TargetPoint
---@field pos Vector
---@field rot Rotator
---@field speed number
---@field wait number
local TargetPoint = {}

---@class TimeTable: Actor
---@field numStops integer
local TimeTable = {}
--- Signature: TimeTable:addStop(`index` : Int, `station` : Trace<xref:/reflection/classes/RailroadStation.adoc[RailroadStation]>, `ruleSet` : Struct<xref:/reflection/structs/TrainDockingRuleSet.adoc[TrainDockingRuleSet]>)
---@return boolean
function TimeTable:addStop(...) end
--- Signature: TimeTable:getCurrentStop()
---@return integer
function TimeTable:getCurrentStop(...) end
--- Signature: TimeTable:getStop(`index` : Int)
---@return TimeTableStop
function TimeTable:getStop(...) end
--- Signature: TimeTable:getStops()
---@return TimeTableStop[]
function TimeTable:getStops(...) end
--- Signature: TimeTable:incrementCurrentStop()
function TimeTable:incrementCurrentStop(...) end
--- Signature: TimeTable:isValidStop(`index` : Int)
---@return boolean
function TimeTable:isValidStop(...) end
--- Signature: TimeTable:removeStop(`index` : Int)
function TimeTable:removeStop(...) end
--- Signature: TimeTable:setCurrentStop(`index` : Int)
function TimeTable:setCurrentStop(...) end
--- Signature: TimeTable:setStop(`index` : Int, `stop` : Struct<xref:/reflection/structs/TimeTableStop.adoc[TimeTableStop]>)
---@return boolean
function TimeTable:setStop(...) end
--- Signature: TimeTable:setStops(`stops` : Array<Struct<xref:/reflection/structs/TimeTableStop.adoc[TimeTableStop]>>)
---@return boolean
function TimeTable:setStops(...) end

---@class TimeTableStop
---@field station RailroadStation
local TimeTableStop = {}
--- Signature: TimeTableStop:getRuleSet()
---@return TrainDockingRuleSet
function TimeTableStop:getRuleSet(...) end
--- Signature: TimeTableStop:setRuleSet(`ruleset` : Struct<xref:/reflection/structs/TrainDockingRuleSet.adoc[TrainDockingRuleSet]>)
function TimeTableStop:setRuleSet(...) end

---@class TraceProperty: Property
local TraceProperty = {}
--- Signature: TraceProperty:getSubclass()
---@return Class
function TraceProperty:getSubclass(...) end

---@class TrackGraph
local TrackGraph = {}
--- Signature: TrackGraph:getStations()
---@return RailroadStation[]
function TrackGraph:getStations(...) end
--- Signature: TrackGraph:getTrains()
---@return Train[]
function TrackGraph:getTrains(...) end

---@class Train: Actor
---@field dockState integer
---@field hasTimeTable boolean
---@field isDocked boolean
---@field isPlayerDriven boolean
---@field isSelfDriving boolean
---@field selfDrivingError integer
local Train = {}
--- Signature: Train:dock()
function Train:dock(...) end
--- Signature: Train:getFirst()
---@return RailroadVehicle
function Train:getFirst(...) end
--- Signature: Train:getLast()
---@return RailroadVehicle
function Train:getLast(...) end
--- Signature: Train:getMaster()
---@return RailroadVehicle
function Train:getMaster(...) end
--- Signature: Train:getName()
---@return string
function Train:getName(...) end
--- Signature: Train:getTimeTable()
---@return TimeTable
function Train:getTimeTable(...) end
--- Signature: Train:getTrackGraph()
---@return TrackGraph
function Train:getTrackGraph(...) end
--- Signature: Train:getVehicles()
---@return RailroadVehicle[]
function Train:getVehicles(...) end
--- Signature: Train:newTimeTable()
---@return TimeTable
function Train:newTimeTable(...) end
--- Signature: Train:setName(`name` : String)
function Train:setName(...) end
--- Signature: Train:setSelfDriving(`selfDriving` : Bool)
function Train:setSelfDriving(...) end

---@class TrainDockingRuleSet
---@field definition integer
---@field duration number
---@field isDurationAndRule boolean
local TrainDockingRuleSet = {}
--- Signature: TrainDockingRuleSet:getLoadFilters()
---@return Array<Class<ItemType>>
function TrainDockingRuleSet:getLoadFilters(...) end
--- Signature: TrainDockingRuleSet:getUnloadFilters()
---@return Array<Class<ItemType>>
function TrainDockingRuleSet:getUnloadFilters(...) end
--- Signature: TrainDockingRuleSet:setLoadFilters(`filters` : Array<Class<xref:/reflection/classes/ItemType.adoc[ItemType]>>)
function TrainDockingRuleSet:setLoadFilters(...) end
--- Signature: TrainDockingRuleSet:setUnloadFilters(`filters` : Array<Class<xref:/reflection/classes/ItemType.adoc[ItemType]>>)
function TrainDockingRuleSet:setUnloadFilters(...) end

---@class TrainPlatform: Factory
---@field isReversed boolean
---@field status integer
local TrainPlatform = {}
--- Signature: TrainPlatform:getConnectedPlatform(`platformConnection` : Object<xref:/reflection/classes/TrainPlatformConnection.adoc[TrainPlatformConnection]>)
---@return TrainPlatformConnection
function TrainPlatform:getConnectedPlatform(...) end
--- Signature: TrainPlatform:getDockedLocomotive()
---@return RailroadVehicle
function TrainPlatform:getDockedLocomotive(...) end
--- Signature: TrainPlatform:getDockedVehicle()
---@return Vehicle
function TrainPlatform:getDockedVehicle(...) end
--- Signature: TrainPlatform:getMaster()
---@return RailroadVehicle
function TrainPlatform:getMaster(...) end
--- Signature: TrainPlatform:getTrackGraph()
---@return TrackGraph
function TrainPlatform:getTrackGraph(...) end
--- Signature: TrainPlatform:getTrackPos() -> (`track` : Trace<xref:/reflection/classes/RailroadTrack.adoc[RailroadTrack]>, `offset` : Float, `forward` : Float)
function TrainPlatform:getTrackPos(...) end
--- Signature: TrainPlatform:getAllConnectedPlatforms()
---@return TrainPlatformConnection[]
function TrainPlatform:getAllConnectedPlatforms(...) end

---@class TrainPlatformCargo: TrainPlatform
---@field dockedOffset number
---@field fullLoad boolean
---@field fullUnload boolean
---@field inputFlow number
---@field isInLoadMode boolean
---@field isLoading boolean
---@field isUnloading boolean
---@field outputFlow number
local TrainPlatformCargo = {}

---@class TrainPlatformConnection: ActorComponent
---@field connected TrainPlatformConnection
---@field connectionType integer
---@field platformOwner TrainPlatform
---@field trackConnection RailroadTrackConnection
local TrainPlatformConnection = {}

---@class Vector
---@field x number
---@field y number
---@field z number
local Vector = {}
--- Signature: Vector:FIR_Operator_Add(`other` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>)
---@return Vector
function Vector:FIR_Operator_Add(...) end
--- Signature: Vector:FIR_Operator_Mul(`other` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>)
---@return Vector
function Vector:FIR_Operator_Mul(...) end
--- Signature: Vector:FIR_Operator_Neg()
---@return Vector
function Vector:FIR_Operator_Neg(...) end
--- Signature: Vector:FIR_Operator_Sub(`other` : Struct<xref:/reflection/structs/Vector.adoc[Vector]>)
---@return Vector
function Vector:FIR_Operator_Sub(...) end
--- Signature: Vector:FIR_Operator_Mul_1(`factor` : Float)
---@return Vector
function Vector:FIR_Operator_Mul_1(...) end

---@class Vector2D
---@field x number
---@field y number
local Vector2D = {}
--- Signature: Vector2D:FIR_Operator_Add(`other` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
---@return Vector2D
function Vector2D:FIR_Operator_Add(...) end
--- Signature: Vector2D:FIR_Operator_Neg()
---@return Vector2D
function Vector2D:FIR_Operator_Neg(...) end
--- Signature: Vector2D:FIR_Operator_Sub(`other` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
---@return Vector2D
function Vector2D:FIR_Operator_Sub(...) end
--- Signature: Vector2D:FIR_Operator_Mul(`other` : Struct<xref:/reflection/structs/Vector2D.adoc[Vector2D]>)
---@return number
function Vector2D:FIR_Operator_Mul(...) end
--- Signature: Vector2D:FIR_Operator_Mul_1(`factor` : Float)
---@return Vector2D
function Vector2D:FIR_Operator_Mul_1(...) end

---@class Vector4
---@field w number
---@field x number
---@field y number
---@field z number
local Vector4 = {}

---@class Vehicle: Actor
---@field health number
---@field isSelfDriving boolean
---@field maxHealth number
local Vehicle = {}

---@class VehicleScanner: Buildable
local VehicleScanner = {}
--- Signature: VehicleScanner:getColor() -> (`r` : Float, `g` : Float, `b` : Float, `e` : Float)
function VehicleScanner:getColor(...) end
--- Signature: VehicleScanner:getLastVehicle()
---@return Vehicle
function VehicleScanner:getLastVehicle(...) end
--- Signature: VehicleScanner:setColor(`r` : Float, `g` : Float, `b` : Float, `e` : Float)
function VehicleScanner:setColor(...) end

---@class WheeledVehicle: Vehicle
---@field burnRatio number
---@field hasFuel boolean
---@field isAutopilotEnabled boolean
---@field speed number
local WheeledVehicle = {}
--- Signature: WheeledVehicle:getCurrentTarget()
---@return integer
function WheeledVehicle:getCurrentTarget(...) end
--- Signature: WheeledVehicle:getFuelInv()
---@return Inventory
function WheeledVehicle:getFuelInv(...) end
--- Signature: WheeledVehicle:getStorageInv()
---@return Inventory
function WheeledVehicle:getStorageInv(...) end
--- Signature: WheeledVehicle:getTargetList()
---@return TargetList
function WheeledVehicle:getTargetList(...) end
--- Signature: WheeledVehicle:isValidFuel(`item` : Class<xref:/reflection/classes/ItemType.adoc[ItemType]>)
---@return boolean
function WheeledVehicle:isValidFuel(...) end
--- Signature: WheeledVehicle:setCurrentTarget(`index` : Int)
function WheeledVehicle:setCurrentTarget(...) end

---@class WidgetSign: SignBase
local WidgetSign = {}
--- Signature: WidgetSign:getPrefabSignData()
---@return PrefabSignData
function WidgetSign:getPrefabSignData(...) end
--- Signature: WidgetSign:setPrefabSignData(`prefabSignData` : Struct<xref:/reflection/structs/PrefabSignData.adoc[PrefabSignData]>)
function WidgetSign:setPrefabSignData(...) end

---@type ClassLib
classes = classes or {}

---@type StructLib
structs = structs or {}




