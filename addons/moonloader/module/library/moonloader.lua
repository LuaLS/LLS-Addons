--// by chapo
--// vk.com/chaposcripts
--// t.me/chaposcripts
--// special for https://blast.hk

--- @meta
--- @alias Ped number
--- @alias Model number
--- @alias float number
--- @alias double number
--- @alias Vehicle number
--- @alias AudioStream number
--- @alias DxFont number
--- @alias uint number
--- @alias Checkpoint number
--- @alias int number
--- @alias Player nil
--- @alias Object number
--- @alias VarId number
--- @alias Marker number
--- @alias Particle number
--- @alias zstring string
--- @alias Pickup number
--- @alias GxtString string
--- @alias Searchlight number
--- @alias DxutDialog number
--- @alias Filesearch number
--- @alias DxTexture number
--- @alias Bitstream number
--- @alias bool boolean

--[[
    Types used in moonloader:
    [
        'int',         'Model',      'float',
        'Ped',         'bool',       'Vehicle',
        'GxtString',   'Player',     'Object',
        'VarId',       'Marker',     'Particle',
        'Pickup',      'string',     'zstring',
        'Searchlight', 'Checkpoint', 'table',
        'uint',        'function',   'Bitstream',
        'DxutDialog',  'any',        'AudioStream',
        'DxFont',      'DxTexture',  '...',
        'Filesearch',  'double'
    ]
]]

--// CLASSES 
--- @class lua_thread
--- @class memory
local lua_thread, memory = {}, {}

--// FUNCTIONS
--- @param shake int
function shakeCam(shake) end

--- @param modelId Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Player player
function createPlayer(modelId, atX, atY, atZ) end

--- @param pedtype int
--- @param modelId Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Ped ped
function createChar(pedtype, modelId, atX, atY, atZ) end

--- @param ped Ped
function deleteChar(ped) end

--- @param ped Ped
--- @return float positionX
--- @return float positionY
--- @return float positionZ
function getCharCoordinates(ped) end

--- @param ped Ped
--- @param posX float
--- @param posY float
--- @param posZ float
function setCharCoordinates(ped, posX, posY, posZ) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharInArea2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharInArea3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param modelId Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Vehicle car
function createCar(modelId, atX, atY, atZ) end

--- @param car Vehicle
function deleteCar(car) end

--- @param car Vehicle
--- @param driveToX float
--- @param driveToY float
--- @param driveToZ float
function carGotoCoordinates(car, driveToX, driveToY, driveToZ) end

--- @param car Vehicle
function carWanderRandomly(car) end

--- @param car Vehicle
function carSetIdle(car) end

--- @param car Vehicle
--- @return float positionX
--- @return float positionY
--- @return float positionZ
function getCarCoordinates(car) end

--- @param car Vehicle
--- @param atX float
--- @param atY float
--- @param atZ float
function setCarCoordinates(car, atX, atY, atZ) end

--- @param car Vehicle
--- @param maxSpeed float
function setCarCruiseSpeed(car, maxSpeed) end

--- @param car Vehicle
--- @param behaviour int
function setCarDrivingStyle(car, behaviour) end

--- @param car Vehicle
--- @param driverBehaviour int
function setCarMission(car, driverBehaviour) end

--- @param car Vehicle
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCarInArea2d(car, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param car Vehicle
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCarInArea3d(car, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param gxtString GxtString
--- @param time int
--- @param style int
function printBig(gxtString, time, style) end

--- @param gxtString GxtString
--- @param time int
--- @param flag int
function printText(gxtString, time, flag) end

--- @param gxtString GxtString
--- @param time int
--- @param flag int
function printTextNow(gxtString, time, flag) end

function clearPrints() end

--- @return int hours
--- @return int mins
function getTimeOfDay() end

--- @param hours int
--- @param minutes int
function setTimeOfDay(hours, minutes) end

--- @param hours int
--- @param minutes int
--- @return int minutes
function getMinutesToTimeOfDay(hours, minutes) end

--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radius float
--- @return bool result
function isPointOnScreen(sphereX, sphereY, sphereZ, radius) end

--- @param ped Ped
--- @return Vehicle car
function storeCarCharIsIn(ped) end

--- @param ped Ped
--- @param car Vehicle
--- @return bool result
function isCharInCar(ped, car) end

--- @param ped Ped
--- @param carModel Model
--- @return bool result
function isCharInModel(ped, carModel) end

--- @param ped Ped
--- @return bool result
function isCharInAnyCar(ped) end

--- @param player Player
--- @param key int
--- @return bool result
function isButtonPressed(player, key) end

--- @param player Player
--- @param key int
--- @return int state
function getPadState(player, key) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeans2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharOnFoot2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharInCar2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateStoppedCharAnyMeans2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateStoppedCharOnFoot2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateStoppedCharInCar2d(ped, pointX, pointY, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeansChar2d(ped, nearPed, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
function locateCharOnFootChar2d(ped, nearPed, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharInCarChar2d(ped, nearPed, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeans3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharOnFoot3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharInCar3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateStoppedCharAnyMeans3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateStoppedCharOnFoot3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateStoppedCharInCar3d(ped, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeansChar3d(ped, nearPed, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharOnFootChar3d(ped, nearPed, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param nearPed Ped
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharInCarChar3d(ped, nearPed, radiusX, radiusY, radiusZ, sphere) end

--- @param modelId Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Object object
function createObject(modelId, atX, atY, atZ) end

--- @param object Object
function deleteObject(object) end

--- @param player Player
--- @param money int
function givePlayerMoney(player, money) end

--- @param player Player
--- @return int money
function getPlayerMoney(player) end

--- @param player Player
--- @param float2 float
--- @param float3 float
--- @param float4 float
function giveRemoteControlledCarToPlayer(player, float2, float3, float4) end

--- @param player Player
--- @param wantedLevel int
function alterWantedLevel(player, wantedLevel) end

--- @param player Player
--- @param minimumWantedLevel int
function alterWantedLevelNoDrop(player, minimumWantedLevel) end

--- @param player Player
--- @param level int
--- @return bool result
function isWantedLevelGreater(player, level) end

--- @param player Player
function clearWantedLevel(player) end

--- @param value bool
function setDeatharrestState(value) end

--- @return bool result
function hasDeatharrestBeenExecuted() end

--- @param ped Ped
--- @param weapon int
--- @param ammo int
function addAmmoToChar(ped, weapon, ammo) end

--- @param player Player
--- @return bool result
function isPlayerDead(player) end

--- @param ped Ped
--- @return bool result
function isCharDead(ped) end

--- @param car Vehicle
--- @return bool result
function isCarDead(car) end

--- @param player Player
--- @return bool result
function isPlayerPressingHorn(player) end

--- @param car Vehicle
--- @param pedtype Model
--- @param model int
--- @return Ped ped
function createCharInsideCar(car, pedtype, model) end

--- @param car Vehicle
--- @param modelId Model
--- @return bool result
function isCarModel(car, modelId) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
--- @param modelId Model
--- @param color1 int
--- @param color2 int
--- @param forceSpawn bool
--- @param alarm int
--- @param doorLock int
--- @param minDelay int
--- @param maxDelay int
--- @return int carGenerator
function createCarGenerator(atX, atY, atZ, angle, modelId, color1, color2, forceSpawn, alarm, doorLock, minDelay, maxDelay) end

--- @param carGenerator int
--- @param carsToGenerate int
function switchCarGenerator(carGenerator, carsToGenerate) end

--- @param var VarId
--- @param countInDirection bool
function displayOnscreenTimer(var, countInDirection) end

--- @param var VarId
function clearOnscreenTimer(var) end

--- @param var VarId
function clearOnscreenCounter(var) end

--- @param ped Ped
--- @param zoneName GxtString
--- @return bool result
function isCharInZone(ped, zoneName) end

--- @param car Vehicle
--- @param mode int
--- @param switchstyle int
function pointCameraAtCar(car, mode, switchstyle) end

--- @param ped Ped
--- @param mode int
--- @param switchstyle int
function pointCameraAtChar(ped, mode, switchstyle) end

function restoreCamera() end

--- @param player Player
--- @param time int
--- @param intensity int
function shakePad(player, time, intensity) end

--- @param gamespeed float
function setTimeScale(gamespeed) end

--- @param positionX float
--- @param positionY float
--- @param positionZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function setFixedCameraPosition(positionX, positionY, positionZ, rotationX, rotationY, rotationZ) end

--- @param pointAtX float
--- @param pointAtY float
--- @param pointAtZ float
--- @param switchstyle int
function pointCameraAtPoint(pointAtX, pointAtY, pointAtZ, switchstyle) end

--- @param car Vehicle
--- @param unused int
--- @param visibility bool
--- @return Marker marker
function addBlipForCarOld(car, unused, visibility) end

--- @param ped Ped
--- @param int2 int
--- @param int3 int
--- @return Marker marker
function addBlipForCharOld(ped, int2, int3) end

--- @param marker Marker
function removeBlip(marker) end

--- @param marker Marker
--- @param color int
function changeBlipColour(marker, color) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param color int
--- @param flag int
--- @return Marker marker
function addBlipForCoordOld(atX, atY, atZ, color, flag) end

--- @param marker Marker
--- @param size int
function changeBlipScale(marker, size) end

--- @param r int
--- @param g int
--- @param b int
function setFadingColour(r, g, b) end

--- @param _in bool
--- @param time int
function doFade(_in, time) end

--- @return bool result
function getFadingStatus() end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
--- @param townNumber int
function addHospitalRestart(atX, atY, atZ, angle, townNumber) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
--- @param townNumber int
function addPoliceRestart(atX, atY, atZ, angle, townNumber) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
function overrideNextRestart(atX, atY, atZ, angle) end

--- @param particle Particle
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param rotationFactor float
--- @param size float
--- @param intensity int
--- @param flags1 int
--- @param flags2 int
--- @param flags3 int
function drawShadow(particle, atX, atY, atZ, rotationFactor, size, intensity, flags1, flags2, flags3) end

--- @param ped Ped
--- @return float angle
function getCharHeading(ped) end

--- @param ped Ped
--- @param angle float
function setCharHeading(ped, angle) end

--- @param car Vehicle
--- @return float angle
function getCarHeading(car) end

--- @param car Vehicle
--- @param angle float
function setCarHeading(car, angle) end

--- @param object Object
--- @return float angle
function getObjectHeading(object) end

--- @param object Object
--- @param angle float
function setObjectHeading(object, angle) end

--- @param ped Ped
--- @param object Object
--- @return bool result
function isCharTouchingObject(ped, object) end

--- @param ped Ped
--- @param weapon int
--- @param ammo int
function setCharAmmo(ped, weapon, ammo) end

--- @param flag VarId
function declareMissionFlag(flag) end

--- @param car Vehicle
--- @return Marker marker
function addBlipForCar(car) end

--- @param ped Ped
--- @return Marker marker
function addBlipForChar(ped) end

--- @param object Object
--- @return Marker marker
function addBlipForObject(object) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Checkpoint checkpoint
function addBlipForCoord(atX, atY, atZ) end

--- @param marker Marker
--- @param mode int
function changeBlipDisplay(marker, mode) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param sound int
function addOneOffSound(atX, atY, atZ, sound) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param sound int
--- @return int unk
function addContinuousSound(atX, atY, atZ, sound) end

--- @param sound int
function removeSound(sound) end

--- @param car Vehicle
--- @return bool result
function isCarStuckOnRoof(car) end

--- @param car Vehicle
function addUpsidedownCarCheck(car) end

--- @param car Vehicle
function removeUpsidedownCarCheck(car) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharInAreaOnFoot2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharInAreaInCar2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharStoppedInArea2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharStoppedInAreaOnFoot2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCharStoppedInAreaInCar2d(ped, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharInAreaOnFoot3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharInAreaInCar3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharStoppedInArea3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharStoppedInAreaOnFoot3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCharStoppedInAreaInCar3d(ped, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param car Vehicle
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isCarStoppedInArea2d(car, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param car Vehicle
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param sphere bool
--- @return bool result
function isCarStoppedInArea3d(car, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, sphere) end

--- @param car Vehicle
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCar2d(car, pointX, pointY, radiusX, radiusY, sphere) end

--- @param car Vehicle
--- @param pointX float
--- @param pointY float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateStoppedCar2d(car, pointX, pointY, radiusX, radiusY, sphere) end

--- @param car Vehicle
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCar3d(car, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param car Vehicle
--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateStoppedCar3d(car, sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param weapon int
--- @param ammo int
function giveWeaponToChar(ped, weapon, ammo) end

--- @param player Player
--- @param canMove bool
--- @return bool result
function setPlayerControl(player, canMove) end

--- @param weather int
--- @return bool result
function forceWeather(weather) end

--- @param weather int
--- @return bool result
function forceWeatherNow(weather) end

function releaseWeather() end

--- @param ped Ped
--- @param weapon int
function setCurrentCharWeapon(ped, weapon) end

--- @param object Object
--- @return bool result
--- @return float positionX
--- @return float positionY
--- @return float positionZ
function getObjectCoordinates(object) end

--- @param object Object
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return bool result
function setObjectCoordinates(object, atX, atY, atZ) end

--- @return int timeMs
function getGameTimer() end

--- @param player Player
--- @return bool result
--- @return int level
function storeWantedLevel(player) end

--- @param car Vehicle
--- @return bool result
function isCarStopped(car) end

--- @param ped Ped
function markCharAsNoLongerNeeded(ped) end

--- @param car Vehicle
function markCarAsNoLongerNeeded(car) end

--- @param object Object
function markObjectAsNoLongerNeeded(object) end

--- @param ped Ped
function dontRemoveChar(ped) end

--- @param object Object
function dontRemoveObject(object) end

--- @param car Vehicle
--- @param pedtype Model
--- @param model int
--- @param passengerSeat int
--- @return bool result
--- @return Ped ped
function createCharAsPassenger(car, pedtype, model, passengerSeat) end

--- @param gxtString GxtString
--- @param number int
--- @param time int
--- @param style int
--- @return bool result
function printWithNumberBig(gxtString, number, time, style) end

--- @param gxtString GxtString
--- @param number int
--- @param time int
--- @param flag int
--- @return bool result
function printWithNumber(gxtString, number, time, flag) end

--- @param gxtString GxtString
--- @param number int
--- @param time int
--- @param flag int
--- @return bool result
function printWithNumberNow(gxtString, number, time, flag) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @return bool result
function switchRoadsOn(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function switchRoadsOff(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param car Vehicle
--- @return bool result
--- @return int passengers
function getNumberOfPassengers(car) end

--- @param car Vehicle
--- @return int maxPassengers
function getMaximumNumberOfPassengers(car) end

--- @param multiplier float
--- @return bool result
function setCarDensityMultiplier(multiplier) end

--- @param car Vehicle
--- @param heavy bool
--- @return bool result
function setCarHeavy(car, heavy) end

--- @param level int
function setMaxWantedLevel(level) end

--- @param car Vehicle
--- @return bool result
function isCarInAirProper(car) end

--- @param car Vehicle
--- @return bool result
function isCarUpsidedown(car) end

--- @param player Player
--- @return bool result
--- @return Ped ped
function getPlayerChar(player) end

--- @return bool result
function cancelOverrideRestart() end

--- @param player Player
--- @param ignored bool
--- @return bool result
function setPoliceIgnorePlayer(player, ignored) end

--- @param gxtString GxtString
--- @param weapon int
--- @param timeLimit int
--- @param targets int
--- @param targetModels1 Model
--- @param targetModels2 Model
--- @param targetModels3 Model
--- @param targetModels4 Model
--- @param completedText bool
--- @return bool result
function startKillFrenzy(gxtString, weapon, timeLimit, targets, targetModels1, targetModels2, targetModels3, targetModels4, completedText) end

--- @return bool result
--- @return int status
function readKillFrenzyStatus() end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeansCar2d(ped, car, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param flag bool
--- @return bool result
function locateCharOnFootCar2d(ped, car, radiusX, radiusY, flag) end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharInCarCar2d(ped, car, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param flag bool
--- @return bool result
function locateCharAnyMeansCar3d(ped, car, radiusX, radiusY, radiusZ, flag) end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param flag bool
--- @return bool result
function locateCharOnFootCar3d(ped, car, radiusX, radiusY, radiusZ, flag) end

--- @param ped Ped
--- @param car Vehicle
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param flag bool
--- @return bool result
function locateCharInCarCar3d(ped, car, radiusX, radiusY, radiusZ, flag) end

--- @param car Vehicle
--- @param status int
function lockCarDoors(car, status) end

--- @param car Vehicle
--- @return bool result
function explodeCar(car) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius int
--- @return bool result
function addExplosion(atX, atY, atZ, radius) end

--- @param car Vehicle
--- @return bool result
function isCarUpright(car) end

--- @param modelId Model
--- @param type int
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return bool result
--- @return Pickup pickup
function createPickup(modelId, type, atX, atY, atZ) end

--- @param pickup Pickup
--- @return bool result
function hasPickupBeenCollected(pickup) end

--- @param pickup Pickup
--- @return bool result
function removePickup(pickup) end

--- @param taxi Vehicle
--- @param light bool
--- @return bool result
function setTaxiLights(taxi, light) end

--- @param gxtString GxtString
--- @param time int
--- @param style int
--- @return bool result
function printBigQ(gxtString, time, style) end

--- @param garage GxtString
--- @param car Vehicle
--- @return bool result
function setTargetCarForMissionGarage(garage, car) end

--- @param player Player
--- @param apply bool
--- @return bool result
function applyBrakesToPlayersCar(player, apply) end

--- @param ped Ped
--- @param health int
function setCharHealth(ped, health) end

--- @param car Vehicle
--- @param health int
function setCarHealth(car, health) end

--- @param ped Ped
--- @return int health
function getCharHealth(ped) end

--- @param car Vehicle
--- @return int health
function getCarHealth(car) end

--- @param car Vehicle
--- @param primaryColor int
--- @param secondaryColor int
--- @return bool result
function changeCarColour(car, primaryColor, secondaryColor) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function switchPedRoadsOn(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function switchPedRoadsOff(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param gang int
--- @param weapons1 int
--- @param weapons2 int
--- @param weapons3 int
function setGangWeapons(gang, weapons1, weapons2, weapons3) end

--- @param ped Ped
--- @param object Object
--- @return bool result
function isCharTouchingObjectOnFoot(ped, object) end

--- @param gxtString GxtString
--- @param id int
function loadSpecialCharacter(gxtString, id) end

--- @param id int
--- @return bool result
function hasSpecialCharacterLoaded(id) end

--- @param player Player
--- @return bool result
function isPlayerInRemoteMode(player) end

--- @param posX float
--- @param posY float
--- @param posZ float
function setCutsceneOffset(posX, posY, posZ) end

--- @param ped Ped
--- @param style string
function setAnimGroupForChar(ped, style) end

--- @param modelId Model
function requestModel(modelId) end

--- @param modelId Model
--- @return bool result
function hasModelLoaded(modelId) end

--- @param modelId Model
function markModelAsNoLongerNeeded(modelId) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @param type int
--- @param lensflares bool
--- @param r int
--- @param g int
--- @param b int
function drawCorona(atX, atY, atZ, radius, type, lensflares, r, g, b) end

function storeClock() end

function restoreClock() end

--- @param player Player
--- @return bool result
function isPlayerPlaying(player) end

--- @return int mode
function getControllerMode() end

--- @param car Vehicle
--- @param sprayable bool
function setCanResprayCar(car, sprayable) end

--- @param id int
function unloadSpecialCharacter(id) end

--- @param player Player
function resetNumOfModelsKilledByPlayer(player) end

--- @param player Player
--- @param modelId Model
--- @return int quantity
function getNumOfModelsKilledByPlayer(player, modelId) end

--- @param garage GxtString
function activateGarage(garage) end

--- @param modelId Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Object object
function createObjectNoOffset(modelId, atX, atY, atZ) end

--- @param ped Ped
--- @return bool result
function isCharStopped(ped) end

--- @param enable bool
function switchWidescreen(enable) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param icon int
--- @return Marker marker
function addSpriteBlipForContactPoint(atX, atY, atZ, icon) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param type int
--- @return Marker marker
function addSpriteBlipForCoord(atX, atY, atZ, type) end

--- @param ped Ped
--- @param enabled bool
function setCharOnlyDamagedByPlayer(ped, enabled) end

--- @param car Vehicle
--- @param enabled bool
function setCarOnlyDamagedByPlayer(car, enabled) end

--- @param ped Ped
--- @param BP bool
--- @param FP bool
--- @param EP bool
--- @param CP bool
--- @param MP bool
function setCharProofs(ped, BP, FP, EP, CP, MP) end

--- @param car Vehicle
--- @param BP bool
--- @param FP bool
--- @param EP bool
--- @param CP bool
--- @param MP bool
function setCarProofs(car, BP, FP, EP, CP, MP) end

--- @param garage GxtString
function deactivateGarage(garage) end

--- @param car Vehicle
--- @return bool result
function isCarInWater(car) end

--- @param closestToX float
--- @param closestToY float
--- @param closestToZ float
--- @return float nodeX
--- @return float nodeY
--- @return float nodeZ
function getClosestCharNode(closestToX, closestToY, closestToZ) end

--- @param closestToX float
--- @param closestToY float
--- @param closestToZ float
--- @return float nodeX
--- @return float nodeY
--- @return float nodeZ
function getClosestCarNode(closestToX, closestToY, closestToZ) end

--- @param car Vehicle
--- @param toX float
--- @param toY float
--- @param toZ float
function carGotoCoordinatesAccurate(car, toX, toY, toZ) end

--- @param car Vehicle
--- @return bool result
function isCarOnScreen(car) end

--- @param ped Ped
--- @return bool result
function isCharOnScreen(ped) end

--- @param object Object
--- @return bool result
function isObjectOnScreen(object) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return float z
function getGroundZFor3dCoord(atX, atY, atZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param propagation int
--- @param size int
--- @return int fire
function startScriptFire(atX, atY, atZ, propagation, size) end

--- @param fire int
--- @return bool result
function isScriptFireExtinguished(fire) end

--- @param fire int
function removeScriptFire(fire) end

--- @param boat Vehicle
--- @param toX float
--- @param toY float
--- @param toZ float
function boatGotoCoords(boat, toX, toY, toZ) end

--- @param car Vehicle
function boatStop(car) end

--- @param ped Ped
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param weapon int
--- @return bool result
function isCharShootingInArea(ped, cornerAX, cornerAY, cornerBX, cornerBY, weapon) end

--- @param ped Ped
--- @param weapon int
--- @return bool result
function isCurrentCharWeapon(ped, weapon) end

--- @param boat Vehicle
--- @param speed float
function setBoatCruiseSpeed(boat, speed) end

--- @param zone GxtString
--- @param pedtype bool
--- @param gang bool
--- @param criminal_prostitute bool
--- @return Ped ped
function getRandomCharInZone(zone, pedtype, gang, criminal_prostitute) end

--- @param ped Ped
--- @return bool result
function isCharShooting(ped) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param cash int
--- @param permanenceFlag bool
--- @return Pickup pickup
function createMoneyPickup(atX, atY, atZ, cash, permanenceFlag) end

--- @param ped Ped
--- @param accuracy int
function setCharAccuracy(ped, accuracy) end

--- @param car Vehicle
--- @return float speed
function getCarSpeed(car) end

--- @param cutscene GxtString
function loadCutscene(cutscene) end

--- @param modelId Model
--- @return Object object
function createCutsceneObject(modelId) end

--- @param cutscene int
--- @param anim GxtString
function setCutsceneAnim(cutscene, anim) end

function startCutscene() end

--- @return int time
function getCutsceneTime() end

--- @return bool result
function hasCutsceneFinished() end

function clearCutscene() end

function restoreCameraJumpcut() end

--- @param total int
function setCollectable1Total(total) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @return bool result
function isProjectileInArea(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param ped Ped
--- @param modelId Model
--- @return bool result
function isCharModel(ped, modelId) end

--- @param modelId Model
--- @param gxtString GxtString
function loadSpecialModel(modelId, gxtString) end

--- @param car Vehicle
--- @return float forwardX
function getCarForwardX(car) end

--- @param car Vehicle
--- @return float forwardY
function getCarForwardY(car) end

--- @param garage GxtString
--- @param type int
function changeGarageType(garage, type) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param time int
--- @param flag int
function printWith2NumbersNow(gxtString, numbers1, numbers2, time, flag) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param numbers3 int
--- @param time int
--- @param flag int
function printWith3Numbers(gxtString, numbers1, numbers2, numbers3, time, flag) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param numbers3 int
--- @param numbers4 int
--- @param time int
--- @param flag int
function printWith4Numbers(gxtString, numbers1, numbers2, numbers3, numbers4, time, flag) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param numbers3 int
--- @param numbers4 int
--- @param time int
--- @param flag int
function printWith4NumbersNow(gxtString, numbers1, numbers2, numbers3, numbers4, time, flag) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param numbers3 int
--- @param numbers4 int
--- @param numbers5 int
--- @param numbers6 int
--- @param time int
--- @param flag int
function printWith6Numbers(gxtString, numbers1, numbers2, numbers3, numbers4, numbers5, numbers6, time, flag) end

--- @param progress int
function playerMadeProgress(progress) end

--- @param maxProgress int
function setProgressTotal(maxProgress) end

function registerMissionGiven() end

--- @param mission GxtString
function registerMissionPassed(mission) end

function removeAllScriptFires() end

--- @param ped Ped
--- @param weapon int
--- @return bool result
function hasCharBeenDamagedByWeapon(ped, weapon) end

--- @param car Vehicle
--- @param weapon int
--- @return bool result
function hasCarBeenDamagedByWeapon(car, weapon) end

--- @param ped Ped
function explodeCharHead(ped) end

--- @param boat Vehicle
--- @param anchor bool
function anchorBoat(boat, anchor) end

--- @param car Vehicle
--- @return int fire
function startCarFire(car) end

--- @param ped Ped
--- @return int fire
function startCharFire(ped) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param modelId Model
--- @return Vehicle car
function getRandomCarOfTypeInArea(cornerAX, cornerAY, cornerBX, cornerBY, modelId) end

--- @param car Vehicle
--- @return bool result
function hasResprayHappened(car) end

--- @param mode int
function setCameraZoom(mode) end

--- @param modelId Model
--- @param type int
--- @param ammo int
--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Pickup pickup
function createPickupWithAmmo(modelId, type, ammo, atX, atY, atZ) end

--- @param car1 Vehicle
--- @param car2 Vehicle
function setCarRamCar(car1, car2) end

--- @param player Player
--- @param infiniteRun bool
function setPlayerNeverGetsTired(player, infiniteRun) end

--- @param player Player
--- @param fastReload bool
function setPlayerFastReload(player, fastReload) end

--- @param ped Ped
--- @param bleeding bool
function setCharBleeding(ped, bleeding) end

--- @param enable bool
function setFreeResprays(enable) end

--- @param ped Ped
--- @param visible bool
function setCharVisible(ped, visible) end

--- @param car Vehicle
--- @param visible bool
function setCarVisible(car, visible) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param solid bool
--- @param car bool
--- @param actor bool
--- @param object bool
--- @param particle bool
--- @return bool result
function isAreaOccupied(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, solid, car, actor, object, particle) end

--- @param posX float
--- @param posY float
--- @param gxtString GxtString
function displayText(posX, posY, gxtString) end

--- @param sizeX float
--- @param sizeY float
function setTextScale(sizeX, sizeY) end

--- @param r int
--- @param g int
--- @param b int
--- @param a int
function setTextColour(r, g, b, a) end

--- @param alignJustify bool
function setTextJustify(alignJustify) end

--- @param centered bool
function setTextCentre(centered) end

--- @param linewidth float
function setTextWrapx(linewidth) end

--- @param linewidth float
function setTextCentreSize(linewidth) end

--- @param background bool
function setTextBackground(background) end

--- @param proportional bool
function setTextProportional(proportional) end

--- @param font int
function setTextFont(font) end

--- @param object Object
--- @param fromAngle float
--- @param toAngle float
--- @param flag bool
--- @return bool result
function rotateObject(object, fromAngle, toAngle, flag) end

--- @param object Object
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param speedX float
--- @param speedY float
--- @param speedZ float
--- @param collisionCheck bool
--- @return bool result
function slideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collisionCheck) end

--- @param ped Ped
function removeCharElegantly(ped) end

--- @param ped Ped
--- @param enabled bool
function setCharStayInSamePlace(ped, enabled) end

--- @param explosionType int
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @return bool result
function isExplosionInArea(explosionType, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param object Object
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
function placeObjectRelativeToCar(object, car, offsetX, offsetY, offsetZ) end

--- @param object Object
--- @param targetable bool
function makeObjectTargettable(object, targetable) end

--- @param ped Ped
--- @param points int
function addArmourToChar(ped, points) end

--- @param garage GxtString
function openGarage(garage) end

--- @param garage GxtString
function closeGarage(garage) end

--- @param ped Ped
--- @param placeAtX float
--- @param placeAtY float
--- @param placeAtZ float
function warpCharFromCarToCoord(ped, placeAtX, placeAtY, placeAtZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @param modelId Model
--- @param visibility bool
function setVisibilityOfClosestObjectOfType(atX, atY, atZ, radius, modelId, visibility) end

--- @param ped1 Ped
--- @param ped2 Ped
--- @return bool result
function hasCharSpottedChar(ped1, ped2) end

--- @param object Object
--- @return bool result
function hasObjectBeenDamaged(object) end

--- @param ped Ped
--- @param car Vehicle
function warpCharIntoCar(ped, car) end

--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
--- @param time int
--- @param style int
function printWith2NumbersBig(gxtString, numbers1, numbers2, time, style) end

function setCameraBehindPlayer() end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Ped ped
function createRandomChar(atX, atY, atZ) end

--- @param float1 float
--- @param float2 float
--- @param float3 float
--- @param float4 float
--- @param float5 float
--- @param float6 float
--- @return bool result
function isSniperBulletInArea(float1, float2, float3, float4, float5, float6) end

--- @param object Object
--- @param velocityInDirectionX float
--- @param velocityInDirectionY float
--- @param velocityInDirectionZ float
function setObjectVelocity(object, velocityInDirectionX, velocityInDirectionY, velocityInDirectionZ) end

--- @param object Object
--- @param collision bool
function setObjectCollision(object, collision) end

--- @param gxtString GxtString
--- @param string GxtString
--- @param time1 int
--- @param time2 int
function printStringInStringNow(gxtString, string, time1, time2) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @return bool result
function isPointObscuredByAMissionEntity(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

function loadAllModelsNow() end

--- @param object Object
--- @param velocityX float
--- @param velocityY float
--- @param velocityZ float
function addToObjectVelocity(object, velocityX, velocityY, velocityZ) end

--- @param texture int
--- @param positionX float
--- @param positionY float
--- @param width float
--- @param height float
--- @param r int
--- @param g int
--- @param b int
--- @param a int
function drawSprite(texture, positionX, positionY, width, height, r, g, b, a) end

--- @param positionX float
--- @param positionY float
--- @param width float
--- @param height float
--- @param r int
--- @param g int
--- @param b int
--- @param a int
function drawRect(positionX, positionY, width, height, r, g, b, a) end

--- @param name string
--- @return int id
function loadSprite(name) end

--- @param txd zstring
--- @return bool result
function loadTextureDictionary(txd) end

function removeTextureDictionary() end

--- @param object Object
--- @param moveable bool
function setObjectDynamic(object, moveable) end

--- @param ped Ped
--- @param animation string
--- @param speed float
function setCharAnimSpeed(ped, animation, speed) end

--- @param music int
function playMissionPassedTune(music) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @param area bool
function clearArea(atX, atY, atZ, radius, area) end

--- @param timer bool
function freezeOnscreenTimer(timer) end

--- @param car Vehicle
--- @param siren bool
function switchCarSiren(car, siren) end

--- @param car Vehicle
--- @param watertight bool
function setCarWatertight(car, watertight) end

--- @param ped Ped
--- @param locked bool
function setCharCantBeDraggedOut(ped, locked) end

--- @param car Vehicle
--- @param coordX float
--- @param coordY float
function turnCarToFaceCoord(car, coordX, coordY) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
function drawSphere(atX, atY, atZ, radius) end

--- @param car Vehicle
--- @param action int
function setCarStatus(car, action) end

--- @param ped Ped
--- @return bool result
function isCharMale(ped) end

--- @param float1 float
--- @param float2 float
--- @param float3 float
function policeRadioMessage(float1, float2, float3) end

--- @param car Vehicle
--- @param strong bool
function setCarStrong(car, strong) end

--- @param int1 bool
function switchRubbish(int1) end

--- @param streaming bool
function switchStreaming(streaming) end

--- @param garage GxtString
--- @return bool result
function isGarageOpen(garage) end

--- @param garage GxtString
--- @return bool result
function isGarageClosed(garage) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @param from Model
--- @param to Model
function swapNearestBuildingModel(atX, atY, atZ, radius, from, to) end

--- @param cutsceneOnly bool
function switchWorldProcessing(cutsceneOnly) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function clearAreaOfCars(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @return int sphere
function addSphere(atX, atY, atZ, radius) end

--- @param sphere int
function removeSphere(sphere) end

--- @param player Player
--- @param ignored bool
function setEveryoneIgnorePlayer(player, ignored) end

--- @param ped Ped
--- @return Vehicle car
function storeCarCharIsInNoSave(ped) end

--- @param timer VarId
--- @param type int
--- @param gxtString GxtString
function displayOnscreenTimerWithString(timer, type, gxtString) end

--- @param var VarId
--- @param type bool
--- @param gxtString GxtString
function displayOnscreenCounterWithString(var, type, gxtString) end

--- @param coordsX float
--- @param coordsY float
--- @param coordsZ float
--- @param zAngle float
function createRandomCarForCarPark(coordsX, coordsY, coordsZ, zAngle) end

--- @param sensitivity float
function setWantedMultiplier(sensitivity) end

function setCameraInFrontOfPlayer() end

--- @param car Vehicle
--- @return bool result
function isCarVisiblyDamaged(car) end

--- @param object Object
--- @return bool result
function doesObjectExist(object) end

--- @param atX float
--- @param atY float
--- @param atZ float
function loadScene(atX, atY, atZ) end

--- @param car Vehicle
--- @param stuckCheckDistance float
--- @param time int
function addStuckCarCheck(car, stuckCheckDistance, time) end

--- @param car Vehicle
function removeStuckCarCheck(car) end

--- @param car Vehicle
--- @return bool result
function isCarStuck(car) end

--- @param asId int
--- @param name int
function loadMissionAudio(asId, name) end

--- @param id int
--- @return bool result
function hasMissionAudioLoaded(id) end

--- @param id int
function playMissionAudio(id) end

--- @param id int
--- @return bool result
function hasMissionAudioFinished(id) end

--- @param X float
--- @param Y float
--- @param Z float
--- @return float nodeX
--- @return float nodeY
--- @return float nodeZ
--- @return float angle
function getClosestCarNodeWithHeading(X, Y, Z) end

--- @param int1 int
--- @param int2 int
--- @return bool result
function hasImportGarageSlotBeenFilled(int1, int2) end

--- @param text GxtString
function clearThisPrint(text) end

--- @param text GxtString
function clearThisBigPrint(text) end

--- @param id int
--- @param locationX float
--- @param locationY float
--- @param locationZ float
function setMissionAudioPosition(id, locationX, locationY, locationZ) end

function activateSaveMenu() end

--- @return bool result
function hasSaveGameFinished() end

--- @param int1 int
function noSpecialCameraForThisGarage(int1) end

--- @param pickup Pickup
--- @return Marker marker
function addBlipForPickup(pickup) end

--- @param multiplier float
function setPedDensityMultiplier(multiplier) end

--- @param int1 bool
function setTextDrawBeforeFade(int1) end

--- @return int collected
function getCollectable1sCollected() end

--- @param antialiased bool
function setSpritesDrawBeforeFade(antialiased) end

--- @param alignRight bool
function setTextRightJustify(alignRight) end

--- @param gxtString GxtString
function printHelp(gxtString) end

function clearHelp() end

--- @param hudComponent int
function flashHudObject(hudComponent) end

--- @param int1 bool
function setGenerateCarsAroundCamera(int1) end

function clearSmallPrints() end

--- @param car Vehicle
--- @param disableFlippedExplosion bool
function setUpsidedownCarNotDamaged(car, disableFlippedExplosion) end

--- @param player Player
--- @return bool result
function isPlayerControllable(player) end

--- @param player Player
function makePlayerSafe(player) end

--- @param car Vehicle
--- @return int primaryColor
--- @return int secondaryColor
function getCarColours(car) end

--- @param enable bool
function setAllCarsCanBeDamaged(enable) end

--- @param car Vehicle
--- @param enable bool
function setCarCanBeDamaged(car, enable) end

--- @param player Player
--- @param handlingResponsiveness int
function setDrunkInputDelay(player, handlingResponsiveness) end

--- @param ped Ped
--- @param money int
function setCharMoney(ped, money) end

--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @return float X
--- @return float Y
--- @return float Z
function getOffsetFromObjectInWorldCoords(object, offsetX, offsetY, offsetZ) end

--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @return float X
--- @return float Y
--- @return float Z
function getOffsetFromCarInWorldCoords(car, offsetX, offsetY, offsetZ) end

--- @param id int
function clearMissionAudio(id) end

--- @param player Player
--- @param free bool
function setFreeHealthCare(player, free) end

--- @param mission int
function loadAndLaunchMissionInternal(mission) end

--- @param object Object
--- @param drawLast bool
function setObjectDrawLast(object, drawLast) end

--- @param ped Ped
--- @param int int
--- @return int ammo
function getAmmoInCharWeapon(ped, int) end

--- @param clip float
function setNearClip(clip) end

--- @param radioStation int
function setRadioChannel(radioStation) end

--- @param car Vehicle
--- @param traction float
function setCarTraction(car, traction) end

--- @return bool result
function areMeasurementsInMetres() end

--- @param meters float
--- @return float feet
function convertMetresToFeet(meters) end

--- @param car Vehicle
--- @param avoidLevelTransitions bool
function setCarAvoidLevelTransitions(car, avoidLevelTransitions) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function clearAreaOfChars(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param totalMissions int
function setTotalNumberOfMissions(totalMissions) end

--- @param metric int
--- @return int imperial
function convertMetresToFeetInt(metric) end

--- @param stat int
--- @param to int
function registerFastestTime(stat, to) end

--- @param int1 int
--- @param int2 int
function registerHighestScore(int1, int2) end

--- @param ped Ped
--- @param car Vehicle
--- @param passengerSeat int
function warpCharIntoCarAsPassenger(ped, car, passengerSeat) end

--- @param car Vehicle
--- @param seat int
--- @return bool result
function isCarPassengerSeatFree(car, seat) end

--- @param car Vehicle
--- @param seat int
--- @return Ped ped
function getCharInCarPassengerSeat(car, seat) end

--- @param ped Ped
--- @param flag bool
function setCharIsChrisCriminal(ped, flag) end

function startCredits() end

function stopCredits() end

--- @return bool result
function areCreditsFinished() end

--- @param enable bool
function setMusicDoesFade(enable) end

--- @param int int
--- @return Model modelId
function getCarModel(int) end

--- @return bool result
function areAnyCarCheatsActivated() end

--- @param ped Ped
--- @param enable bool
function setCharSuffersCriticalHits(ped, enable) end

--- @param ped Ped
--- @param car Vehicle
--- @return bool result
function isCharSittingInCar(ped, car) end

--- @param ped Ped
--- @return bool result
function isCharSittingInAnyCar(ped) end

--- @param ped Ped
--- @return bool result
function isCharOnFoot(ped) end

--- @param gxtString GxtString
function loadSplashScreen(gxtString) end

--- @param int1 int
function setJamesCarOnPathToPlayer(int1) end

--- @param object Object
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function setObjectRotation(object, rotationX, rotationY, rotationZ) end

--- @return float X
--- @return float Y
--- @return float Z
function getDebugCameraCoordinates() end

--- @param player Player
--- @param ped Ped
--- @return bool result
function isPlayerTargettingChar(player, ped) end

--- @param player Player
--- @param object Object
--- @return bool result
function isPlayerTargettingObject(player, object) end

--- @param x float
--- @param y float
--- @param gxtString GxtString
--- @param number int
function displayTextWithNumber(x, y, gxtString, number) end

--- @param x float
--- @param y float
--- @param gxtString GxtString
--- @param numbersX int
--- @param numbersY int
function displayTextWith2Numbers(x, y, gxtString, numbersX, numbersY) end

function failCurrentMission() end

--- @param delay float
--- @param time int
function setInterpolationParameters(delay, time) end

--- @return float X
--- @return float Y
--- @return float Z
function getDebugCameraPointAt() end

--- @param ped Ped
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param position int
--- @param shootingAngleLimit float
--- @param weapon int
function attachCharToCar(ped, car, offsetX, offsetY, offsetZ, position, shootingAngleLimit, weapon) end

--- @param ped Ped
function detachCharFromCar(ped) end

--- @param car Vehicle
--- @param flag bool
function setCarStayInFastLane(car, flag) end

--- @param ped Ped
function clearCharLastWeaponDamage(ped) end

--- @param car Vehicle
function clearCarLastWeaponDamage(car) end

--- @param float1 float
--- @param float2 float
--- @param float3 float
--- @param float4 float
--- @param int5 bool
--- @param int6 bool
--- @param int7 bool
--- @param int8 bool
--- @param int9 bool
--- @return int int10
function getRandomCopInArea(float1, float2, float3, float4, int5, int6, int7, int8, int9) end

--- @param car Vehicle
--- @return Ped ped
function getDriverOfCar(car) end

--- @param ped Ped
--- @return int followers
function getNumberOfFollowers(ped) end

--- @param player Player
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
--- @param RCModel Model
function giveRemoteControlledModelToPlayer(player, atX, atY, atZ, angle, RCModel) end

--- @param ped Ped
--- @return int weapon
function getCurrentCharWeapon(ped) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeansObject2d(ped, object, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharOnFootObject2d(ped, object, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateCharInCarObject2d(ped, object, radiusX, radiusY, sphere) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharAnyMeansObject3d(ped, object, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharOnFootObject3d(ped, object, radiusX, radiusY, radiusZ, sphere) end

--- @param ped Ped
--- @param object Object
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param sphere bool
--- @return bool result
function locateCharInCarObject3d(ped, object, radiusX, radiusY, radiusZ, sphere) end

--- @param car Vehicle
--- @param action int
--- @param time int
function setCarTempAction(car, action, time) end

--- @param ped Ped
--- @return bool result
function isCharOnAnyBike(ped) end

--- @param ped Ped
--- @param pedtype int
--- @return bool result
function canCharSeeDeadChar(ped, pedtype) end

--- @param float1 float
function setEnterCarRangeMultiplier(float1) end

--- @param player Player
--- @return Vehicle car
function getRemoteControlledCar(player) end

--- @return bool result
function isPcVersion() end

--- @param modelId Model
--- @return bool result
function isModelAvailable(modelId) end

--- @param ped Ped
--- @param muted bool
function shutCharUp(ped, muted) end

--- @param detonation bool
function setEnableRcDetonate(detonation) end

--- @param car Vehicle
--- @param routeSeed int
function setCarRandomRouteSeed(car, routeSeed) end

--- @param pickupX float
--- @param pickupY float
--- @param pickupZ float
--- @return bool result
function isAnyPickupAtCoords(pickupX, pickupY, pickupZ) end

--- @param ped Ped
function removeAllCharWeapons(ped) end

--- @param ped Ped
--- @param weapon int
--- @return bool result
function hasCharGotWeapon(ped, weapon) end

--- @param tank int
--- @param detonate bool
function setTankDetonateCars(tank, detonate) end

--- @param joystick int
--- @return int offset1
--- @return int offset2
--- @return int offset3
--- @return int offset4
function getPositionOfAnalogueSticks(joystick) end

--- @param car Vehicle
--- @return bool result
function isCarOnFire(car) end

--- @param car Vehicle
--- @param tire int
--- @return bool result
function isCarTireBurst(car, tire) end

--- @param int1 int
--- @param float2 float
function initialiseObjectPath(int1, float2) end

--- @param int1 int
--- @param int2 int
function setObjectPathSpeed(int1, int2) end

--- @param int1 int
--- @param float2 float
function setObjectPathPosition(int1, float2) end

--- @param int1 int
function clearObjectPath(int1) end

--- @param heli Vehicle
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param altitudeMin float
--- @param altitudeMax float
function heliGotoCoords(heli, toX, toY, toZ, altitudeMin, altitudeMax) end

--- @param ped Ped
--- @return float coordsX
--- @return float coordsY
--- @return float coordsZ
function getDeadCharPickupCoords(ped) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param int4 int
--- @param int5 int
--- @return Pickup pickup
function createProtectionPickup(atX, atY, atZ, int4, int5) end

--- @param ped Ped
--- @return bool result
function isCharInAnyBoat(ped) end

--- @param ped Ped
--- @return bool result
function isCharInAnyHeli(ped) end

--- @param ped Ped
--- @return bool result
function isCharInAnyPlane(ped) end

--- @param ped Ped
--- @return bool result
function isCharInWater(ped) end

--- @param ped Ped
--- @param slot int
--- @return int weapon
--- @return int ammo
--- @return Model modelId
function getCharWeaponInSlot(ped, slot) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param height float
--- @param radius float
--- @return float float6
--- @return float float7
--- @return float float8
--- @return float float9
--- @return float float10
--- @return float float11
--- @return float float12
function getClosestStraightRoad(atX, atY, atZ, height, radius) end

--- @param car Vehicle
--- @param speed float
function setCarForwardSpeed(car, speed) end

--- @param interior int
function setInteriorVisible(interior) end

--- @param car Vehicle
--- @param convoy bool
function markCarAsConvoyCar(car, convoy) end

--- @param int1 int
function resetHavocCausedByPlayer(int1) end

--- @param int1 int
--- @return int int2
function getHavocCausedByPlayer(int1) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param type int
function createScriptRoadblock(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, type) end

function clearAllScriptRoadblocks() end

--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @return float X
--- @return float Y
--- @return float Z
function getOffsetFromCharInWorldCoords(ped, offsetX, offsetY, offsetZ) end

--- @param ped Ped
--- @return bool result
function hasCharBeenPhotographed(ped) end

--- @param int1 bool
function switchSecurityCamera(int1) end

--- @param ped Ped
--- @return bool result
function isCharInFlyingVehicle(ped) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param icon int
--- @return Marker marker
function addShortRangeSpriteBlipForCoord(atX, atY, atZ, icon) end

--- @param heli Vehicle
--- @param angle float
function setHeliOrientation(heli, angle) end

--- @param heli Vehicle
function clearHeliOrientation(heli) end

--- @param plane int
--- @param X float
--- @param Y float
--- @param Z float
--- @param z1 float
--- @param z2 float
function planeGotoCoords(plane, X, Y, Z, z1, z2) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param type int
--- @return float X
--- @return float Y
--- @return float Z
function getNthClosestCarNode(X, Y, Z, type) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param type int
--- @param flare int
--- @param r int
--- @param g int
--- @param b int
function drawWeaponshopCorona(X, Y, Z, radius, type, flare, r, g, b) end

--- @param enable bool
function setEnableRcDetonateOnContact(enable) end

--- @param ped Ped
--- @param locked bool
function freezeCharPosition(ped, locked) end

--- @param ped Ped
--- @param drowns bool
function setCharDrownsInWater(ped, drowns) end

--- @param object Object
--- @param set bool
function setObjectRecordsCollisions(object, set) end

--- @param object Object
--- @return bool result
function hasObjectCollidedWithAnything(object) end

function removeRcBuggy() end

--- @param ped Ped
--- @return int armour
function getCharArmour(ped) end

--- @param heli Vehicle
--- @param limiter bool
function setHeliStabiliser(heli, limiter) end

--- @param car Vehicle
--- @param radius int
function setCarStraightLineDistance(car, radius) end

--- @param car Vehicle
function popCarBoot(car) end

--- @param player Player
--- @param shut bool
function shutPlayerUp(player, shut) end

--- @param player Player
--- @param flag int
--- @param time int
function setPlayerMood(player, flag, time) end

--- @param X float
--- @param Y float
function requestCollision(X, Y) end

--- @param object Object
--- @param X float
--- @param Y float
--- @param radiusX float
--- @param radiusY float
--- @param sphere bool
--- @return bool result
function locateObject2d(object, X, Y, radiusX, radiusY, sphere) end

--- @param object Object
--- @param X float
--- @param Y float
--- @param Z float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param flag bool
--- @return bool result
function locateObject3d(object, X, Y, Z, radiusX, radiusY, radiusZ, flag) end

--- @param object Object
--- @return bool result
function isObjectInWater(object) end

--- @param object Object
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param sphere bool
--- @return bool result
function isObjectInArea2d(object, cornerAX, cornerAY, cornerBX, cornerBY, sphere) end

--- @param object Object
--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @param flag bool
--- @return bool result
function isObjectInArea3d(object, cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ, flag) end

--- @param ped Ped
--- @param crouch bool
function taskToggleDuck(ped, crouch) end

--- @param animation string
function requestAnimation(animation) end

--- @param animation string
--- @return bool result
function hasAnimationLoaded(animation) end

--- @param animation string
function removeAnimation(animation) end

--- @param ped Ped
--- @return bool result
function isCharWaitingForWorldCollision(ped) end

--- @param car Vehicle
--- @return bool result
function isCarWaitingForWorldCollision(car) end

--- @param ped Ped
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param orientation int
--- @param angle float
--- @param lockWeapon int
function attachCharToObject(ped, object, offsetX, offsetY, offsetZ, orientation, angle, lockWeapon) end

--- @param text VarId
--- @param type int
--- @param line int
--- @param gxtString GxtString
function displayNthOnscreenCounterWithString(text, type, line, gxtString) end

--- @param type int
--- @param rectX1 float
--- @param rectY1 float
--- @param rectX2 float
--- @param rectY2 float
--- @param spawnAX float
--- @param spawnAY float
--- @param headedTowards1X float
--- @param headedTowards1Y float
--- @param spawnBX float
--- @param spawnBY float
--- @param headedTowards2X float
--- @param headedTowards2Y float
function addSetPiece(type, rectX1, rectY1, rectX2, rectY2, spawnAX, spawnAY, headedTowards1X, headedTowards1Y, spawnBX, spawnBY, headedTowards2X, headedTowards2Y) end

--- @param color int
--- @param fade bool
function setExtraColours(color, fade) end

--- @param fade bool
function clearExtraColours(fade) end

--- @param player Player
--- @return int twowheelstime
--- @return float twowheelsdistance
--- @return int wheelietime
--- @return float wheelieDistance
--- @return int stoppieTime
--- @return float stoppieDistance
function getWheelieStats(player) end

--- @param car Vehicle
--- @param tire int
function burstCarTire(car, tire) end

--- @param player Player
--- @param bodypart string
--- @param skin int
--- @return bool result
function isPlayerWearing(player, bodypart, skin) end

--- @param player Player
--- @param mode bool
function setPlayerCanDoDriveBy(player, mode) end

--- @param pedtype int
--- @param modelId Model
--- @param X float
--- @param Y float
--- @param Z float
--- @return int handleAs
function createSwatRope(pedtype, modelId, X, Y, Z) end

--- @param car Model
--- @param variation1 int
--- @param variation2 int
function setCarModelComponents(car, variation1, variation2) end

--- @param car Vehicle
function closeAllCarDoors(car) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @return float distance
function getDistanceBetweenCoords2d(x1, y1, x2, y2) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @return float distance
function getDistanceBetweenCoords3d(x1, y1, z1, x2, y2, z2) end

--- @param object Object
--- @param car Vehicle
function sortOutObjectCollisionWithCar(object, car) end

--- @return int level
function getMaxWantedLevel() end

--- @param text GxtString
function printHelpForever(text) end

--- @param text GxtString
--- @param number int
function printHelpForeverWithNumber(text, number) end

--- @param pX float
--- @param pY float
--- @param pZ float
--- @param gxtString GxtString
--- @return Pickup pickup
function createLockedPropertyPickup(pX, pY, pZ, gxtString) end

--- @param pX float
--- @param pY float
--- @param pZ float
--- @param price int
--- @param gxtString GxtString
--- @return Pickup pickup
function createForsalePropertyPickup(pX, pY, pZ, price, gxtString) end

--- @param car Vehicle
--- @param locked bool
function freezeCarPosition(car, locked) end

--- @param ped Ped
--- @param byActor Ped
--- @return bool result
function hasCharBeenDamagedByChar(ped, byActor) end

--- @param ped Ped
--- @param byCar Vehicle
--- @return bool result
function hasCharBeenDamagedByCar(ped, byCar) end

--- @param car Vehicle
--- @param byActor Ped
--- @return bool result
function hasCarBeenDamagedByChar(car, byActor) end

--- @param car Vehicle
--- @param byCar Vehicle
--- @return bool result
function hasCarBeenDamagedByCar(car, byCar) end

--- @return int radio
function getRadioChannel() end

--- @param ped Ped
--- @param stay bool
function setCharStayInCarWhenJacked(ped, stay) end

--- @param player Player
--- @param drunk int
function setPlayerDrunkenness(player, drunk) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param modelId Model
--- @return Vehicle car
function getRandomCarOfTypeInAreaNoSave(x1, y1, x2, y2, modelId) end

--- @param car Vehicle
--- @param vulnerability bool
function setCanBurstCarTires(car, vulnerability) end

--- @param car Vehicle
function fireHunterGun(car) end

--- @param ped Ped
--- @param car Vehicle
--- @return bool result
function isCharTouchingVehicle(ped, car) end

--- @param ped Ped
--- @param can bool
function setCharCanBeShotInVehicle(ped, can) end

--- @param table GxtString
function loadMissionText(table) end

--- @param ped Ped
function clearCharLastDamageEntity(ped) end

--- @param car Vehicle
function clearCarLastDamageEntity(car) end

--- @param object Object
--- @param freeze bool
function freezeObjectPosition(object, freeze) end

--- @param ped Ped
--- @param weapon int
function removeWeaponFromChar(ped, weapon) end

--- @param player Player
--- @param fireproof bool
function makePlayerFireProof(player, fireproof) end

--- @param player Player
--- @param increase int
function increasePlayerMaxHealth(player, increase) end

--- @param player Player
--- @param increase int
function increasePlayerMaxArmour(player, increase) end

--- @param car Vehicle
--- @return Ped ped
function createRandomCharAsDriver(car) end

--- @param car Vehicle
--- @param seat int
--- @return Ped ped
function createRandomCharAsPassenger(car, seat) end

--- @param player Player
--- @param ammo int
function ensurePlayerHasDriveByWeapon(player, ammo) end

--- @param heli Vehicle
function makeHeliComeCrashingDown(heli) end

--- @param pX float
--- @param pY float
--- @param pZ float
--- @param type int
function addExplosionNoSound(pX, pY, pZ, type) end

--- @param object Object
--- @param interior int
function linkObjectToInterior(object, interior) end

--- @param ped Ped
--- @param untargetable bool
function setCharNeverTargetted(ped, untargetable) end

--- @return bool result
function wasCutsceneSkipped() end

--- @param ped Ped
--- @return bool result
function isCharInAnyPoliceVehicle(ped) end

--- @param ped Ped
--- @return bool result
function doesCharExist(ped) end

--- @param car Vehicle
--- @return bool result
function doesVehicleExist(car) end

--- @param pX float
--- @param pY float
--- @param pZ float
--- @param icon int
--- @return Marker blip
function addShortRangeSpriteBlipForContactPoint(pX, pY, pZ, icon) end

--- @param toggle bool
function setAllTaxisHaveNitro(toggle) end

--- @param car Vehicle
--- @param keep bool
function freezeCarPositionAndDontLoadCollision(car, keep) end

--- @param ped Ped
--- @param keep bool
function freezeCharPositionAndDontLoadCollision(ped, keep) end

--- @param set bool
function setPlayerIsInStadium(set) end

--- @param enable bool
function displayRadar(enable) end

--- @param stat int
--- @param float float
function registerBestPosition(stat, float) end

--- @param player Player
--- @param zone GxtString
--- @return bool result
function isPlayerInInfoZone(player, zone) end

--- @param car Vehicle
--- @param enable bool
function setLoadCollisionForCarFlag(car, enable) end

--- @param ped Ped
--- @param enable bool
function setLoadCollisionForCharFlag(ped, enable) end

--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param toX float
--- @param toY float
--- @param toZ float
function addBigGunFlash(fromX, fromY, fromZ, toX, toY, toZ) end

--- @return float progress
function getProgressPercentage() end

--- @param car Vehicle
--- @param flag int
function setVehicleToFadeIn(car, flag) end

function registerOddjobMissionPassed() end

--- @param player Player
--- @return bool result
function isPlayerInShortcutTaxi(player) end

--- @param ped Ped
--- @return bool result
function isCharDucking(ped) end

--- @param text VarId
--- @param flashing bool
function setOnscreenCounterFlashWhenFirstDisplayed(text, flashing) end

--- @param shuffle bool
function shuffleCardDecks(shuffle) end

--- @return int card
function fetchNextCard() end

--- @param object Object
--- @return float vecX
--- @return float vecY
--- @return float vecZ
function getObjectVelocity(object) end

--- @return bool result
function isDebugCameraOn() end

--- @param object Object
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function addToObjectRotationVelocity(object, vecX, vecY, vecZ) end

--- @param object Object
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function setObjectRotationVelocity(object, vecX, vecY, vecZ) end

--- @param object Object
--- @return bool result
function isObjectStatic(object) end

--- @param vecX float
--- @param vecY float
--- @param vecX2 float
--- @param vecY2 float
--- @return float angle
function getAngleBetween2dVectors(vecX, vecY, vecX2, vecY2) end

--- @param areaX float
--- @param areaY float
--- @param scaleX float
--- @param scaleY float
--- @param overlapareaX float
--- @param overlapareaY float
--- @param overlapscaleX float
--- @param overlapscaleY float
--- @return bool result
function do2dRectanglesCollide(areaX, areaY, scaleX, scaleY, overlapareaX, overlapareaY, overlapscaleX, overlapscaleY) end

--- @param object Object
--- @return float axisX
--- @return float axisY
--- @return float axisZ
function getObjectRotationVelocity(object) end

--- @param object Object
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function addVelocityRelativeToObjectVelocity(object, vecX, vecY, vecZ) end

--- @param object Object
--- @return float speed
function getObjectSpeed(object) end

--- @param l1x1 float
--- @param l1y1 float
--- @param l1x2 float
--- @param l1y2 float
--- @param l2x1 float
--- @param l2y1 float
--- @param l2x2 float
--- @param l2y2 float
--- @return bool result
--- @return float X
--- @return float Y
function get2dLinesIntersectPoint(l1x1, l1y1, l1x2, l1y2, l2x1, l2y1, l2x2, l2y2) end

--- @param ped Ped
--- @param timeMS int
function taskPause(ped, timeMS) end

--- @param ped Ped
--- @param timeMS int
function taskStandStill(ped, timeMS) end

--- @param ped Ped
--- @param int2 bool
--- @param time int
function taskFallAndGetUp(ped, int2, time) end

--- @param ped Ped
--- @param jump bool
function taskJump(ped, jump) end

--- @param ped Ped
--- @param timeMS int
function taskTired(ped, timeMS) end

--- @param ped Ped
function taskDie(ped) end

--- @param ped Ped
--- @param lookAt int
--- @param timeMS int
function taskLookAtChar(ped, lookAt, timeMS) end

--- @param ped Ped
--- @param lookAt int
--- @param timeMS int
function taskLookAtVehicle(ped, lookAt, timeMS) end

--- @param ped Ped
--- @param audio int
function taskSay(ped, audio) end

--- @param ped Ped
function taskShakeFist(ped) end

--- @param ped Ped
function taskCower(ped) end

--- @param ped Ped
--- @param timeMS int
function taskHandsUp(ped, timeMS) end

--- @param ped Ped
--- @param timeMS int
function taskDuck(ped, timeMS) end

--- @param ped Ped
function taskUseAtm(ped) end

--- @param ped Ped
function taskScratchHead(ped) end

--- @param ped Ped
--- @param timeMS int
function taskLookAbout(ped, timeMS) end

--- @param ped Ped
--- @param car Vehicle
--- @param time int
--- @param passengerSeat int
function taskEnterCarAsPassenger(ped, car, time, passengerSeat) end

--- @param ped Ped
--- @param car Vehicle
--- @param timeMS int
function taskEnterCarAsDriver(ped, car, timeMS) end

--- @param ped Ped
--- @param car Vehicle
function taskLeaveCar(ped, car) end

--- @param ped Ped
--- @param car Vehicle
--- @param X float
--- @param Y float
--- @param Z float
function taskLeaveCarAndFlee(ped, car, X, Y, Z) end

--- @param ped Ped
--- @param car Vehicle
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param speed float
--- @param int7 int
--- @param model int
--- @param int9 int
function taskCarDriveToCoord(ped, car, toX, toY, toZ, speed, int7, model, int9) end

--- @param ped Ped
--- @param hijackCar Vehicle
--- @param searchRadius float
--- @param trafficBehavior int
function taskCarDriveWander(ped, hijackCar, searchRadius, trafficBehavior) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param mode int
--- @param time int
function taskGoStraightToCoord(ped, toX, toY, toZ, mode, time) end

--- @param ped Ped
--- @param angle float
function taskAchieveHeading(ped, angle) end

function flushRoute() end

--- @param pointX float
--- @param pointY float
--- @param pointZ float
function extendRoute(pointX, pointY, pointZ) end

--- @param ped Ped
--- @param flags1 int
--- @param flags2 int
function taskFollowPointRoute(ped, flags1, flags2) end

--- @param ped Ped
--- @param toActor Ped
--- @param timelimit int
--- @param stopWithinRadius float
function taskGotoChar(ped, toActor, timelimit, stopWithinRadius) end

--- @param ped Ped
--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param awayRadius float
--- @param timelimit int
function taskFleePoint(ped, fromX, fromY, fromZ, awayRadius, timelimit) end

--- @param ped Ped
--- @param fromActor Ped
--- @param radius float
--- @param timelimit int
function taskFleeChar(ped, fromActor, radius, timelimit) end

--- @param ped Ped
--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param stopAtRadius float
--- @param timelimit int
function taskSmartFleePoint(ped, fromX, fromY, fromZ, stopAtRadius, timelimit) end

--- @param ped Ped
--- @param fromActor Ped
--- @param originRadius float
--- @param timelimit int
function taskSmartFleeChar(ped, fromActor, originRadius, timelimit) end

--- @param ped Ped
function taskWanderStandard(ped) end

--- @param ped Ped
--- @param killActor Ped
function taskKillCharOnFoot(ped, killActor) end

--- @param car Vehicle
--- @param path int
function startPlaybackRecordedCar(car, path) end

--- @param car Vehicle
function stopPlaybackRecordedCar(car) end

--- @param car Vehicle
function pausePlaybackRecordedCar(car) end

--- @param car Vehicle
function unpausePlaybackRecordedCar(car) end

--- @param car Vehicle
--- @param followCar Vehicle
function setCarEscortCarLeft(car, followCar) end

--- @param car Vehicle
--- @param followCar Vehicle
function setCarEscortCarRight(car, followCar) end

--- @param car Vehicle
--- @param followCar Vehicle
function setCarEscortCarRear(car, followCar) end

--- @param car Vehicle
--- @param followCar Vehicle
function setCarEscortCarFront(car, followCar) end

--- @param ped Ped
--- @param pathX float
--- @param pathY float
--- @param pathZ float
--- @param mode int
--- @param time int
function taskFollowPathNodesToCoord(ped, pathX, pathY, pathZ, mode, time) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharInAngledArea2d(ped, x1, y1, x2, y2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharInAngledAreaOnFoot2d(ped, x1, y1, x2, y2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharInAngledAreaInCar2d(ped, x1, y1, x2, y2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param height float
--- @param flag bool
--- @return bool result
function isCharStoppedInAngledArea2d(ped, x1, y1, x2, y2, height, flag) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharStoppedInAngledAreaOnFoot2d(ped, x1, y1, x2, y2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param height float
--- @param flag bool
--- @return bool result
function isCharStoppedInAngledAreaInCar2d(ped, x1, y1, x2, y2, height, flag) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharInAngledArea3d(ped, x1, y1, z1, x2, y2, z2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isCharInAngledAreaOnFoot3d(ped, x1, y1, z1, x2, y2, z2, angle, sphere) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param depth float
--- @param flag bool
--- @return bool result
function isCharInAngledAreaInCar3d(ped, x1, y1, z1, x2, y2, z2, depth, flag) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param depth float
--- @param flag bool
--- @return bool result
function isCharStoppedInAngledArea3d(ped, x1, y1, z1, x2, y2, z2, depth, flag) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param depth float
--- @param flag bool
--- @return bool result
function isCharStoppedInAngledAreaOnFoot3d(ped, x1, y1, z1, x2, y2, z2, depth, flag) end

--- @param ped Ped
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param depth float
--- @param flag bool
--- @return bool result
function isCharStoppedInAngledAreaInCar3d(ped, x1, y1, z1, x2, y2, z2, depth, flag) end

--- @param ped Ped
--- @return bool result
function isCharInTaxi(ped) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param mode int
--- @param useCar Vehicle
function taskGoToCoordAnyMeans(ped, toX, toY, toZ, mode, useCar) end

--- @param pX float
--- @param pY float
--- @return float zAngle
function getHeadingFromVector2d(pX, pY) end

--- @param ped Ped
--- @param animation string
--- @param IFP string
--- @param framedelta float
--- @param loop bool
--- @param lockX bool
--- @param lockY bool
--- @param lockF bool
--- @param time int
function taskPlayAnim(ped, animation, IFP, framedelta, loop, lockX, lockY, lockF, time) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
function loadPathNodesInArea(x1, y1, x2, y2) end

function releasePathNodes() end

--- @param type int
--- @return int maker
function loadCharDecisionMaker(type) end

--- @param ped Ped
--- @param maker int
function setCharDecisionMaker(ped, maker) end

--- @param shadow int
--- @param r int
--- @param g int
--- @param b int
--- @param a int
function setTextDropshadow(shadow, r, g, b, a) end

--- @param car Vehicle
--- @return bool result
function isPlaybackGoingOnForCar(car) end

--- @param ped Ped
--- @param accuracy float
function setSenseRange(ped, accuracy) end

--- @param ped Ped
--- @param animation string
--- @return bool result
function isCharPlayingAnim(ped, animation) end

--- @param ped Ped
--- @param animation string
--- @param flag bool
function setCharAnimPlayingFlag(ped, animation, flag) end

--- @param ped Ped
--- @param animation string
--- @return float time
function getCharAnimCurrentTime(ped, animation) end

--- @param ped Ped
--- @param animation string
--- @param time float
function setCharAnimCurrentTime(ped, animation, time) end

--- @return int task
function openSequenceTask() end

--- @param task int
function closeSequenceTask(task) end

--- @param ped Ped
--- @param task int
function performSequenceTask(ped, task) end

--- @param ped Ped
--- @param enable bool
function setCharCollision(ped, enable) end

--- @param ped Ped
--- @param animation string
--- @return float totalTime
function getCharAnimTotalTime(ped, animation) end

--- @param task int
function clearSequenceTask(task) end

--- @param originX float
--- @param originY float
--- @param originZ float
--- @param zAngle float
--- @param unknownAngle float
--- @param taskSequence int
--- @return int handle
function addAttractor(originX, originY, originZ, zAngle, unknownAngle, taskSequence) end

--- @param handle int
function clearAttractor(handle) end

--- @param pedtype int
--- @param modelId Model
--- @param ASOrigin int
--- @param task int
--- @return Ped ped
function createCharAtAttractor(pedtype, modelId, ASOrigin, task) end

--- @param ped Ped
--- @param car Vehicle
function taskLeaveCarImmediately(ped, car) end

--- @param stat int
--- @param add int
function incrementIntStat(stat, add) end

--- @param stat int
--- @param add float
function incrementFloatStat(stat, add) end

--- @param stat int
--- @param int int
function decrementIntStat(stat, int) end

--- @param stat int
--- @param float float
function decrementFloatStat(stat, float) end

--- @param stat int
--- @param int int
function registerIntStat(stat, int) end

--- @param stat int
--- @param value float
function registerFloatStat(stat, value) end

--- @param stat int
--- @param int int
function setIntStat(stat, int) end

--- @param stat int
--- @param float float
function setFloatStat(stat, float) end

--- @param ped Ped
--- @param task int
--- @return int status
function getScriptTaskStatus(ped, task) end

--- @param type int
--- @return int group
function createGroup(type) end

--- @param group int
--- @param ped Ped
function setGroupLeader(group, ped) end

--- @param group int
--- @param ped Ped
function setGroupMember(group, ped) end

--- @param group int
function removeGroup(group) end

--- @param ped Ped
function taskLeaveAnyCar(ped) end

--- @param ped Ped
--- @param weapon int
--- @param flags int
--- @param time int
--- @param chance int
function taskKillCharOnFootWhileDucking(ped, weapon, flags, time, chance) end

--- @param ped Ped
--- @param aimAt int
--- @param timeMS int
function taskAimGunAtChar(ped, aimAt, timeMS) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param mode int
--- @param turnRadius float
--- @param stopRadius float
--- @param lookAtActor int
function taskGoToCoordWhileShooting(ped, toX, toY, toZ, mode, turnRadius, stopRadius, lookAtActor) end

--- @param ped Ped
--- @param stay bool
function taskStayInSamePlace(ped, stay) end

--- @param ped Ped
--- @param rotateTo int
function taskTurnCharToFaceChar(ped, rotateTo) end

--- @param ped Ped
--- @param origin int
--- @return bool result
function isCharAtScriptedAttractor(ped, origin) end

--- @param pack int
--- @param loop bool
function setSequenceToRepeat(pack, loop) end

--- @param ped Ped
--- @return int progess
function getSequenceProgress(ped) end

--- @param ped Ped
function clearLookAt(ped) end

--- @param ped Ped
--- @param dist float
function setFollowNodeThresholdDistance(ped, dist) end

--- @param particle string
--- @param pX float
--- @param pY float
--- @param pZ float
--- @param type int
--- @return Particle particle
function createFxSystem(particle, pX, pY, pZ, type) end

--- @param particle Particle
function playFxSystem(particle) end

--- @param particle Particle
function stopFxSystem(particle) end

--- @param particle Particle
function playAndKillFxSystem(particle) end

--- @param particle Particle
function killFxSystem(particle) end

--- @param stat int
--- @return int stat
function getIntStat(stat) end

--- @param stat int
--- @return float stat
function getFloatStat(stat) end

--- @param object Object
--- @param fireproof bool
function setObjectRenderScorched(object, fireproof) end

--- @param ped Ped
--- @param lookAt int
--- @param timeMS int
function taskLookAtObject(ped, lookAt, timeMS) end

--- @param angle float
--- @return float float
function limitAngle(angle) end

--- @param car Vehicle
--- @param door int
function openCarDoor(car, door) end

--- @param pickup Pickup
--- @return float X
--- @return float Y
--- @return float Z
function getPickupCoordinates(pickup) end

--- @param maker int
function removeDecisionMaker(maker) end

--- @param ped Ped
--- @return Model modelId
function getCharModel(ped) end

--- @param ped Ped
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param timeMS int
function taskAimGunAtCoord(ped, atX, atY, atZ, timeMS) end

--- @param ped Ped
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param timeMS int
function taskShootAtCoord(ped, atX, atY, atZ, timeMS) end

--- @param particle string
--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param type int
--- @return Particle particle
function createFxSystemOnChar(particle, ped, offsetX, offsetY, offsetZ, type) end

--- @param particle string
--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
--- @param type int
--- @return Particle particle
function createFxSystemOnCharWithDirection(particle, ped, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ, type) end

--- @param particle string
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param type int
--- @return Particle particle
function createFxSystemOnCar(particle, car, offsetX, offsetY, offsetZ, type) end

--- @param particle string
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
--- @param type int
--- @return Particle particle
function createFxSystemOnCarWithDirection(particle, car, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ, type) end

--- @param particle string
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param type int
--- @return Particle particle
function createFxSystemOnObject(particle, object, offsetX, offsetY, offsetZ, type) end

--- @param particle string
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
--- @param flag int
--- @return Particle particle
function createFxSystemOnObjectWithDirection(particle, object, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ, flag) end

--- @param ped Ped
--- @param car Vehicle
function taskDestroyCar(ped, car) end

--- @param ped Ped
--- @param toOffsetX float
--- @param toOffsetY float
--- @param time int
function taskDiveAndGetUp(ped, toOffsetX, toOffsetY, time) end

--- @param modelId Model
--- @param numberplate string
function customPlateForNextCar(modelId, numberplate) end

--- @param ped Ped
--- @param car Vehicle
function taskShuffleToNextCarSeat(ped, car) end

--- @param ped Ped
--- @param withActor int
--- @param flag bool
--- @param unknownFlag int
function taskChatWithChar(ped, withActor, flag, unknownFlag) end

--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
--- @param tilt float
--- @param switchstyle int
function attachCameraToVehicle(car, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ, tilt, switchstyle) end

--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param toCar int
--- @param tilt float
--- @param switchstyle int
function attachCameraToVehicleLookAtVehicle(car, offsetX, offsetY, offsetZ, toCar, tilt, switchstyle) end

--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param ped Ped
--- @param tilt float
--- @param switchstyle int
function attachCameraToVehicleLookAtChar(car, offsetX, offsetY, offsetZ, ped, tilt, switchstyle) end

--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
--- @param tilt float
--- @param switchstyle int
function attachCameraToChar(ped, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ, tilt, switchstyle) end

--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param targetActor int
--- @param tilt float
--- @param switchstyle int
function attachCameraToCharLookAtChar(ped, offsetX, offsetY, offsetZ, targetActor, tilt, switchstyle) end

--- @param car Vehicle
--- @param lights int
function forceCarLights(car, lights) end

--- @param ASOrigin int
--- @param pedtype int
function addPedtypeAsAttractorUser(ASOrigin, pedtype) end

--- @param object Object
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function attachObjectToCar(object, car, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ) end

--- @param object Object
--- @param X float
--- @param Y float
--- @param Z float
--- @param collisionDetection bool
function detachObject(object, X, Y, Z, collisionDetection) end

--- @param car Vehicle
--- @param toCar int
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function attachCarToCar(car, toCar, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ) end

--- @param car Vehicle
--- @param X float
--- @param Y float
--- @param Z float
--- @param collisionDetection bool
function detachCar(car, X, Y, Z, collisionDetection) end

--- @param object Object
--- @return bool result
function isObjectAttached(object) end

--- @param car Vehicle
--- @return bool result
function isVehicleAttached(car) end

--- @param ped Ped
function clearCharTasks(ped) end

--- @param ped Ped
--- @param unknownFlag1 bool
--- @param unknownFlag2 bool
--- @param unknownFlag3 bool
function taskTogglePedThreatScanner(ped, unknownFlag1, unknownFlag2, unknownFlag3) end

--- @param car Vehicle
--- @param door int
--- @param visible bool
function popCarDoor(car, door, visible) end

--- @param car Vehicle
--- @param door int
function fixCarDoor(car, door) end

--- @param car Vehicle
function taskEveryoneLeaveCar(car) end

--- @param player Player
--- @return bool result
function isPlayerTargettingAnything(player) end

--- @return float X
--- @return float Y
--- @return float Z
function getActiveCameraCoordinates() end

--- @return float X
--- @return float Y
--- @return float Z
function getActiveCameraPointAt() end

--- @param car Vehicle
--- @param component int
--- @param effectFlag bool
function popCarPanel(car, component, effectFlag) end

--- @param car Vehicle
--- @param componentB int
function fixCarPanel(car, componentB) end

--- @param car Vehicle
--- @param tire int
function fixCarTire(car, tire) end

--- @param object Object
--- @param toObject int
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function attachObjectToObject(object, toObject, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ) end

--- @param object Object
--- @param ped Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function attachObjectToChar(object, ped, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ) end

--- @param car Vehicle
--- @return float vecX
--- @return float vecY
--- @return float vecZ
function getCarSpeedVector(car) end

--- @param car Vehicle
--- @return float mass
function getCarMass(car) end

--- @param ped Ped
--- @param timeMS int
function taskDiveFromAttachmentAndGetUp(ped, timeMS) end

--- @param ped Ped
--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param position int
--- @param shootingAngle1 float
--- @param shootingAngle2 float
--- @param weapon int
function attachCharToBike(ped, car, offsetX, offsetY, offsetZ, position, shootingAngle1, shootingAngle2, weapon) end

--- @param ped Ped
--- @param toActor int
--- @param timelimit int
--- @param approachDistance float
--- @param approachAngle float
function taskGotoCharOffset(ped, toActor, timelimit, approachDistance, approachAngle) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param timeMS int
function taskLookAtCoord(ped, toX, toY, toZ, timeMS) end

--- @param ped Ped
--- @param hide bool
function hideCharWeaponForScriptedCutscene(ped, hide) end

--- @param ped Ped
--- @return float speed
function getCharSpeed(ped) end

--- @param group int
--- @param maker int
function setGroupDecisionMaker(group, maker) end

--- @param type int
--- @return int maker
function loadGroupDecisionMaker(type) end

--- @param player Player
--- @param mode bool
function disablePlayerSprint(player, mode) end

--- @param ped Ped
--- @param timeMS int
function taskSitDown(ped, timeMS) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param targetX float
--- @param targetY float
--- @param targetZ float
--- @param radius1 float
--- @param radius2 float
--- @return Searchlight searchlight
function createSearchlight(atX, atY, atZ, targetX, targetY, targetZ, radius1, radius2) end

--- @param searchlight Searchlight
function deleteSearchlight(searchlight) end

--- @param searchlight Searchlight
--- @return bool result
function doesSearchlightExist(searchlight) end

--- @param searchlight Searchlight
--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param speed float
function moveSearchlightBetweenCoords(searchlight, fromX, fromY, fromZ, toX, toY, toZ, speed) end

--- @param searchlight Searchlight
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param speed float
function pointSearchlightAtCoord(searchlight, toX, toY, toZ, speed) end

--- @param searchlight Searchlight
--- @param ped Ped
--- @param speed float
function pointSearchlightAtChar(searchlight, ped, speed) end

--- @param searchlight Searchlight
--- @param ped Ped
--- @return bool result
function isCharInSearchlight(searchlight, ped) end

--- @return bool result
function hasCutsceneLoaded() end

--- @param ped Ped
--- @param atX float
--- @param atY float
--- @param atZ float
function taskTurnCharToFaceCoord(ped, atX, atY, atZ) end

--- @param ped Ped
--- @param car Vehicle
--- @param speed float
function taskDrivePointRoute(ped, car, speed) end

--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param targetX float
--- @param targetY float
--- @param targetZ float
--- @param energy int
function fireSingleBullet(fromX, fromY, fromZ, targetX, targetY, targetZ, energy) end

--- @param fromX float
--- @param fromY float
--- @param fromZ float
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param checkBuildings bool
--- @param checkVehicles bool
--- @param checkActors bool
--- @param checkObjects bool
--- @param checkParticles bool
--- @return bool result
function isLineOfSightClear(fromX, fromY, fromZ, toX, toY, toZ, checkBuildings, checkVehicles, checkActors, checkObjects, checkParticles) end

--- @param car Vehicle
--- @return float roll
function getCarRoll(car) end

--- @param searchlight Searchlight
--- @param car Vehicle
--- @param speed float
function pointSearchlightAtVehicle(searchlight, car, speed) end

--- @param int int
--- @param car Vehicle
--- @return bool result
function isVehicleInSearchlight(int, car) end

--- @param car Vehicle
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param targetX float
--- @param targetY float
--- @param targetZ float
--- @param radius float
--- @param radius2 float
--- @return Searchlight searchlight
function createSearchlightOnVehicle(car, offsetX, offsetY, offsetZ, targetX, targetY, targetZ, radius, radius2) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param mode int
--- @param turnRadius float
--- @param stopRadius float
--- @param ped2 Ped
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
function taskGoToCoordWhileAiming(ped, toX, toY, toZ, mode, turnRadius, stopRadius, ped2, offsetX, offsetY, offsetZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @return int num
function getNumberOfFiresInRange(atX, atY, atZ, radius) end

--- @param searchlight Searchlight
--- @return Marker marker
function addBlipForSearchlight(searchlight) end

--- @param car Vehicle
function skipToEndAndStopPlaybackRecordedCar(car) end

--- @param ped Ped
--- @param car Vehicle
--- @param performAction int
--- @param timelimit int
function taskCarTempAction(ped, car, performAction, timelimit) end

--- @param enable bool
function setLaRiots(enable) end

--- @param ped Ped
function removeCharFromGroup(ped) end

--- @param searchlight Searchlight
--- @param tower int
--- @param housing int
--- @param bulb int
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
function attachSearchlightToSearchlightObject(searchlight, tower, housing, bulb, offsetX, offsetY, offsetZ) end

--- @param enable bool
function switchEmergencyServices(enable) end

--- @param type int
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param pointX float
--- @param pointY float
--- @param pointZ float
--- @param radius float
--- @return Checkpoint checkpoint
function createCheckpoint(type, atX, atY, atZ, pointX, pointY, pointZ, radius) end

--- @param checkpoint Checkpoint
function deleteCheckpoint(checkpoint) end

--- @param enable bool
function switchRandomTrains(enable) end

--- @param type int
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param direction bool
--- @return Vehicle train
function createMissionTrain(type, atX, atY, atZ, direction) end

function deleteMissionTrains() end

function markMissionTrainsAsNoLongerNeeded() end

function deleteAllTrains() end

--- @param train Vehicle
--- @param speed float
function setTrainSpeed(train, speed) end

--- @param train Vehicle
--- @param speed float
function setTrainCruiseSpeed(train, speed) end

--- @param train Vehicle
--- @return int caboose
function getTrainCaboose(train) end

--- @param player Player
function deletePlayer(player) end

--- @param mode bool
function setTwoPlayerCameraMode(mode) end

--- @param ped Ped
--- @param car Vehicle
--- @param targetCar int
--- @param order int
--- @param maxSpeed float
--- @param trafficFlag int
function taskCarMission(ped, car, targetCar, order, maxSpeed, trafficFlag) end

--- @param ped Ped
--- @param toObject int
--- @param timelimit int
--- @param stopWithinRadius float
function taskGoToObject(ped, toObject, timelimit, stopWithinRadius) end

--- @param ped Ped
--- @param roll bool
function taskWeaponRoll(ped, roll) end

--- @param ped Ped
--- @param bustActor int
function taskCharArrestChar(ped, bustActor) end

--- @param car Vehicle
--- @param poolIndex int
--- @return Model itemID
function getAvailableVehicleMod(car, poolIndex) end

--- @param component Model
--- @return int type
function getVehicleModType(component) end

--- @param car Vehicle
--- @param component Model
--- @return int componentId
function addVehicleMod(car, component) end

--- @param car Vehicle
--- @param componentId int
function removeVehicleMod(car, componentId) end

--- @param component Model
function requestVehicleMod(component) end

--- @param component Model
--- @return bool result
function hasVehicleModLoaded(component) end

--- @param component Model
function markVehicleModAsNoLongerNeeded(component) end

--- @param car Vehicle
--- @return int num
function getNumAvailablePaintjobs(car) end

--- @param set int
--- @param paintjob int
function giveVehiclePaintjob(set, paintjob) end

--- @param ped Ped
--- @param group int
--- @return bool result
function isGroupMember(ped, group) end

--- @param ped Ped
--- @param group int
--- @return bool result
function isGroupLeader(ped, group) end

--- @param group int
--- @param range float
function setGroupSeparationRange(group, range) end

--- @param distance float
function limitTwoPlayerDistance(distance) end

function releaseTwoPlayerDistance() end

--- @param can bool
function setPlayerPlayerTargetting(can) end

--- @param fire int
--- @return float X
--- @return float Y
--- @return float Z
function getScriptFireCoords(fire) end

--- @param forX float
--- @param forY float
--- @param forZ float
--- @param direction int
--- @return float X
--- @return float Y
--- @return float Z
--- @return float ZAngle
function getNthClosestCarNodeWithHeading(forX, forY, forZ, direction) end

--- @param allow bool
function setPlayersCanBeInSeparateCars(allow) end

--- @param car Vehicle
--- @return bool result
function doesCarHaveStuckCarCheck(car) end

--- @param car Vehicle
--- @param speed float
function setPlaybackSpeed(car, speed) end

--- @param ped Ped
--- @param range float
--- @return bool result
function areAnyCharsNearChar(ped, range) end

function skipCutsceneEnd() end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @return int percentage
function getPercentageTaggedInArea(x1, y1, x2, y2) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param value bool
function setTagStatusInArea(x1, y1, x2, y2, value) end

--- @param car Vehicle
--- @param toX float
--- @param toY float
--- @param toZ float
function carGotoCoordinatesRacing(car, toX, toY, toZ) end

--- @param car Vehicle
--- @param path int
function startPlaybackRecordedCarUsingAi(car, path) end

--- @param car Vehicle
--- @param path float
function skipInPlaybackRecordedCar(car, path) end

--- @param maker int
--- @param event int
function clearCharDecisionMakerEventResponse(maker, event) end

--- @param maker int
--- @param event int
--- @param taskID int
--- @param respect float
--- @param hate float
--- @param like float
--- @param dislike float
--- @param inCar bool
--- @param onFoot bool
function addCharDecisionMakerEventResponse(maker, event, taskID, respect, hate, like, dislike, inCar, onFoot) end

--- @param ped Ped
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param boneId1 int
--- @param boneId2 int
--- @param performAnimation string
--- @param IFPFile int
--- @param time int
function taskPickUpObject(ped, object, offsetX, offsetY, offsetZ, boneId1, boneId2, performAnimation, IFPFile, time) end

--- @param ped Ped
--- @param object bool
function dropObject(ped, object) end

--- @param car Vehicle
function explodeCarInCutscene(car) end

--- @param player Player
function buildPlayerModel(player) end

--- @param hydra int
--- @param car Vehicle
--- @param radius float
function planeAttackPlayer(hydra, car, radius) end

--- @param plane int
--- @param direction float
--- @param altitudemin float
--- @param altitudemax float
function planeFlyInDirection(plane, direction, altitudemin, altitudemax) end

--- @param plane int
--- @param ped Ped
--- @param car Vehicle
--- @param radius float
function planeFollowEntity(plane, ped, car, radius) end

--- @param ped Ped
--- @param drivebyActor int
--- @param car Vehicle
--- @param pX float
--- @param pY float
--- @param pZ float
--- @param radiusX float
--- @param radiusY int
--- @param radiusZ bool
--- @param firingRate int
function taskDriveBy(ped, drivebyActor, car, pX, pY, pZ, radiusX, radiusY, radiusZ, firingRate) end

--- @param car Vehicle
--- @param stay bool
function setCarStayInSlowLane(car, stay) end

--- @param player Player
--- @param car Vehicle
function takeRemoteControlOfCar(player, car) end

--- @param object Model
--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
--- @param smashed bool
--- @param damaged bool
--- @return bool result
function isClosestObjectOfTypeSmashedOrDamaged(object, atX, atY, atZ, radius, smashed, damaged) end

--- @param ped Ped
function startSettingUpConversation(ped) end

function finishSettingUpConversation() end

--- @param ped Ped
--- @param gxtString GxtString
--- @return bool result
function isConversationAtNode(ped, gxtString) end

--- @param object Object
--- @return int health
function getObjectHealth(object) end

--- @param object Object
--- @param health int
function setObjectHealth(object, health) end

--- @param object Object
--- @param intensity int
function breakObject(object, intensity) end

--- @param heli Vehicle
--- @param player Player
--- @param radius float
function heliAttackPlayer(heli, player, radius) end

--- @param heli Vehicle
--- @param ped Ped
--- @param car Vehicle
--- @param radius float
function heliFollowEntity(heli, ped, car, radius) end

--- @param heli Vehicle
--- @param ped Ped
--- @param car Vehicle
--- @param radius float
function policeHeliChaseEntity(heli, ped, car, radius) end

--- @param ped Ped
--- @param hold bool
function taskUseMobilePhone(ped, hold) end

--- @param ped Ped
--- @param car Vehicle
function taskWarpCharIntoCarAsDriver(ped, car) end

--- @param ped Ped
--- @param car Vehicle
--- @param passengerseat int
function taskWarpCharIntoCarAsPassenger(ped, car, passengerseat) end

--- @param generate bool
function switchCopsOnBikes(generate) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isFlameInAngledArea2d(x1, y1, x2, y2, angle, sphere) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param angle float
--- @param sphere bool
--- @return bool result
function isFlameInAngledArea3d(x1, y1, z1, x2, y2, z2, angle, sphere) end

--- @param car Vehicle
--- @param checkDistance float
--- @param time int
--- @param stuck bool
--- @param flipped bool
--- @param warp bool
--- @param path int
function addStuckCarCheckWithWarp(car, checkDistance, time, stuck, flipped, warp, path) end

--- @param car Vehicle
--- @param door int
function damageCarPanel(car, door) end

--- @param car Vehicle
--- @param roll float
function setCarRoll(car, roll) end

--- @param modelId Model
--- @return bool result
function suppressCarModel(modelId) end

--- @param modelId Model
function dontSuppressCarModel(modelId) end

function dontSuppressAnyCarModels() end

--- @param key int
--- @return bool result
function isPs2KeyboardKeyPressed(key) end

--- @param key int
--- @return bool result
function isPs2KeyboardKeyJustPressed(key) end

--- @param ped Ped
--- @param liftingObject int
--- @return bool result
function isCharHoldingObject(ped, liftingObject) end

--- @param car Vehicle
--- @param can bool
function setCarCanGoAgainstTraffic(car, can) end

--- @param car Vehicle
--- @param door int
function damageCarDoor(car, door) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param model int
--- @return Vehicle car
function getRandomCarInSphereNoSave(X, Y, Z, radius, model) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param pedtypeCivilian bool
--- @param gang bool
--- @param prostitute bool
--- @return Ped ped
function getRandomCharInSphere(X, Y, Z, radius, pedtypeCivilian, gang, prostitute) end

--- @param ped Ped
--- @return bool result
function hasCharBeenArrested(ped) end

--- @param plane int
--- @param throttle float
function setPlaneThrottle(plane, throttle) end

--- @param heli Vehicle
--- @param X float
--- @param Y float
--- @param Z float
--- @param minaltitude float
--- @param maxaltitude float
function heliLandAtCoords(heli, X, Y, Z, minaltitude, maxaltitude) end

--- @param hydra int
function planeStartsInAir(hydra) end

--- @param acquaintance int
--- @param pedtype int
--- @param toPedtype int
function setRelationship(acquaintance, pedtype, toPedtype) end

--- @param acquaintance int
--- @param pedtype int
--- @param toPedtype int
function clearRelationship(acquaintance, pedtype, toPedtype) end

--- @param maker int
--- @param event int
function clearGroupDecisionMakerEventResponse(maker, event) end

--- @param maker int
--- @param event int
--- @param taskID int
--- @param respect float
--- @param hate float
--- @param like float
--- @param dislike float
--- @param inCar bool
--- @param onFoot bool
function addGroupDecisionMakerEventResponse(maker, event, taskID, respect, hate, like, dislike, inCar, onFoot) end

--- @param texture int
--- @param x float
--- @param y float
--- @param scaleX float
--- @param scaleY float
--- @param angle float
--- @param r int
--- @param g int
--- @param b int
--- @param a int
function drawSpriteWithRotation(texture, x, y, scaleX, scaleY, angle, r, g, b, a) end

--- @param ped Ped
--- @param attractor int
function taskUseAttractor(ped, attractor) end

--- @param ped Ped
--- @param atActor int
--- @param timelimit int
function taskShootAtChar(ped, atActor, timelimit) end

--- @param flags int
--- @param radius float
--- @param pedsToScan int
function setInformRespectedFriends(flags, radius, pedsToScan) end

--- @param ped Ped
--- @param event int
--- @return bool result
function isCharRespondingToEvent(ped, event) end

--- @param object Object
--- @param visibility bool
function setObjectVisible(object, visibility) end

--- @param ped Ped
--- @param fleeFrom int
--- @param runDistance float
--- @param time int
--- @param changeCourse bool
--- @param unkTime1 int
--- @param unkTime2 int
--- @param awayRadius float
function taskFleeCharAnyMeans(ped, fleeFrom, runDistance, time, changeCourse, unkTime1, unkTime2, awayRadius) end

function flushPatrolRoute() end

--- @param X float
--- @param Y float
--- @param Z float
--- @param animation string
--- @param IFPFile string
function extendPatrolRoute(X, Y, Z, animation, IFPFile) end

--- @param object Object
--- @param animation string
--- @param IFPFile string
--- @param framedelta float
--- @param lockF bool
--- @param loop bool
--- @return bool result
function playObjectAnim(object, animation, IFPFile, framedelta, lockF, loop) end

--- @param zoom int
function setRadarZoom(zoom) end

--- @param marker Marker
--- @return bool result
function doesBlipExist(marker) end

--- @param shopping GxtString
function loadPrices(shopping) end

--- @param shopping GxtString
function loadShop(shopping) end

--- @return int num
function getNumberOfItemsInShop() end

--- @param index int
--- @return int item
function getItemInShop(index) end

--- @param item int
--- @return int price
function getPriceOfItem(item) end

--- @param ped Ped
function taskDead(ped) end

--- @param car Vehicle
function setCarAsMissionCar(car) end

--- @param zone GxtString
--- @param popcycle int
function setZonePopulationType(zone, popcycle) end

--- @param zone GxtString
--- @param density int
function setZoneDealerStrength(zone, density) end

--- @param zone GxtString
--- @return int strength
function getZoneDealerStrength(zone) end

--- @param zone GxtString
--- @param gang int
--- @param density int
function setZoneGangStrength(zone, gang, density) end

--- @param zone GxtString
--- @param gang int
--- @return int density
function getZoneGangStrength(zone, gang) end

--- @return bool result
function isMessageBeingDisplayed() end

--- @param ped Ped
--- @param targetPriority bool
function setCharIsTargetPriority(ped, targetPriority) end

--- @param modelNumplate Model
--- @param townTexture int
function customPlateDesignForNextCar(modelNumplate, townTexture) end

--- @param ped Ped
--- @param car Vehicle
--- @param timeMS int
--- @param stopAtDistance float
function taskGotoCar(ped, car, timeMS, stopAtDistance) end

--- @param group string
function requestIpl(group) end

--- @param group string
function removeIpl(group) end

--- @param group string
function removeIplDiscreetly(group) end

--- @param ped Ped
--- @param acquaintance int
--- @param pedtype int
function setCharRelationship(ped, acquaintance, pedtype) end

--- @param ped Ped
--- @param acquaintance int
--- @param pedtype int
function clearCharRelationship(ped, acquaintance, pedtype) end

--- @param ped Ped
--- @param acquaintance int
function clearAllCharRelationships(ped, acquaintance) end

--- @param car Vehicle
--- @return float pitch
function getCarPitch(car) end

--- @return int interior
function getActiveInterior() end

--- @param heli Vehicle
--- @param ped Ped
--- @param car Vehicle
--- @param minaltitude float
--- @param maxaltitude float
function heliKeepEntityInView(heli, ped, car, minaltitude, maxaltitude) end

--- @param id int
--- @return int model
function getWeapontypeModel(id) end

--- @param id int
--- @return int slot
function getWeapontypeSlot(id) end

--- @param item int
--- @param flag int
--- @return int info
function getShoppingExtraInfo(item, flag) end

--- @param player Player
--- @param texture int
--- @param model int
--- @param bodypart int
function givePlayerClothes(player, texture, model, bodypart) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @return int num
function getNumberOfFiresInArea(x1, y1, z1, x2, y2, z2) end

--- @param heli Vehicle
--- @param magnet bool
function attachWinchToHeli(heli, magnet) end

--- @param heli Vehicle
function releaseEntityFromWinch(heli) end

--- @param train Vehicle
--- @param handle int
--- @return int carriage
function getTrainCarriage(train, handle) end

--- @param heli Vehicle
--- @return Vehicle carHandle
--- @return Ped pedHandle
--- @return Object objectHandle
function grabEntityOnWinch(heli) end

--- @param item int
--- @return GxtString name
function getNameOfItem(item) end

--- @param ped Ped
--- @param climb bool
function taskClimb(ped, climb) end

--- @param item int
function buyItem(item) end

--- @param ped Ped
function clearCharTasksImmediately(ped) end

function storeClothesState() end

function restoreClothesState() end

--- @param magnet int
--- @return float length
function getRopeHeightForObject(magnet) end

--- @param magnet int
--- @param length float
function setRopeHeightForObject(magnet, length) end

--- @param magnet int
--- @return Vehicle carHandle
--- @return Ped pedHandle
--- @return Object objectHandle
function grabEntityOnRopeForObject(magnet) end

--- @param magnet int
function releaseEntityFromRopeForObject(magnet) end

function playerEnteredDockCrane() end

function playerEnteredBuildingsiteCrane() end

function playerLeftCrane() end

--- @param ped Ped
--- @param sequence int
--- @param unkProgress1 int
--- @param unkProgress2 int
function performSequenceTaskFromProgress(ped, sequence, unkProgress1, unkProgress2) end

--- @param speed int
function setNextDesiredMoveState(speed) end

--- @param ped Ped
--- @param followActor int
--- @param minradius float
--- @param maxradius float
function taskGotoCharAiming(ped, followActor, minradius, maxradius) end

--- @param ped Ped
--- @return int unkProgress1
--- @return int unkProgress2
function getSequenceProgressRecursive(ped) end

--- @param ped Ped
--- @param attackActor int
--- @param time int
function taskKillCharOnFootTimed(ped, attackActor, time) end

--- @param X float
--- @param Y float
--- @param Z float
--- @return float X
--- @return float Y
--- @return float Z
function getNearestTagPosition(X, Y, Z) end

--- @param ped Ped
function taskJetpack(ped) end

--- @param enable bool
function setArea51SamSite(enable) end

--- @param ped Ped
--- @return bool result
--- @return Searchlight searchlight
function isCharInAnySearchlight(ped) end

--- @param trailer Vehicle
--- @param car Vehicle
--- @return bool result
function isTrailerAttachedToCab(trailer, car) end

--- @param trailer Vehicle
--- @param cab Vehicle
function detachTrailerFromCab(trailer, cab) end

--- @param player Player
--- @return int group
function getPlayerGroup(player) end

--- @return GxtString shop
function getLoadedShop() end

--- @param track int
--- @return int int2
--- @return int int3
--- @return int int4
function getBeatProximity(track) end

--- @param group int
--- @param command int
function setGroupDefaultTaskAllocator(group, command) end

--- @param player Player
--- @param enabled bool
function setPlayerGroupRecruitment(player, enabled) end

--- @param heli Vehicle
--- @param power int
function activateHeliSpeedCheat(heli, power) end

--- @param ped Ped
--- @param maker int
function taskSetCharDecisionMaker(ped, maker) end

--- @param train Vehicle
function deleteMissionTrain(train) end

--- @param train Vehicle
function markMissionTrainAsNoLongerNeeded(train) end

--- @param marker Marker
--- @param displayAlways bool
function setBlipAlwaysDisplayOnZoomedRadar(marker, displayAlways) end

--- @param path int
function requestCarRecording(path) end

--- @param path int
--- @return bool result
function hasCarRecordingBeenLoaded(path) end

--- @param train Vehicle
--- @param X float
--- @param Y float
--- @param Z float
function setMissionTrainCoordinates(train, X, Y, Z) end

--- @param ped Ped
--- @param object Object
function taskComplexPickupObject(ped, object) end

--- @param ped Ped
--- @param listen bool
function listenToPlayerGroupCommands(ped, listen) end

--- @param player Player
--- @param can bool
function setPlayerEnterCarButton(player, can) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param angle float
--- @param withinRadius float
function taskCharSlideToCoord(ped, toX, toY, toZ, angle, withinRadius) end

--- @return int weekday
function getCurrentDayOfWeek() end

--- @param id int
--- @param gxtString GxtString
function registerScriptBrainForCodeUse(id, gxtString) end

--- @param car Vehicle
--- @param vecX float
--- @param vecY float
--- @param vecZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function applyForceToCar(car, vecX, vecY, vecZ, rotationX, rotationY, rotationZ) end

--- @param car Vehicle
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function addToCarRotationVelocity(car, vecX, vecY, vecZ) end

--- @param car Vehicle
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function setCarRotationVelocity(car, vecX, vecY, vecZ) end

--- @param ped Ped
--- @param rate int
function setCharShootRate(ped, rate) end

--- @param modelId Model
--- @return bool result
function isModelInCdimage(modelId) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
function removeOilPuddlesInArea(x1, y1, x2, y2) end

--- @param marker Marker
--- @param type bool
function setBlipAsFriendly(marker, type) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
function taskSwimToCoord(ped, toX, toY, toZ) end

--- @param modelId Model
--- @return float x1
--- @return float y1
--- @return float z1
--- @return float x2
--- @return float y2
--- @return float z2
function getModelDimensions(modelId) end

--- @param ped Ped
--- @return int maker
function copyCharDecisionMaker(ped) end

--- @param group int
--- @return int maker
function copyGroupDecisionMaker(group) end

--- @param ped Ped
--- @param car Vehicle
--- @param speed float
--- @param flag1 int
--- @param flag2 int
--- @param flag3 int
function taskDrivePointRouteAdvanced(ped, car, speed, flag1, flag2, flag3) end

--- @param acquaintance int
--- @param ofActors int
--- @param toActors int
--- @return bool result
function isRelationshipSet(acquaintance, ofActors, toActors) end

--- @param car Vehicle
--- @param enable bool
function setCarAlwaysCreateSkids(car, enable) end

--- @param X float
--- @param Y float
--- @param Z float
--- @return int city
function getCityFromCoords(X, Y, Z) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param modelId Model
--- @return bool result
function hasObjectOfTypeBeenSmashed(X, Y, Z, radius, modelId) end

--- @param player Player
--- @return bool result
function isPlayerPerformingWheelie(player) end

--- @param player Player
--- @return bool result
function isPlayerPerformingStoppie(player) end

--- @param checkpoint Checkpoint
--- @param X float
--- @param Y float
--- @param Z float
function setCheckpointCoords(checkpoint, X, Y, Z) end

--- @param car Vehicle
--- @param f1 float
--- @param f2 float
--- @param f3 float
--- @param f4 float
function controlCarHydraulics(car, f1, f2, f3, f4) end

--- @param group int
--- @return int numberOfLeaders
--- @return int numberOfMembers
function getGroupSize(group) end

--- @param object Object
--- @param destructible bool
function setObjectCollisionDamageEffect(object, destructible) end

--- @param car Vehicle
--- @param followCar int
--- @param radius float
function setCarFollowCar(car, followCar, radius) end

function playerEnteredQuarryCrane() end

function playerEnteredLasVegasCrane() end

--- @param interior GxtString
--- @param access bool
function switchEntryExit(interior, access) end

--- @param X float
--- @param Y float
--- @param GXT GxtString
--- @param value float
--- @param flag int
function displayTextWithFloat(X, Y, GXT, value, flag) end

--- @param group int
--- @return bool result
function doesGroupExist(group) end

--- @param ped Ped
--- @param fightingStyle int
--- @param moves int
function giveMeleeAttackToChar(ped, fightingStyle, moves) end

--- @param car Vehicle
--- @param hydraulics bool
function setCarHydraulics(car, hydraulics) end

--- @return bool result
function is2playerGameGoingOn() end

--- @return float fov
function getCameraFov() end

--- @param car Vehicle
--- @return bool result
function doesCarHaveHydraulics(car) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param angle float
--- @param radius float
--- @param animation string
--- @param ifp1 int
--- @param ifp2 float
--- @param LA bool
--- @param LX bool
--- @param LY bool
--- @param LF bool
--- @param LT int
function taskCharSlideToCoordAndPlayAnim(ped, toX, toY, toZ, angle, radius, animation, ifp1, ifp2, LA, LX, LY, LF, LT) end

--- @param player Player
--- @return int number
function getTotalNumberOfPedsKilledByPlayer(player) end

--- @param object Object
--- @param spoot int
--- @return float X
--- @return float Y
--- @return float Z
function getLevelDesignCoordsForObject(object, spoot) end

--- @param ped Ped
--- @return int event
function getCharHighestPriorityEvent(ped) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @return float X
--- @return float Y
--- @return float Z
function getParkingNodeInArea(x1, y1, z1, x2, y2, z2) end

--- @param ped Ped
--- @return Vehicle car
function getCarCharIsUsing(ped) end

--- @param ped Ped
--- @param animation string
--- @param IFP string
--- @param framedelta float
--- @param loopA bool
--- @param lockX bool
--- @param lockY bool
--- @param lockF bool
--- @param time int
function taskPlayAnimNonInterruptable(ped, animation, IFP, framedelta, loopA, lockX, lockY, lockF, time) end

--- @param startX float
--- @param startY float
--- @param startZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @param goalX float
--- @param goalY float
--- @param goalZ float
--- @param radius2X float
--- @param radius2Y float
--- @param radius2Z float
--- @param cameraX float
--- @param cameraY float
--- @param cameraZ float
--- @param reward int
function addStuntJump(startX, startY, startZ, radiusX, radiusY, radiusZ, goalX, goalY, goalZ, radius2X, radius2Y, radius2Z, cameraX, cameraY, cameraZ, reward) end

--- @param object Object
--- @param X float
--- @param Y float
--- @param Z float
function setObjectCoordinatesAndVelocity(object, X, Y, Z) end

--- @param ped Ped
--- @param stay bool
function setCharKindaStayInSamePlace(ped, stay) end

--- @param ped Ped
--- @param walkMode int
--- @param routeMode int
function taskFollowPatrolRoute(ped, walkMode, routeMode) end

--- @param ped Ped
--- @return bool result
function isCharInAir(ped) end

--- @param ped Ped
--- @return float height
function getCharHeightAboveGround(ped) end

--- @param ped Ped
--- @param skill int
function setCharWeaponSkill(ped, skill) end

--- @param size int
--- @param r int
--- @param g int
--- @param b int
--- @param a int
function setTextEdge(size, r, g, b, a) end

--- @param car Vehicle
--- @param broken bool
function setCarEngineBroken(car, broken) end

--- @param modelId Model
--- @return bool result
function isThisModelABoat(modelId) end

--- @param modelId Model
--- @return bool result
function isThisModelAPlane(modelId) end

--- @param modelId Model
--- @return bool result
function isThisModelAHeli(modelId) end

--- @param enable bool
function setFirstPersonInCarCameraMode(enable) end

--- @param ped Ped
--- @param ped2 Ped
--- @param unk1 float
--- @param unk2 int
function taskGreetPartner(ped, ped2, unk1, unk2) end

--- @param heli Vehicle
function setHeliBladesFullSpeed(heli) end

--- @param enable bool
function displayHud(enable) end

--- @param object Object
--- @param lod int
function connectLods(object, lod) end

--- @param max int
function setMaxFireGenerations(max) end

--- @param ped Ped
--- @param animation string
--- @param ifp1 string
--- @param ifp2 float
--- @param time int
function taskDieNamedAnim(ped, animation, ifp1, ifp2, time) end

--- @param player Player
--- @param able bool
function setPlayerDuckButton(player, able) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
function setPoolTableCoords(x1, y1, z1, x2, y2, z2) end

--- @param object Object
--- @return bool result
function hasObjectBeenPhotographed(object) end

--- @param rotationZ float
--- @param rotationY float
function doCameraBump(rotationZ, rotationY) end

--- @return int day
--- @return int month
function getCurrentDate() end

--- @param object Object
--- @param animation string
--- @param speed float
function setObjectAnimSpeed(object, animation, speed) end

--- @param object Object
--- @param anim string
--- @return bool result
function isObjectPlayingAnim(object, anim) end

--- @param object Object
--- @param animation string
--- @return float progress
function getObjectAnimCurrentTime(object, animation) end

--- @param object Object
--- @param animation string
--- @param progress float
function setObjectAnimCurrentTime(object, animation, progress) end

--- @param ped Ped
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function setCharVelocity(ped, vecX, vecY, vecZ) end

--- @param ped Ped
--- @return float vecX
--- @return float vecY
--- @return float vecZ
function getCharVelocity(ped) end

--- @param ped Ped
--- @param vecX float
--- @param vecY float
--- @param vecZ float
function setCharRotation(ped, vecX, vecY, vecZ) end

--- @param car Vehicle
--- @return float value
function getCarUprightValue(car) end

--- @param car Vehicle
--- @param interior int
function setVehicleInterior(car, interior) end

--- @param car Vehicle
--- @param gun bool
function selectWeaponsForVehicle(car, gun) end

--- @param player Player
--- @return int city
function getCityPlayerIsIn(player) end

--- @param X float
--- @param Y float
--- @param Z float
--- @return GxtString name
function getNameOfZone(X, Y, Z) end

--- @param activate bool
function activateInteriorPeds(activate) end

--- @param car Vehicle
--- @param unk bool
function setVehicleCanBeTargetted(car, unk) end

--- @param ped Ped
--- @param followActor int
function taskFollowFootsteps(ped, followActor) end

--- @param ped Ped
--- @param health int
--- @param affectArmour bool
function damageChar(ped, health, affectArmour) end

--- @param car Vehicle
--- @param can bool
function setCarCanBeVisiblyDamaged(car, can) end

--- @param heli Vehicle
--- @param dist int
function setHeliReachedTargetDistance(heli, dist) end

--- @param ped Ped
--- @param X float
--- @param Y float
--- @param Z float
--- @return float level
function getSoundLevelAtCoords(ped, X, Y, Z) end

--- @param ped Ped
--- @param enable bool
function setCharAllowedToDuck(ped, enable) end

--- @param player Player
--- @param toAngle float
--- @param rotationSpeed float
function setHeadingForAttachedPlayer(player, toAngle, rotationSpeed) end

--- @param ped Ped
--- @param alongisdeActor int
function taskWalkAlongsideChar(ped, alongisdeActor) end

--- @param car Model
--- @param X float
--- @param Y float
--- @param Z float
function createEmergencyServicesCar(car, X, Y, Z) end

--- @param ped Ped
--- @param stay bool
function taskKindaStayInSamePlace(ped, stay) end

--- @param car Vehicle
--- @param path int
function startPlaybackRecordedCarLooped(car, path) end

--- @param ped Ped
--- @param interior int
function setCharInterior(ped, interior) end

--- @param player Player
--- @return bool result
function isAttachedPlayerHeadingAchieved(player) end

--- @param X float
--- @param Y float
--- @param radius float
--- @param access bool
function enableEntryExitPlayerGroupWarping(X, Y, radius, access) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @return Object object
function getClosestStealableObject(X, Y, Z, radius) end

--- @param interior int
--- @return bool result
function isProceduralInteriorActive(interior) end

--- @param path int
function removeCarRecording(path) end

--- @param zone GxtString
--- @param popcycle int
function setZonePopulationRace(zone, popcycle) end

--- @param object Object
--- @param player bool
function setObjectOnlyDamagedByPlayer(object, player) end

--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param flag1 int
--- @param flag2 int
function createBirds(x1, y1, z1, x2, y2, z2, flag1, flag2) end

--- @param car Vehicle
--- @param level float
function setVehicleDirtLevel(car, level) end

--- @param enable bool
function setGangWarsActive(enable) end

--- @return bool result
function isGangWarGoingOn() end

--- @param player Player
--- @param clothes string
--- @param model string
--- @param bodyPart int
function givePlayerClothesOutsideShop(player, clothes, model, bodyPart) end

function clearLoadedShop() end

--- @param group int
--- @param Aspack int
function setGroupSequence(group, Aspack) end

--- @param ped Ped
--- @param droppable bool
function setCharDropsWeaponsWhenDead(ped, droppable) end

--- @param ped Ped
--- @param set bool
function setCharNeverLeavesGroup(ped, set) end

--- @param player Player
--- @param able bool
function setPlayerFireButton(player, able) end

--- @param particle Particle
--- @param ped Ped
--- @param mode int
function attachFxSystemToCharBone(particle, ped, mode) end

--- @param handle int
--- @param script GxtString
function registerAttractorScriptBrainForCodeUse(handle, script) end

--- @param ped Ped
--- @param orientation int
--- @param limit float
function setHeadingLimitForAttachedChar(ped, orientation, limit) end

--- @param ped Ped
--- @return Marker blip
function addBlipForDeadChar(ped) end

--- @param ped Ped
--- @return float X
--- @return float Y
--- @return float Z
function getDeadCharCoordinates(ped) end

--- @param ped Ped
--- @param animation string
--- @param ifp string
--- @param framedelta float
--- @param loopA bool
--- @param lockX bool
--- @param lockY bool
--- @param lockF bool
--- @param time int
--- @param force bool
--- @param lockZ bool
function taskPlayAnimWithFlags(ped, animation, ifp, framedelta, loopA, lockX, lockY, lockF, time, force, lockZ) end

--- @param car Vehicle
--- @param multiplier float
function setVehicleAirResistanceMultiplier(car, multiplier) end

--- @param car Vehicle
--- @param X float
--- @param Y float
--- @param Z float
function setCarCoordinatesNoOffset(car, X, Y, Z) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param modelId Model
--- @param collisionDetection bool
function setUsesCollisionOfClosestObjectOfType(X, Y, Z, radius, modelId, collisionDetection) end

function setTimeOneDayForward() end

--- @param timer VarId
--- @param reach int
function setTimerBeepCountdownTime(timer, reach) end

--- @param trailer int
--- @param cab int
function attachTrailerToCab(trailer, cab) end

--- @param car Vehicle
--- @param object Object
--- @return bool result
function isVehicleTouchingObject(car, object) end

--- @param UP bool
--- @param DOWN bool
--- @param RELEASE bool
function enableCraneControls(UP, DOWN, RELEASE) end

--- @param ped Ped
--- @return bool result
function isPlayerInPositionForConversation(ped) end

--- @param ped Ped
--- @param enable bool
function enableConversation(ped, enable) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @return Ped ped
function getRandomCharInSphereOnlyDrugsBuyers(X, Y, Z, radius) end

--- @param ped Ped
--- @return int pedtype
function getPedType(ped) end

--- @param ped Ped
--- @param radius float
--- @param nearModel Model
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param scriptNamed string
--- @return bool result
function taskUseClosestMapAttractor(ped, radius, nearModel, offsetX, offsetY, offsetZ, scriptNamed) end

--- @param hydra int
--- @param player Player
--- @param radius float
function planeAttackPlayerUsingDogFight(hydra, player, radius) end

--- @param can bool
function canTriggerGangWarWhenOnAMission(can) end

--- @param car Vehicle
--- @param angle float
function controlMovableVehiclePart(car, angle) end

--- @param car Vehicle
--- @param attractive bool
function winchCanPickVehicleUp(car, attractive) end

--- @param car Vehicle
--- @param door int
--- @param rotation float
function openCarDoorABit(car, door, rotation) end

--- @param car Vehicle
--- @param door int
--- @return bool result
function isCarDoorFullyOpen(car, door) end

--- @param set bool
function setAlwaysDraw3dMarkers(set) end

--- @param script int
function streamScript(script) end

--- @param script int
--- @return bool result
function hasStreamedScriptLoaded(script) end

--- @param set bool
function setGangWarsTrainingMission(set) end

--- @param ped Ped
--- @param X float
--- @param Y float
--- @param radius float
function setCharHasUsedEntryExit(ped, X, Y, radius) end

--- @param ped Ped
--- @param health int
function setCharMaxHealth(ped, health) end

--- @param enable bool
function setNightVision(enable) end

--- @param enable bool
function setInfraredVision(enable) end

--- @param zone GxtString
function setZoneForGangWarsTraining(zone) end

--- @param ped Ped
--- @param can bool
function setCharCanBeKnockedOffBike(ped, can) end

--- @param ped Ped
--- @param X float
--- @param Y float
--- @param Z float
function setCharCoordinatesDontWarpGang(ped, X, Y, Z) end

--- @param item int
--- @param price int
function addPriceModifier(item, price) end

--- @param item int
function removePriceModifier(item) end

function initZonePopulationSettings() end

--- @param car Vehicle
--- @param shake bool
--- @param effect bool
--- @param sound bool
function explodeCarInCutsceneShakeAndBits(car, shake, effect, sound) end

--- @return bool result
function isSkipCutsceneButtonPressed() end

--- @return bool result
--- @return float X
--- @return float Y
--- @return float Z
function getCutsceneOffset() end

--- @param object Object
--- @param scale float
function setObjectScale(object, scale) end

--- @return int popcycle
function getCurrentPopulationZoneType() end

--- @param title GxtString
--- @param posX float
--- @param posY float
--- @param width float
--- @param columns int
--- @param interactive bool
--- @param background bool
--- @param alignment int
--- @return int menu
function createMenu(title, posX, posY, width, columns, interactive, background, alignment) end

--- @param menu int
--- @param column int
--- @param alignment int
function setMenuColumnOrientation(menu, column, alignment) end

--- @param menu int
--- @return int item
function getMenuItemSelected(menu) end

--- @param menu int
--- @return int item
function getMenuItemAccepted(menu) end

--- @param menu int
--- @param row int
--- @param enable bool
function activateMenuItem(menu, row, enable) end

--- @param menu int
function deleteMenu(menu) end

--- @param menu int
--- @param column int
--- @param header GxtString
--- @param data1 GxtString
--- @param data2 GxtString
--- @param data3 GxtString
--- @param data4 GxtString
--- @param data5 GxtString
--- @param data6 GxtString
--- @param data7 GxtString
--- @param data8 GxtString
--- @param data9 GxtString
--- @param data10 GxtString
--- @param data11 GxtString
--- @param data12 GxtString
function setMenuColumn(menu, column, header, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12) end

--- @param marker Marker
--- @param X float
--- @param Y float
--- @param radius float
function setBlipEntryExit(marker, X, Y, radius) end

--- @param lose bool
function switchDeathPenalties(lose) end

--- @param lose bool
function switchArrestPenalties(lose) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param angle float
function setExtraHospitalRestartPoint(X, Y, Z, radius, angle) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @param angle float
function setExtraPoliceStationRestartPoint(X, Y, Z, radius, angle) end

--- @return int num
function findNumberTagsTagged() end

--- @return int percentage
function getTerritoryUnderControlPercentage() end

--- @param object Object
--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param radius float
--- @param sphere bool
--- @return bool result
function isObjectInAngledArea2d(object, x1, y1, x2, y2, radius, sphere) end

--- @param object Object
--- @param x1 float
--- @param y1 float
--- @param z1 float
--- @param x2 float
--- @param y2 float
--- @param z2 float
--- @param depth float
--- @param flag bool
--- @return bool result
function isObjectInAngledArea3d(object, x1, y1, z1, x2, y2, z2, depth, flag) end

--- @param X float
--- @param Y float
--- @param Z float
--- @param radius float
--- @return Ped ped
function getRandomCharInSphereNoBrain(X, Y, Z, radius) end

--- @param plane int
--- @param set bool
function setPlaneUndercarriageUp(plane, set) end

--- @param disable bool
function disableAllEntryExits(disable) end

--- @param modelId Model
--- @param externalScript GxtString
function attachAnimsToModel(modelId, externalScript) end

--- @param object Object
--- @param liftable bool
function setObjectAsStealable(object, liftable) end

--- @param enable bool
function setCreateRandomGangMembers(enable) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param vecX float
--- @param vecY float
--- @param vecZ float
--- @param density int
function addSparks(posX, posY, posZ, vecX, vecY, vecZ, density) end

--- @param car Vehicle
--- @return int class
function getVehicleClass(car) end

--- @param ped Ped
function clearConversationForChar(ped) end

--- @param panel int
--- @param column int
--- @param row int
--- @param gxtString GxtString
--- @param number int
function setMenuItemWithNumber(panel, column, row, gxtString, number) end

--- @param panel int
--- @param column int
--- @param row int
--- @param gxtString GxtString
--- @param numbers1 int
--- @param numbers2 int
function setMenuItemWith2Numbers(panel, column, row, gxtString, numbers1, numbers2) end

--- @param cutsceneModel GxtString
--- @param textureName GxtString
function setCutsceneModelTexture(cutsceneModel, textureName) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return GxtString nameB
function getNameOfInfoZone(atX, atY, atZ) end

--- @param car Vehicle
--- @param targetable bool
function vehicleCanBeTargettedByHsMissile(car, targetable) end

--- @param car Vehicle
--- @param containsGoodies bool
function setFreebiesInVehicle(car, containsGoodies) end

--- @param max bool
function setScriptLimitToGangSize(max) end

function makePlayerGangDisappear() end

function makePlayerGangReappear() end

--- @param player Player
--- @param bodypart int
--- @return int textureCRC
--- @return int modelCRC
function getClothesItem(player, bodypart) end

--- @param display bool
function showUpdateStats(display) end

--- @param checkpoint Checkpoint
--- @param type int
function setCoordBlipAppearance(checkpoint, type) end

--- @param enable bool
function setHeathazeEffect(enable) end

--- @return bool result
function isHelpMessageBeingDisplayed() end

--- @param object Object
--- @param type int
--- @return bool result
function hasObjectBeenDamagedByWeapon(object, type) end

--- @param object Object
function clearObjectLastWeaponDamage(object) end

--- @param player Player
--- @param enable bool
function setPlayerJumpButton(player, enable) end

--- @param interface int
--- @return int r
--- @return int g
--- @return int b
--- @return int a
function getHudColour(interface) end

--- @param door int
--- @param lock bool
function lockDoor(door, lock) end

--- @param object Object
--- @param mass float
function setObjectMass(object, mass) end

--- @param int int
--- @return float mass
function getObjectMass(int) end

--- @param object Object
--- @param turnMass float
function setObjectTurnMass(object, turnMass) end

--- @param object Object
--- @return float turnMass
function getObjectTurnMass(object) end

--- @param zone GxtString
function setSpecificZoneToTriggerGangWar(zone) end

function clearSpecificZonesToTriggerGangWar() end

--- @param panel int
--- @param activeRow int
function setActiveMenuItem(panel, activeRow) end

--- @param externalScript int
function markStreamedScriptAsNoLongerNeeded(externalScript) end

--- @param externalScript int
function removeStreamedScript(externalScript) end

--- @param priority bool
--- @param leftmargin int
--- @param maxwidth int
function setMessageFormatting(priority, leftmargin, maxwidth) end

--- @param externalScript int
--- @param args table
function startNewStreamedScript(externalScript, args) end

function setWeatherToAppropriateTypeNow() end

--- @param object Object
--- @param enable bool
function winchCanPickObjectUp(object, enable) end

--- @param zone GxtString
--- @param enableSound bool
function switchAudioZone(zone, enableSound) end

--- @param car Vehicle
--- @param on bool
function setCarEngineOn(car, on) end

--- @param car Vehicle
--- @param lights bool
function setCarLightsOn(car, lights) end

--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radius float
--- @param modelId Model
--- @param externalScriptNamed string
--- @return Ped ped
function getUserOfClosestMapAttractor(sphereX, sphereY, sphereZ, radius, modelId, externalScriptNamed) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function switchRoadsBackToOriginal(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
function switchPedRoadsBackToOriginal(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param plane int
--- @return int landingGearStatus
function getPlaneUndercarriagePosition(plane) end

--- @param pointX float
--- @param pointY float
--- @param pointZ float
--- @param transverseX float
--- @param transverseY float
--- @param transverseZ float
--- @param time int
--- @param smooth bool
function cameraSetVectorTrack(pointX, pointY, pointZ, transverseX, transverseY, transverseZ, time, smooth) end

--- @param from float
--- @param to float
--- @param timelimit int
--- @param smoothTransition bool
function cameraSetLerpFov(from, to, timelimit, smoothTransition) end

--- @param enable bool
function switchAmbientPlanes(enable) end

--- @param enable bool
--- @param value int
function setDarknessEffect(enable, value) end

function cameraResetNewScriptables() end

--- @param externalScript int
--- @return int value
function getNumberOfInstancesOfStreamedScript(externalScript) end

--- @param externalScript int
--- @param actorModel Model
--- @param priority int
function allocateStreamedScriptToRandomPed(externalScript, actorModel, priority) end

--- @param externalScript int
--- @param objectModel Model
--- @param priority int
--- @param radius float
--- @param type int
function allocateStreamedScriptToObject(externalScript, objectModel, priority, radius, type) end

--- @param group int
--- @param member int
--- @return int handle
function getGroupMember(group, member) end

--- @param atX float
--- @param atY float
--- @param ignoreWaves bool
--- @return float height
function getWaterHeightAtCoords(atX, atY, ignoreWaves) end

--- @param lock bool
function cameraPersistTrack(lock) end

--- @param lock bool
function cameraPersistPos(lock) end

--- @param lock bool
function cameraPersistFov(lock) end

--- @return bool result
function cameraIsVectorMoveRunning() end

--- @return bool result
function cameraIsVectorTrackRunning() end

--- @param cameraX float
--- @param cameraY float
--- @param cameraZ float
--- @param positionX float
--- @param positionY float
--- @param positionZ float
--- @param time int
--- @param smoothTransition bool
function cameraSetVectorMove(cameraX, cameraY, cameraZ, positionX, positionY, positionZ, time, smoothTransition) end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerBX float
--- @param cornerBY float
--- @param gxtString GxtString
--- @param style int
function drawWindow(cornerAX, cornerAY, cornerBX, cornerBY, gxtString, style) end

--- @param car Vehicle
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotationX float
--- @param rotationY float
--- @param rotationZ float
function attachCarToObject(car, object, offsetX, offsetY, offsetZ, rotationX, rotationY, rotationZ) end

--- @param garage GxtString
--- @param free bool
function setGarageResprayFree(garage, free) end

--- @param ped Ped
--- @param enable bool
function setCharBulletproofVest(ped, enable) end

--- @param lock bool
function setCinemaCamera(lock) end

--- @param ped Ped
--- @param multiplier float
function setCharFireDamageMultiplier(ped, multiplier) end

--- @param group int
--- @param status bool
function setGroupFollowStatus(group, status) end

--- @param searchlight Searchlight
--- @param flag bool
function setSearchlightClipIfColliding(searchlight, flag) end

--- @param item int
--- @return bool result
function hasPlayerBoughtItem(item) end

--- @param ped Ped
function setCameraInFrontOfChar(ped) end

--- @param player Player
--- @return int maxArmour
function getPlayerMaxArmour(player) end

--- @param ped Ped
--- @param uninterupted bool
function setCharUsesUpperbodyDamageAnimsOnly(ped, uninterupted) end

--- @param ped Ped
--- @param speech int
--- @return int spokenPhrase
function setCharSayContext(ped, speech) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param type int
--- @param cameraShake float
function addExplosionVariableShake(atX, atY, atZ, type, cameraShake) end

--- @param id int
--- @param ped Ped
function attachMissionAudioToChar(id, ped) end

--- @param pickup Pickup
--- @param cash int
function updatePickupMoneyPerDay(pickup, cash) end

--- @param ped Ped
--- @return GxtString interiorName
function getNameOfEntryExitCharUsed(ped) end

--- @param ped Ped
--- @return float coordX
--- @return float coordY
--- @return float coordZ
--- @return int number
function getPositionOfEntryExitCharUsed(ped) end

--- @param ped Ped
--- @return bool result
function isCharTalking(ped) end

--- @param ped Ped
--- @param disable bool
function disableCharSpeech(ped, disable) end

--- @param ped Ped
function enableCharSpeech(ped) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param angle float
function setUpSkip(posX, posY, posZ, angle) end

function clearSkip() end

--- @param soundtrack int
function preloadBeatTrack(soundtrack) end

--- @return int status
function getBeatTrackStatus() end

function playBeatTrack() end

function stopBeatTrack() end

--- @return int max
function findMaxNumberOfGroupMembers() end

--- @param car Vehicle
--- @param providesCover bool
function vehicleDoesProvideCover(car, providesCover) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Pickup pickup
function createSnapshotPickup(atX, atY, atZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Pickup pickup
function createHorseshoePickup(atX, atY, atZ) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return Pickup pickup
function createOysterPickup(atX, atY, atZ) end

--- @param object Object
--- @return bool result
function hasObjectBeenUprooted(object) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param velocityX float
--- @param velocityY float
--- @param velocityZ float
--- @param r int
--- @param g int
--- @param b int
--- @param a int
--- @param size float
--- @param factor float
function addSmokeParticle(atX, atY, atZ, velocityX, velocityY, velocityZ, r, g, b, a, size, factor) end

--- @param ped Ped
--- @return bool result
function isCharStuckUnderCar(ped) end

--- @param car Vehicle
--- @param door int
--- @param unlatch int
--- @param angle float
function controlCarDoor(car, door, unlatch, angle) end

--- @param car Vehicle
--- @param door int
--- @return float angle
function getDoorAngleRatio(car, door) end

--- @param player Player
--- @param display bool
function setPlayerDisplayVitalStatsButton(player, display) end

--- @param ped Ped
--- @param keepTasks bool
function setCharKeepTask(ped, keepTasks) end

--- @param gxtString GxtString
--- @param positionX int
--- @param positionY int
--- @param width float
--- @param columns int
--- @param interactive bool
--- @param background bool
--- @param alignment int
--- @return int id
function createMenuGrid(gxtString, positionX, positionY, width, columns, interactive, background, alignment) end

--- @param ped Ped
--- @return bool result
function isCharSwimming(ped) end

--- @param ped Ped
--- @return int status
function getCharSwimState(ped) end

--- @param ped Ped
--- @param time int
function startCharFacialTalk(ped, time) end

--- @param ped Ped
function stopCharFacialTalk(ped) end

--- @param car Vehicle
--- @return bool result
function isBigVehicle(car) end

--- @param enable bool
function switchPoliceHelis(enable) end

function storeCarModState() end

function restoreCarModState() end

--- @param car Vehicle
--- @param slot int
--- @return Model modelId
function getCurrentCarMod(car, slot) end

--- @param car Vehicle
--- @return bool result
function isCarLowRider(car) end

--- @param car Vehicle
--- @return bool result
function isCarStreetRacer(car) end

function forceDeathRestart() end

function syncWater() end

--- @param ped Ped
--- @param atX float
--- @param atY float
--- @param atZ float
function setCharCoordinatesNoOffset(ped, atX, atY, atZ) end

--- @param fire int
--- @return bool result
function doesScriptFireExist(fire) end

function resetStuffUponResurrection() end

--- @param car Vehicle
--- @return bool result
function isEmergencyServicesVehicle(car) end

--- @param particle Particle
function killFxSystemNow(particle) end

--- @param player Player
--- @return bool result
function isObjectWithinBrainActivationRange(player) end

--- @param from int
--- @return int to
function copySharedCharDecisionMaker(from) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param event int
function reportMissionAudioEventAtPosition(atX, atY, atZ, event) end

--- @param at int
--- @param event int
function reportMissionAudioEventAtObject(at, event) end

--- @param id int
--- @param object Object
function attachMissionAudioToObject(id, object) end

--- @param car Vehicle
--- @return int colours
function getNumCarColours(car) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param radius float
function extinguishFireAtPoint(atX, atY, atZ, radius) end

--- @param train Vehicle
--- @return bool result
function hasTrainDerailed(train) end

--- @param ped Ped
--- @param stayInCarWhenDead bool
function setCharForceDieInCar(ped, stayInCarWhenDead) end

--- @param enable bool
function setOnlyCreateGangMembers(enable) end

--- @param object Object
--- @return Model modelId
function getObjectModel(object) end

--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radius float
--- @param modelId Model
--- @param solid bool
--- @param forActor int
function setCharUsesCollisionClosestObjectOfType(sphereX, sphereY, sphereZ, radius, modelId, solid, forActor) end

function clearAllScriptFireFlags() end

--- @param car Vehicle
--- @return int blockingCar
function getCarBlockingCar(car) end

--- @param car Vehicle
--- @return int paintjob
function getCurrentVehiclePaintjob(car) end

--- @param width int
function setHelpMessageBoxSize(width) end

--- @param range float
function setGunshotSenseRangeForRiot2(range) end

--- @param car Vehicle
--- @return float angle
function getCarMovingComponentOffset(car) end

--- @param interior GxtString
--- @param bitmask int
--- @param flag bool
function setNamedEntryExitFlag(interior, bitmask, flag) end

--- @param paused bool
function pauseCurrentBeatTrack(paused) end

--- @param player Player
--- @param scrollable bool
function setPlayerWeaponsScrollable(player, scrollable) end

--- @param atX float
--- @param atY float
--- @param atZ float
function markRoadNodeAsDontWander(atX, atY, atZ) end

function unmarkAllRoadNodesAsDontWander() end

--- @param checkpoint Checkpoint
--- @param angle float
function setCheckpointHeading(checkpoint, angle) end

--- @param respect int
function setMissionRespectTotal(respect) end

--- @param respect int
function awardPlayerMissionRespect(respect) end

--- @param car Vehicle
--- @param collision bool
function setCarCollision(car, collision) end

--- @param car Vehicle
function changePlaybackToUseAi(car) end

--- @param type int
--- @param timelimit float
--- @param intensity float
function cameraSetShakeSimulationSimple(type, timelimit, intensity) end

--- @return bool result
function isNightVisionActive() end

--- @param enable bool
function setCreateRandomCops(enable) end

--- @param ped Ped
--- @param ignore bool
function taskSetIgnoreWeaponRangeFlag(ped, ignore) end

--- @param ped Ped
--- @param object Object
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param bone int
--- @param int7 int
--- @param animation string
--- @param file string
--- @param time int
function taskPickUpSecondObject(ped, object, offsetX, offsetY, offsetZ, bone, int7, animation, file, time) end

--- @param ped Ped
--- @param to bool
function dropSecondObject(ped, to) end

--- @param object Object
function removeObjectElegantly(object) end

--- @param draw bool
function drawCrosshair(draw) end

--- @param question GxtString
--- @param answerY GxtString
--- @param answerN GxtString
--- @param questionWav int
--- @param answerYWav int
--- @param answerNWav int
function setUpConversationNodeWithSpeech(question, answerY, answerN, questionWav, answerYWav, answerNWav) end

--- @param enable bool
function showBlipsOnAllLevels(enable) end

--- @param ped Ped
--- @param druggedUp bool
function setCharDruggedUp(ped, druggedUp) end

--- @param ped Ped
--- @return bool result
function isCharHeadMissing(ped) end

--- @param string string
--- @return int CRC32
function getHashKey(string) end

--- @param gxtString GxtString
--- @param speech int
function setUpConversationEndNodeWithSpeech(gxtString, speech) end

--- @param passengers int
--- @param audioTable int
function randomPassengerSay(passengers, audioTable) end

--- @param hide bool
function hideAllFrontendBlips(hide) end

--- @param mode int
function setPlayerInCarCameraMode(mode) end

--- @param ped Ped
--- @return bool result
function isCharInAnyTrain(ped) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param angle float
function setUpSkipAfterMission(posX, posY, posZ, angle) end

--- @param car Vehicle
--- @param accessible bool
function setVehicleIsConsideredByPlayer(car, accessible) end

--- @param unk bool
--- @return Model modelId
--- @return int class
function getRandomCarModelInMemory(unk) end

--- @param car Vehicle
--- @return int doorStatus
function getCarDoorLockStatus(car) end

--- @param atX float
--- @param atY float
--- @param radius float
--- @param bitmask int
--- @param flag bool
function setClosestEntryExitFlag(atX, atY, radius, bitmask, flag) end

--- @param ped Ped
--- @param signal bool
function setCharSignalAfterKill(ped, signal) end

--- @param ped Ped
--- @param wanted bool
function setCharWantedByPolice(ped, wanted) end

--- @param zone GxtString
--- @param disableCops bool
function setZoneNoCops(zone, disableCops) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param density int
--- @param onActor int
function addBlood(atX, atY, atZ, offsetX, offsetY, offsetZ, density, onActor) end

--- @param show bool
function displayCarNames(show) end

--- @param show bool
function displayZoneNames(show) end

--- @param car Vehicle
--- @param door int
--- @return bool result
function isCarDoorDamaged(car, door) end

--- @param ped Ped
--- @param atX float
--- @param atY float
--- @param atZ float
function setCharCoordinatesDontWarpGangNoOffset(ped, atX, atY, atZ) end

--- @param enable bool
function setMinigameInProgress(enable) end

--- @return bool result
function isMinigameInProgress() end

--- @param modelId Model
function setForceRandomCarModel(modelId) end

--- @param x1 float
--- @param y1 float
--- @param x2 float
--- @param y2 float
--- @param angle float
--- @param int6 int
--- @return Vehicle car
function getRandomCarOfTypeInAngledAreaNoSave(x1, y1, x2, y2, angle, int6) end

--- @param int1 bool
function addNextMessageToPreviousBriefs(int1) end

function failKillFrenzy() end

--- @param cornerAX float
--- @param cornerAY float
--- @param cornerAZ float
--- @param cornerBX float
--- @param cornerBY float
--- @param cornerBZ float
--- @return bool result
function isCopVehicleInArea3dNoSave(cornerAX, cornerAY, cornerAZ, cornerBX, cornerBY, cornerBZ) end

--- @param car Vehicle
--- @param enabled bool
function setPetrolTankWeakpoint(car, enabled) end

--- @param ped Ped
--- @return bool result
function isCharUsingMapAttractor(ped) end

--- @param player Player
--- @param modelId Model
function setPlayerModel(player, modelId) end

--- @return bool result
function areSubtitlesSwitchedOn() end

--- @param ped Ped
--- @param car Vehicle
function removeCharFromCarMaintainPosition(ped, car) end

--- @param object Object
--- @param BP bool
--- @param FP bool
--- @param EP bool
--- @param CP bool
--- @param MP bool
function setObjectProofs(object, BP, FP, EP, CP, MP) end

--- @param car1 Vehicle
--- @param car2 Vehicle
--- @return bool result
function isCarTouchingCar(car1, car2) end

--- @param object Object
--- @param modelId Model
--- @return bool result
function doesObjectHaveThisModel(object, modelId) end

--- @param train Vehicle
--- @param forced bool
function setTrainForcedToSlowDown(train, forced) end

--- @param car Vehicle
--- @return bool result
function isVehicleOnAllWheels(car) end

--- @param pickup Pickup
--- @return bool result
function doesPickupExist(pickup) end

--- @param enable bool
function enableAmbientCrime(enable) end

function clearWantedLevelInGarage() end

--- @param ped Ped
--- @param soundslot int
--- @param flags1 bool
--- @param flags2 bool
--- @param flags3 bool
--- @return int unk
function setCharSayContextImportant(ped, soundslot, flags1, flags2, flags3) end

--- @param ped Ped
--- @param sound int
--- @param flags1 bool
--- @param flags2 bool
--- @param flags3 bool
function setCharSayScript(ped, sound, flags1, flags2, flags3) end

--- @param player Player
--- @param force bool
function forceInteriorLightingForPlayer(player, force) end

function useDetonator() end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @return bool result
function isMoneyPickupAtCoords(atX, atY, atZ) end

--- @param panel int
--- @param column int
--- @param width int
function setMenuColumnWidth(panel, column, width) end

--- @param group int
function makeRoomInPlayerGangForMissionPeds(group) end

--- @param ped Ped
--- @return bool result
function isCharGettingInToACar(ped) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param angle float
--- @param car Vehicle
function setUpSkipForSpecificVehicle(posX, posY, posZ, angle, car) end

--- @param modelId Model
--- @return int price
function getCarModelValue(modelId) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param angle float
--- @param modelId Model
--- @param color1 int
--- @param color2 int
--- @param forceSpawn bool
--- @param alarm int
--- @param doorLock int
--- @param minDelay int
--- @param maxDelay int
--- @param plate string
--- @return int generator
function createCarGeneratorWithPlate(atX, atY, atZ, angle, modelId, color1, color2, forceSpawn, alarm, doorLock, minDelay, maxDelay, plate) end

--- @param train Vehicle
--- @return bool result
function findTrainDirection(train) end

--- @param enable bool
function setAircraftCarrierSamSite(enable) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param r int
--- @param g int
--- @param b int
--- @param radius float
function drawLightWithRange(atX, atY, atZ, r, g, b, radius) end

--- @param enable bool
function enableBurglaryHouses(enable) end

--- @param player Player
--- @return bool result
function isPlayerControlOn(player) end

--- @param ped Ped
--- @return int interior
function getCharActiveInterior(ped) end

--- @param car Vehicle
function giveNonPlayerCarNitro(car) end

--- @param player Player
--- @param useAnim bool
function playerTakeOffGoggles(player, useAnim) end

--- @param allow bool
function allowFixedCameraCollision(allow) end

--- @param ped Ped
--- @param ped2 Ped
--- @return bool result
function hasCharSpottedCharInFront(ped, ped2) end

--- @param stayOnScreen bool
function forceBigMessageAndCounter(stayOnScreen) end

--- @param carModel Model
--- @param distance float
--- @param altitudeMultiplier float
--- @param angleX float
function setVehicleCameraTweak(carModel, distance, altitudeMultiplier, angleX) end

function resetVehicleCameraTweak() end

--- @param ped Ped
--- @param event int
function reportMissionAudioEventAtChar(ped, event) end

--- @param maker int
--- @return bool result
function doesDecisionMakerExist(maker) end

--- @param ped Ped
--- @param ignore bool
function ignoreHeightDifferenceFollowingNodes(ped, ignore) end

--- @param enable bool
function shutAllCharsUp(enable) end

--- @param ped Ped
--- @param canGetOut bool
function setCharGetOutUpsideDownCar(ped, canGetOut) end

--- @param car Vehicle
--- @param event int
function reportMissionAudioEventAtCar(car, event) end

function doWeaponStuffAtStartOf2pGame() end

--- @return bool result
function hasGameJustReturnedFromFrontend() end

--- @return int language
function getCurrentLanguage() end

--- @param object Object
--- @return bool result
function isObjectIntersectingWorld(object) end

--- @param gxtString GxtString
--- @return int width
function getStringWidth(gxtString) end

--- @param car Vehicle
function resetVehicleHydraulics(car) end

--- @param posX float
--- @param posY float
--- @param posZ float
function setRespawnPointForDurationOfMission(posX, posY, posZ) end

--- @param modelId Model
--- @return bool result
function isThisModelACar(modelId) end

--- @param searchlight Searchlight
--- @param lightsThroughObstacles bool
function switchOnGroundSearchlight(searchlight, lightsThroughObstacles) end

--- @return bool result
function isGangWarFightingGoingOn() end

--- @param train Vehicle
--- @return bool result
function isNextStationAllowed(train) end

--- @param train Vehicle
function skipToNextAllowedStation(train) end

--- @param gxtString GxtString
--- @param number int
--- @return int width
function getStringWidthWithNumber(gxtString, number) end

--- @param ped Ped
--- @param muted bool
function shutCharUpForScriptedSpeech(ped, muted) end

--- @param object Object
--- @param enable bool
function enableDisabledAttractorsOnObject(object, enable) end

--- @param coordX float
--- @param coordY float
--- @param coordZ float
--- @param angle float
function loadSceneInDirection(coordX, coordY, coordZ, angle) end

--- @param player Player
--- @return bool result
function isPlayerUsingJetpack(player) end

--- @param style int
function clearThisPrintBigNow(style) end

--- @return bool result
function hasLanguageChanged() end

--- @param stat int
--- @param value int
function incrementIntStatNoMessage(stat, value) end

--- @param car Vehicle
--- @param tertiaryColor int
--- @param quaternaryColor int
function setExtraCarColours(car, tertiaryColor, quaternaryColor) end

--- @param car Vehicle
--- @return int tertiaryColor
--- @return int quaternaryColor
function getExtraCarColours(car) end

function manageAllPopulation() end

--- @param enable bool
function setNoResprays(enable) end

--- @param car Vehicle
--- @return bool result
function hasCarBeenResprayed(car) end

--- @param audioId int
--- @param car Vehicle
function attachMissionAudioToCar(audioId, car) end

--- @param generator int
--- @param owned bool
function setHasBeenOwnedForCarGenerator(generator, owned) end

--- @param questionGXT GxtString
--- @param answerYesGXT GxtString
--- @param answerNoGXT GxtString
--- @param questionWAV int
--- @param answerYesWAV int
--- @param answerNoWAV int
function setUpConversationNodeWithScriptedSpeech(questionGXT, answerYesGXT, answerNoGXT, questionWAV, answerYesWAV, answerNoWAV) end

--- @param gxtString GxtString
function setAreaName(gxtString) end

--- @param ped Ped
--- @param animation string
--- @param IFP string
--- @param framedelta float
--- @param loopA bool
--- @param lockX bool
--- @param lockY bool
--- @param lockF bool
--- @param time int
function taskPlayAnimSecondary(ped, animation, IFP, framedelta, loopA, lockX, lockY, lockF, time) end

--- @param ped Ped
--- @param ped2 Ped
--- @return bool result
function isCharTouchingChar(ped, ped2) end

--- @param helicopter Vehicle
--- @param disable bool
function disableHeliAudio(helicopter, disable) end

--- @param ped Ped
--- @param ped2 Ped
function taskHandGesture(ped, ped2) end

--- @param unk bool
function takePhoto(unk) end

--- @param stat int
--- @param value float
function incrementFloatStatNoMessage(stat, value) end

--- @param player Player
--- @param followAlways bool
function setPlayerGroupToFollowAlways(player, followAlways) end

--- @param car Vehicle
--- @param affectedByCheats bool
function improveCarByCheating(car, affectedByCheats) end

--- @param panelID int
--- @param car Vehicle
--- @param colorslot int
--- @param activeRow int
function changeCarColourFromMenu(panelID, car, colorslot, activeRow) end

--- @param panel int
--- @param row int
--- @param highlight bool
function highlightMenuItem(panel, row, highlight) end

--- @param disable bool
function setDisableMilitaryZones(disable) end

--- @param xAngle float
--- @param zAngle float
function setCameraPositionUnfixed(xAngle, zAngle) end

function setRadioToPlayersFavouriteStation() end

--- @param ped Ped
--- @param persist bool
function setDeathWeaponsPersist(ped, persist) end

--- @param ped Ped
--- @param speed float
function setCharSwimSpeed(ped, speed) end

--- @param player Player
--- @return bool result
function isPlayerClimbing(player) end

--- @param gxtString GxtString
--- @return bool result
function isThisHelpMessageBeingDisplayed(gxtString) end

--- @return bool result
function isWidescreenOnInOptions() end

--- @param flag bool
function drawSubtitlesBeforeFade(flag) end

--- @param flag bool
function drawOddjobTitleBeforeFade(flag) end

--- @param ped Ped
--- @param toX float
--- @param toY float
--- @param toZ float
--- @param mode int
--- @param time int
--- @param stopRadius float
function taskFollowPathNodesToCoordWithRadius(ped, toX, toY, toZ, mode, time, stopRadius) end

--- @param firstPersonView bool
function setPhotoCameraEffect(firstPersonView) end

--- @param car Vehicle
function fixCar(car) end

--- @param player Player
--- @param neverFollow bool
function setPlayerGroupToFollowNever(player, neverFollow) end

--- @param ped Ped
--- @return bool result
function isCharAttachedToAnyCar(ped) end

--- @param car Vehicle
--- @return Ped ped
function storeCarCharIsAttachedToNoSave(car) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param angle float
--- @param car Vehicle
function setUpSkipForVehicleFinishedByScript(posX, posY, posZ, angle, car) end

--- @return bool result
function isSkipWaitingForScriptToFadeIn() end

--- @param off bool
function forceAllVehicleLightsOff(off) end

--- @return int mode
function getPlayerInCarCameraMode() end

--- @param player Player
--- @param modelId Model
--- @return bool result
function isLastBuildingModelShotByPlayer(player, modelId) end

--- @param player Player
function clearLastBuildingModelShotByPlayer(player) end

--- @param dialogueGxt GxtString
--- @param wav int
function setUpConversationEndNodeWithScriptedSpeech(dialogueGxt, wav) end

--- @param enable bool
function activatePimpCheat(enable) end

--- @param sphereX float
--- @param sphereY float
--- @param sphereZ float
--- @param radiusX float
--- @param radiusY float
--- @param radiusZ float
--- @return Ped ped
function getRandomCharInAreaOffsetNoSave(sphereX, sphereY, sphereZ, radiusX, radiusY, radiusZ) end

--- @param enable bool
function setScriptCoopGame(enable) end

--- @param atX float
--- @param atY float
--- @param atZ float
--- @param color int
--- @return Marker marker
function createUser3dMarker(atX, atY, atZ, color) end

--- @param marker Marker
function removeUser3dMarker(marker) end

function getRidOfPlayerProstitute() end

--- @param display bool
function displayNonMinigameHelpMessages(display) end

--- @param tracksFriction float
function setRailtrackResistanceMult(tracksFriction) end

--- @param externalScript int
--- @param canBeStreamedIn bool
function switchObjectBrains(externalScript, canBeStreamedIn) end

function finishSettingUpConversationNoSubtitles() end

--- @param enable bool
function allowPauseInWidescreen(enable) end

--- @return float x
--- @return float y
function getPcMouseMovement() end

--- @return bool result
function isPcUsingJoypad() end

--- @return bool result
function isMouseUsingVerticalInversion() end

--- @param filepath zstring
--- @param args table
--- @return bool result
function startNewCustomScript(filepath, args) end

--- @param filepath zstring
--- @param args table
function launchCustomMission(filepath, args) end

--- @param thread GxtString
--- @return int handle
function getScmThreadStructNamed(thread) end

--- @param var int
--- @param value int
function setCleoSharedVar(var, value) end

--- @param var int
--- @return int value
function getCleoSharedVar(var) end

function sampSpawnPlayer() end

--- @return uint handle
function sampGetBase() end

--- @param text zstring
--- @param color uint
function sampAddChatMessage(text, color) end

--- @param text zstring
function sampSendChat(text) end

--- @return bool result
function isSampAvailable() end

--- @param class int
function sampRequestClass(class) end

--- @param event int
--- @param id int
--- @param param1 int
--- @param param2 int
function sampSendScmEvent(event, id, param1, param2) end

--- @param action int
function sampSetSpecialAction(action) end

--- @param playerId int
--- @param reason int
function sampSendDeathByPlayer(playerId, reason) end

--- @param id int
--- @return bool result
--- @return Vehicle car
function sampGetCarHandleBySampVehicleId(id) end

--- @param id int
--- @return bool result
--- @return Ped ped
function sampGetCharHandleBySampPlayerId(id) end

--- @return bool result
function sampIsChatInputActive() end

--- @param type int
--- @param rate int
function sampSetSendrate(type, rate) end

--- @param id int
--- @return bool result
function sampIsPlayerConnected(id) end

--- @param id int
--- @return uint structPtr
function sampGetPlayerStructPtr(id) end

--- @param id int
--- @return int health
function sampGetPlayerHealth(id) end

--- @param id int
--- @return int armor
function sampGetPlayerArmor(id) end

--- @param gamestate int
function sampSetGamestate(gamestate) end

--- @param timeout bool
function sampDisconnectWithReason(timeout) end

--- @param name zstring
function sampSetLocalPlayerName(name) end

--- @param id int
--- @return int ping
function sampGetPlayerPing(id) end

--- @param handle Ped
--- @return bool result
--- @return int id
function sampGetPlayerIdByCharHandle(handle) end

--- @param car Vehicle
--- @return bool result
--- @return int id
function sampGetVehicleIdByCarHandle(car) end

--- @param id int
--- @return bool result
--- @return float posX
--- @return float posY
--- @return float posZ
function sampGetStreamedOutPlayerPos(id) end

--- @param id int
--- @param passenger bool
function sampSendEnterVehicle(id, passenger) end

--- @param id int
function sampSendExitVehicle(id) end

function sampSendSpawn() end

--- @param car Vehicle
--- @param panel int
--- @param doors int
--- @param lights int
--- @param tires int
function sampSendDamageVehicle(car, panel, doors, lights, tires) end

--- @param cmd zstring
--- @param func function
--- @return bool result
function sampRegisterChatCommand(cmd, func) end

--- @param id int
--- @return zstring name
function sampGetPlayerNickname(id) end

--- @param id int
--- @return uint color
function sampGetPlayerColor(id) end

--- @param ip zstring
--- @param port uint
function sampConnectToServer(ip, port) end

--- @return zstring ip
--- @return uint port
function sampGetCurrentServerAddress() end

--- @return zstring name
function sampGetCurrentServerName() end

--- @param id int
--- @param caption zstring
--- @param text zstring
--- @param button1 zstring
--- @param button2 zstring
--- @param style int
function sampShowDialog(id, caption, text, button1, button2, style) end

--- @param id int
--- @return bool result
--- @return int button
--- @return int list
--- @return zstring input
function sampHasDialogRespond(id) end

--- @return Bitstream bs
function raknetNewBitStream() end

--- @param bs Bitstream
function raknetDeleteBitStream(bs) end

--- @param bs Bitstream
function raknetResetBitStream(bs) end

--- @param bs Bitstream
--- @param value bool
function raknetBitStreamWriteBool(bs, value) end

--- @param bs Bitstream
--- @param value int
function raknetBitStreamWriteInt8(bs, value) end

--- @param bs Bitstream
--- @param value int
function raknetBitStreamWriteInt16(bs, value) end

--- @param bs Bitstream
--- @param value int
function raknetBitStreamWriteInt32(bs, value) end

--- @param bs Bitstream
--- @param value float
function raknetBitStreamWriteFloat(bs, value) end

--- @param bs Bitstream
--- @param dest uint
--- @param size uint
function raknetBitStreamWriteBuffer(bs, dest, size) end

--- @param bs Bitstream
--- @param bitStream Bitstream
function raknetBitStreamWriteBitStream(bs, bitStream) end

--- @param bs Bitstream
--- @param str string
function raknetBitStreamWriteString(bs, str) end

--- @param rpc int
--- @param bs Bitstream
--- @param priority int
--- @param reliability int
--- @param channel int
--- @param timestamp bool
function raknetSendRpcEx(rpc, bs, priority, reliability, channel, timestamp) end

--- @param bs Bitstream
--- @param priority int
--- @param reliability int
--- @param channel int
function raknetSendBitStreamEx(bs, priority, reliability, channel) end

--- @param text zstring
--- @param color uint
--- @param posX float
--- @param posY float
--- @param posZ float
--- @param distance float
--- @param ignoreWalls bool
--- @param playerId int
--- @param vehicleId int
--- @return int textlabel
function sampCreate3dText(text, color, posX, posY, posZ, distance, ignoreWalls, playerId, vehicleId) end

--- @param textlabel int
function sampDestroy3dText(textlabel) end

--- @param Text3d int
--- @return bool result
function sampIs3dTextDefined(Text3d) end

--- @param button int
function sampCloseCurrentDialogWithButton(button) end

--- @return int list
function sampGetCurrentDialogListItem() end

--- @param list int
function sampSetCurrentDialogListItem(list) end

--- @return zstring text
function sampGetCurrentDialogEditboxText() end

--- @param text zstring
function sampSetCurrentDialogEditboxText(text) end

--- @return bool result
function sampIsDialogActive() end

--- @return int type
function sampGetCurrentDialogType() end

--- @return int id
function sampGetCurrentDialogId() end

--- @return int gamestate
function sampGetGamestate() end

--- @param id int
--- @return Object object
function sampGetObjectHandleBySampId(id) end

--- @param id int
--- @return Pickup pickup
function sampGetPickupHandleBySampId(id) end

--- @param object Object
--- @return int objectId
function sampGetObjectSampIdByHandle(object) end

--- @param pickup Pickup
--- @return int pickupId
function sampGetPickupSampIdByHandle(pickup) end

--- @return int count
function sampGetListboxItemsCount() end

--- @param playerId int
--- @return int animid
function sampGetPlayerAnimationId(playerId) end

--- @param animid int
--- @return zstring name
--- @return zstring file
function sampGetAnimationNameAndFile(animid) end

--- @param name zstring
--- @param file zstring
--- @return int id
function sampFindAnimationIdByNameAndFile(name, file) end

--- @return int resX
--- @return int resY
function getScreenResolution() end

--- @param item int
--- @return zstring text
function sampGetListboxItemText(item) end

--- @param id int
--- @return bool result
function sampIsPlayerPaused(id) end

--- @param show bool
function sampToggleCursor(show) end

--- @return bool result
function sampIsLocalPlayerSpawned() end

--- @param id int
--- @return int action
function sampGetPlayerSpecialAction(id) end

--- @param cmd zstring
--- @return bool result
function sampUnregisterChatCommand(cmd) end

--- @param id int
--- @return bool result
function sampIsPlayerNpc(id) end

--- @param id int
--- @return int score
function sampGetPlayerScore(id) end

--- @param id int
--- @param text zstring
--- @param prefix zstring
--- @param color uint
--- @param pcolor uint
function sampSetChatString(id, text, prefix, color, pcolor) end

--- @param id int
--- @return zstring text
--- @return zstring prefix
--- @return uint color
--- @return uint pcolor
function sampGetChatString(id) end

--- @param text zstring
function sampSetChatInputText(text) end

--- @return zstring text
function sampGetChatInputText() end

--- @param msg zstring
function sampfuncsLog(msg) end

--- @param enabled bool
function sampSetChatInputEnabled(enabled) end

--- @return uint rakclientPtr
function sampGetRakclientInterface() end

--- @return uint rakpeer
function sampGetRakpeer() end

--- @param index int
--- @return uint address
function sampGetRakclientFuncAddressByIndex(index) end

--- @param index int
--- @return uint callbackAddress
function sampGetRpcCallbackByRpcId(index) end

--- @param index int
--- @return uint node
function sampGetRpcNodeByRpcId(index) end

--- @return uint sampPtr
function sampGetSampInfoPtr() end

--- @param name zstring
--- @return DxutDialog dialog
function dxutCreateDialog(name) end

--- @param dialog DxutDialog
--- @return bool result
--- @return int event
--- @return int id
function dxutPopEvent(dialog) end

--- @param dialog DxutDialog
--- @param id int
--- @param text zstring
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutAddButton(dialog, id, text, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param id int
--- @param text zstring
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutAddCheckbox(dialog, id, text, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutSetDialogPos(dialog, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @return int posX
--- @return int posY
--- @return int sizeX
--- @return int sizeY
function dxutGetDialogPosAndSize(dialog) end

--- @param dialog DxutDialog
--- @param visible bool
function dxutSetDialogVisible(dialog, visible) end

--- @param dialog DxutDialog
--- @return bool result
function dxutIsDialogVisible(dialog) end

--- @param dialog DxutDialog
--- @param id int
--- @param text zstring
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutAddEditbox(dialog, id, text, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param id int
--- @return zstring text
function dxutGetControlText(dialog, id) end

--- @param rpc int
--- @param bs Bitstream
function raknetSendRpc(rpc, bs) end

--- @param bs Bitstream
function raknetSendBitStream(bs) end

--- @return bool result
function sampIsCursorActive() end

--- @param mode int
function sampSetCursorMode(mode) end

--- @return int mode
function sampGetCursorMode() end

--- @param dialog DxutDialog
--- @param id int
--- @param visible bool
function dxutSetControlVisible(dialog, id, visible) end

--- @param dialog DxutDialog
--- @param id int
--- @param text zstring
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutAddStatic(dialog, id, text, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param id int
--- @return bool result
function dxutIsCheckboxChecked(dialog, id) end

--- @param dialog DxutDialog
--- @param color uint
function dxutSetDialogBackgroundColor(dialog, color) end

--- @param dialog DxutDialog
--- @param id int
--- @param text zstring
function dxutSetControlText(dialog, id, text) end

--- @param dialog DxutDialog
--- @param id int
--- @return bool result
function dxutControlIsVisible(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
--- @param max int
function dxutAddSlider(dialog, id, posX, posY, sizeX, sizeY, max) end

--- @param dialog DxutDialog
--- @param id int
--- @return int value
function dxutGetSliderValue(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param value int
function dxutSetSliderValue(dialog, id, value) end

--- @param dialog DxutDialog
--- @param id int
--- @param posX int
--- @param posY int
--- @param sizeX int
--- @param sizeY int
function dxutAddListbox(dialog, id, posX, posY, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param id int
--- @param element zstring
--- @param data uint
--- @param after int
function dxutListboxInsertItem(dialog, id, element, data, after) end

--- @param dialog DxutDialog
--- @param id int
--- @return int element
--- @return int count
function dxutGetListboxSelectedItemAndCount(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param element int
function dxutListboxDeleteItem(dialog, id, element) end

--- @param dialog DxutDialog
--- @param id int
--- @param element int
--- @return zstring text
--- @return uint data
function dxutGetListboxItemTextAndData(dialog, id, element) end

--- @param dialog DxutDialog
--- @param id int
--- @param checked bool
function dxutCheckboxSetChecked(dialog, id, checked) end

--- @param dialog DxutDialog
--- @param enable bool
function dxutEnableDialogCaption(dialog, enable) end

--- @param dialog DxutDialog
--- @return bool result
function dxutIsDialogCaptionEnabled(dialog) end

--- @param dialog DxutDialog
--- @param minimized bool
function dxutSetDialogMinimized(dialog, minimized) end

--- @param dialog DxutDialog
--- @return bool result
function dxutIsDialogMinimized(dialog) end

--- @param dialog DxutDialog
--- @param id int
function dxutDeleteControl(dialog, id) end

--- @param dialog DxutDialog
function dxutDeleteDialog(dialog) end

--- @param dialog DxutDialog
--- @param id int
function dxutSetFocusOnControl(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param sizeX int
--- @param sizeY int
function dxutSetControlSize(dialog, id, sizeX, sizeY) end

--- @param dialog DxutDialog
--- @param id int
--- @return int sizeX
--- @return int sizeY
function dxutGetControlSize(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param posX int
--- @param posY int
function dxutSetControlPos(dialog, id, posX, posY) end

--- @param dialog DxutDialog
--- @param id int
--- @return int posX
--- @return int posY
function dxutGetControlPos(dialog, id) end

--- @param dialog DxutDialog
--- @param id int
--- @param color uint
function dxutSetCheckboxColor(dialog, id, color) end

--- @param dialog DxutDialog
--- @return bool result
function dxutIsDialogExists(dialog) end

--- @return uint settingsPtr
function sampGetServerSettingsPtr() end

--- @return uint poolsPtr
function sampGetSampPoolsPtr() end

--- @return uint chatPtr
function sampGetChatInfoPtr() end

--- @return uint inputPtr
function sampGetInputInfoPtr() end

--- @return uint dialogPtr
function sampGetDialogInfoPtr() end

--- @return uint kill
function sampGetKillInfoPtr() end

--- @return uint miscPtr
function sampGetMiscInfoPtr() end

--- @return uint tdpoolPtr
function sampGetTextdrawPoolPtr() end

--- @return int objpoolPtr
function sampGetObjectPoolPtr() end

--- @return uint gzpoolPtr
function sampGetGangzonePoolPtr() end

--- @return uint tlabelpoolPtr
function sampGetTextlabelPoolPtr() end

--- @return uint playerpoolPtr
function sampGetPlayerPoolPtr() end

--- @return uint vehpoolPtr
function sampGetVehiclePoolPtr() end

--- @return uint pickuppoolPtr
function sampGetPickupPoolPtr() end

--- @param id int
--- @param dstBuffer uint
function sampStorePlayerOnfootData(id, dstBuffer) end

--- @param id int
--- @param dstBuffer uint
function sampStorePlayerIncarData(id, dstBuffer) end

--- @param id int
--- @param dstBuffer uint
function sampStorePlayerPassengerData(id, dstBuffer) end

--- @param id int
--- @param dstBuffer uint
function sampStorePlayerTrailerData(id, dstBuffer) end

--- @param id int
--- @param dstBuffer uint
function sampStorePlayerAimData(id, dstBuffer) end

--- @param cmd zstring
function sampSendRconCommand(cmd) end

--- @param dataPtr uint
function sampSendOnfootData(dataPtr) end

--- @param dataPtr uint
function sampSendIncarData(dataPtr) end

--- @param dataPtr uint
function sampSendPassengerData(dataPtr) end

--- @param dataPtr uint
function sampSendAimData(dataPtr) end

--- @param dataPtr uint
function sampSendBulletData(dataPtr) end

--- @param dataPtr uint
function sampSendTrailerData(dataPtr) end

--- @param dataPtr uint
function sampSendUnoccupiedData(dataPtr) end

--- @param dataPtr uint
function sampSendSpectatorData(dataPtr) end

--- @param id int
--- @param source int
function sampSendClickPlayer(id, source) end

--- @param id int
--- @param button int
--- @param listitem int
--- @param input zstring
function sampSendDialogResponse(id, button, listitem, input) end

--- @param id int
function sampSendClickTextdraw(id) end

--- @param id int
--- @param damage float
--- @param weapon int
--- @param bodypart int
function sampSendGiveDamage(id, damage, weapon, bodypart) end

--- @param id int
--- @param damage float
--- @param weapon int
--- @param bodypart int
function sampSendTakeDamage(id, damage, weapon, bodypart) end

--- @param playerObject bool
--- @param objectId int
--- @param response int
--- @param posX float
--- @param posY float
--- @param posZ float
--- @param rotX float
--- @param rotY float
--- @param rotZ float
function sampSendEditObject(playerObject, objectId, response, posX, posY, posZ, rotX, rotY, rotZ) end

--- @param response int
--- @param index int
--- @param model int
--- @param bone int
--- @param offsetX float
--- @param offsetY float
--- @param offsetZ float
--- @param rotX float
--- @param rotY float
--- @param rotZ float
--- @param scaleX float
--- @param scaleY float
--- @param scaleZ float
function sampSendEditAttachedObject(response, index, model, bone, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ) end

--- @param id int
function sampSendInteriorChange(id) end

function sampSendRequestSpawn() end

--- @param id int
function sampSendPickedUpPickup(id) end

--- @param id int
function sampSendMenuSelectRow(id) end

function sampSendMenuQuit() end

--- @param id int
function sampSendVehicleDestroyed(id) end

--- @return bool result
function sampIsScoreboardOpen() end

--- @param show bool
function sampToggleScoreboard(show) end

--- @return zstring text
function sampGetDialogText() end

--- @return zstring caption
function sampGetDialogCaption() end

--- @param clientside bool
function sampSetDialogClientside(clientside) end

--- @return bool result
function sampIsDialogClientside() end

--- @return bool result
function sampIsChatVisible() end

--- @return int mode
function sampGetChatDisplayMode() end

--- @param mode int
function sampSetChatDisplayMode(mode) end

--- @param thread uint
function pauseScmThread(thread) end

--- @param thread uint
function resumeScmThread(thread) end

--- @param bs Bitstream
--- @return bool value
function raknetBitStreamReadBool(bs) end

--- @param bs Bitstream
--- @return int value
function raknetBitStreamReadInt8(bs) end

--- @param bs Bitstream
--- @return int value
function raknetBitStreamReadInt16(bs) end

--- @param bs Bitstream
--- @return int value
function raknetBitStreamReadInt32(bs) end

--- @param bs Bitstream
--- @return float value
function raknetBitStreamReadFloat(bs) end

--- @param bs Bitstream
--- @param dest uint
--- @param size uint
function raknetBitStreamReadBuffer(bs, dest, size) end

--- @param bs Bitstream
--- @param size uint
--- @return string value
function raknetBitStreamReadString(bs, size) end

--- @param bs Bitstream
function raknetBitStreamResetReadPointer(bs) end

--- @param bs Bitstream
function raknetBitStreamResetWritePointer(bs) end

--- @param bs Bitstream
--- @param amount int
function raknetBitStreamIgnoreBits(bs, amount) end

--- @param bs Bitstream
--- @param offset int
function raknetBitStreamSetWriteOffset(bs, offset) end

--- @param bs Bitstream
--- @param offset int
function raknetBitStreamSetReadOffset(bs, offset) end

--- @param bs Bitstream
--- @return uint value
function raknetBitStreamGetNumberOfBitsUsed(bs) end

--- @param bs Bitstream
--- @return uint value
function raknetBitStreamGetNumberOfBytesUsed(bs) end

--- @param bs Bitstream
--- @return uint value
function raknetBitStreamGetNumberOfUnreadBits(bs) end

--- @param bs Bitstream
--- @return int value
function raknetBitStreamGetWriteOffset(bs) end

--- @param bs Bitstream
--- @return int value
function raknetBitStreamGetReadOffset(bs) end

--- @param bs Bitstream
--- @return uint value
function raknetBitStreamGetDataPtr(bs) end

--- @param bs Bitstream
--- @param size int
--- @return zstring string
function raknetBitStreamDecodeString(bs, size) end

--- @param bs Bitstream
--- @param string zstring
function raknetBitStreamEncodeString(bs, string) end

--- @param rpc int
--- @param bs Bitstream
function raknetEmulRpcReceiveBitStream(rpc, bs) end

--- @param packet int
--- @param bs Bitstream
function raknetEmulPacketReceiveBitStream(packet, bs) end

--- @param rpc int
--- @return zstring name
function raknetGetRpcName(rpc) end

--- @param packet int
--- @return zstring name
function raknetGetPacketName(packet) end

--- @param var zstring
--- @param value int
--- @return bool result
function setSampfuncsGlobalVar(var, value) end

--- @param var zstring
--- @return bool result
--- @return int value
function getSampfuncsGlobalVar(var) end

--- @param id int
--- @param text zstring
--- @param color uint
--- @param posX float
--- @param posY float
--- @param posZ float
--- @param distance float
--- @param ignoreWalls bool
--- @param playerId int
--- @param vehicleId int
function sampCreate3dTextEx(id, text, color, posX, posY, posZ, distance, ignoreWalls, playerId, vehicleId) end

--- @param id int
--- @return zstring string
--- @return uint color
--- @return float posX
--- @return float posY
--- @return float posZ
--- @return float distance
--- @return bool ignoreWalls
--- @return int playerId
--- @return int vehicleId
function sampGet3dTextInfoById(id) end

--- @param id int
--- @param text zstring
function sampSet3dTextString(id, text) end

--- @param id int
--- @param text zstring
--- @param posX float
--- @param posY float
function sampTextdrawCreate(id, text, posX, posY) end

--- @param id int
--- @param box int
--- @param color uint
--- @param sizeX float
--- @param sizeY float
function sampTextdrawSetBoxColorAndSize(id, box, color, sizeX, sizeY) end

--- @param id int
--- @param align int
function sampTextdrawSetAlign(id, align) end

--- @param id int
--- @param proportional int
function sampTextdrawSetProportional(id, proportional) end

--- @param id int
--- @param style int
function sampTextdrawSetStyle(id, style) end

--- @param id int
--- @param shadow int
--- @param color uint
function sampTextdrawSetShadow(id, shadow, color) end

--- @param id int
--- @param outline int
--- @param color uint
function sampTextdrawSetOutlineColor(id, outline, color) end

--- @param id int
--- @param model int
--- @param rotX float
--- @param rotY float
--- @param rotZ float
--- @param zoom float
--- @param clr1 int
--- @param clr2 int
function sampTextdrawSetModelRotationZoomVehColor(id, model, rotX, rotY, rotZ, zoom, clr1, clr2) end

--- @param id int
--- @param text zstring
function sampTextdrawSetString(id, text) end

--- @param id int
--- @param posX float
--- @param posY float
function sampTextdrawSetPos(id, posX, posY) end

--- @param id int
--- @param letSizeX float
--- @param letSizeY float
--- @param color uint
function sampTextdrawSetLetterSizeAndColor(id, letSizeX, letSizeY, color) end

--- @param id int
--- @return int box
--- @return uint color
--- @return float sizeX
--- @return float sizeY
function sampTextdrawGetBoxEnabledColorAndSize(id) end

--- @param id int
--- @return int align
function sampTextdrawGetAlign(id) end

--- @param id int
--- @return int prop
function sampTextdrawGetProportional(id) end

--- @param id int
--- @return int style
function sampTextdrawGetStyle(id) end

--- @param id int
--- @return int shadow
--- @return uint color
function sampTextdrawGetShadowColor(id) end

--- @param id int
--- @return int outline
--- @return uint color
function sampTextdrawGetOutlineColor(id) end

--- @param id int
--- @return int model
--- @return float rotX
--- @return float rotY
--- @return float rotZ
--- @return float zoom
--- @return int clr1
--- @return int clr2
function sampTextdrawGetModelRotationZoomVehColor(id) end

--- @param id int
--- @return zstring text
function sampTextdrawGetString(id) end

--- @param id int
--- @return float posX
--- @return float posY
function sampTextdrawGetPos(id) end

--- @param id int
--- @return float letSizeX
--- @return float letSizeY
--- @return uint color
function sampTextdrawGetLetterSizeAndColor(id) end

--- @param id int
--- @return bool result
function sampTextdrawIsExists(id) end

--- @param id int
function sampTextdrawDelete(id) end

--- @param var zstring
--- @return bool result
function isSampfuncsGlobalVarDefined(var) end

--- @param var zstring
--- @param thread uint
--- @return bool read
--- @return bool write
function getSampfuncsGlobalVarAccessForThread(var, thread) end

--- @param cmd zstring
function runSampfuncsConsoleCommand(cmd) end

--- @param cmd zstring
--- @param func function
--- @return bool result
function sampfuncsRegisterConsoleCommand(cmd, func) end

--- @param cmd zstring
--- @return bool result
function sampfuncsUnregisterConsoleCommand(cmd) end

--- @param pointer uint
--- @param args table
--- @return uint thread
function createScmThreadAtPointer(pointer, args) end

--- @param thread uint
--- @param var int
--- @param value any
function setScmThreadLocalVar(thread, var, value) end

--- @param thread uint
--- @param var int
--- @return int value
function getScmThreadLocalVar(thread, var) end

--- @param thread uint
function destroyScmThread(thread) end

--- @param thread uint
--- @param args table
function restartScmThread(thread, args) end

--- @return bool result
function isSampfuncsConsoleActive() end

--- @param cmd zstring
--- @param text zstring
function sampSetClientCommandDescription(cmd, text) end

--- @param cmd zstring
--- @param text zstring
function setSampfuncsConsoleCommandDescription(cmd, text) end

--- @param id int
function sampForceVehicleSync(id) end

--- @param id int
--- @param seatId int
function sampForceUnoccupiedSyncSeatId(id, seatId) end

function sampForceOnfootSync() end

function sampForceAimSync() end

--- @param id int
function sampForceTrailerSync(id) end

--- @param id int
--- @param seatId int
function sampForcePassengerSyncSeatId(id, seatId) end

function sampForceStatsSync() end

function sampForceWeaponsSync() end

--- @param streamed bool
--- @return int id
function sampGetMaxPlayerId(streamed) end

--- @param streamed bool
--- @return int count
function sampGetPlayerCount(streamed) end

--- @param text zstring
function sampProcessChatInput(text) end

--- @param cmd zstring
--- @return bool result
function sampIsChatCommandDefined(cmd) end

--- @param cmd zstring
--- @return bool result
function isSampfuncsConsoleCommandDefined(cmd) end

--- @return int version
function getCleoLibraryVersion() end

--- @param object Object
--- @return float x
--- @return float y
--- @return float z
--- @return float w
function getObjectQuaternion(object) end

--- @param object Object
--- @param x float
--- @param y float
--- @param z float
--- @param w float
function setObjectQuaternion(object, x, y, z, w) end

--- @param car Vehicle
--- @return float x
--- @return float y
--- @return float z
--- @return float w
function getVehicleQuaternion(car) end

--- @param car Vehicle
--- @param x float
--- @param y float
--- @param z float
--- @param w float
function setVehicleQuaternion(car, x, y, z, w) end

--- @param ped Ped
--- @return float x
--- @return float y
--- @return float z
--- @return float w
function getCharQuaternion(ped) end

--- @param ped Ped
--- @param x float
--- @param y float
--- @param z float
--- @param w float
function setCharQuaternion(ped, x, y, z, w) end

--- @param audio zstring
--- @return AudioStream handle
function loadAudioStream(audio) end

--- @param handle AudioStream
--- @param state int
function setAudioStreamState(handle, state) end

--- @param handle AudioStream
function releaseAudioStream(handle) end

--- @param handle AudioStream
--- @return double length
function getAudioStreamLength(handle) end

--- @param handle AudioStream
--- @return int state
function getAudioStreamState(handle) end

--- @param audio AudioStream
--- @return float volume
function getAudioStreamVolume(audio) end

--- @param audio AudioStream
--- @param volume float
function setAudioStreamVolume(audio, volume) end

--- @param audio AudioStream
--- @param loop bool
function setAudioStreamLooped(audio, loop) end

--- @param audio zstring
--- @return AudioStream handle
function load3dAudioStream(audio) end

--- @param handle AudioStream
--- @param posX float
--- @param posY float
--- @param posZ float
function setPlay3dAudioStreamAtCoordinates(handle, posX, posY, posZ) end

--- @param audio AudioStream
--- @param object Object
function setPlay3dAudioStreamAtObject(audio, object) end

--- @param audio AudioStream
--- @param ped Ped
function setPlay3dAudioStreamAtChar(audio, ped) end

--- @param audio AudioStream
--- @param car Vehicle
function setPlay3dAudioStreamAtCar(audio, car) end

--- @param address uint
--- @param size uint
--- @return AudioStream handle
function loadAudioStreamFromMemory(address, size) end

--- @param address uint
--- @param size uint
--- @return AudioStream handle
function load3dAudioStreamFromMemory(address, size) end

--- @param pos1X float
--- @param pos1Y float
--- @param pos2X float
--- @param pos2Y float
--- @param width float
--- @param color uint
function renderDrawLine(pos1X, pos1Y, pos2X, pos2Y, width, color) end

--- @param posX float
--- @param posY float
--- @param sizeX float
--- @param sizeY float
--- @param color uint
function renderDrawBox(posX, posY, sizeX, sizeY, color) end

--- @param posX float
--- @param posY float
--- @param sizeX float
--- @param sizeY float
--- @param color uint
--- @param bsize float
--- @param bcolor uint
function renderDrawBoxWithBorder(posX, posY, sizeX, sizeY, color, bsize, bcolor) end

--- @param font DxFont
--- @param text zstring
--- @param ignoreColorTags bool
--- @return float length
function renderGetFontDrawTextLength(font, text, ignoreColorTags) end

--- @param font DxFont
--- @return float height
function renderGetFontDrawHeight(font) end

--- @param font DxFont
--- @param text string
--- @param x float
--- @param ignoreColorTags bool
--- @return uint index
function renderGetFontCharIndexAt(font, text, x, ignoreColorTags) end

--- @param font DxFont
--- @param char uint
--- @return float width
function renderGetFontCharWidth(font, char) end

--- @param font zstring
--- @param height int
--- @param flags uint
--- @param charset uint
--- @return DxFont font
function renderCreateFont(font, height, flags, charset) end

--- @param font DxFont
function renderReleaseFont(font) end

--- @param font DxFont
--- @param text zstring
--- @param posX float
--- @param posY float
--- @param color uint
--- @param ignoreColorTags bool
function renderFontDrawText(font, text, posX, posY, color, ignoreColorTags) end

--- @param posX float
--- @param posY float
--- @param sizeX float
--- @param sizeY float
--- @param corners int
--- @param rotation float
--- @param color uint
function renderDrawPolygon(posX, posY, sizeX, sizeY, corners, rotation, color) end

--- @param file zstring
--- @return DxTexture texture
function renderLoadTextureFromFile(file) end

--- @param texture DxTexture
function renderReleaseTexture(texture) end

--- @param texture DxTexture
--- @param posX float
--- @param posY float
--- @param sizeX float
--- @param sizeY float
--- @param rotation float
--- @param color uint
function renderDrawTexture(texture, posX, posY, sizeX, sizeY, rotation, color) end

--- @param type int
function renderBegin(type) end

function renderEnd() end

--- @param color uint
function renderColor(color) end

--- @param vX float
--- @param vY float
function renderVertex(vX, vY) end

--- @param posX float
--- @param posY float
function renderSetTexCoord(posX, posY) end

--- @param texture DxTexture
function renderBindTexture(texture) end

--- @param texture DxTexture
--- @return uint struct
function renderGetTextureStruct(texture) end

--- @param texture DxTexture
--- @return uint sprite
function renderGetTextureSprite(texture) end

--- @param texture DxTexture
--- @return uint sizeX
--- @return uint sizeY
function renderGetTextureSize(texture) end

--- @param state int
--- @param value uint
function renderSetRenderState(state, value) end

--- @param pointer uint
--- @param size uint
--- @return DxTexture texture
function renderLoadTextureFromFileInMemory(pointer, size) end

--- @param version int
function script_version_number(version) end

--- @param version string
function script_version(version) end

--- @param name string
function script_name(name) end

--- @param description string
function script_description(description) end

--- @param author string
function script_authors(author) end

--- @param author string
function script_author(author) end

--- @param name string
function script_dependencies(name) end

--- @param version int
function script_moonloader(version) end

--- @return LuaScript s
function thisScript() end

--- @param time int
function wait(time) end

--- @param value any
function print(value) end

--- @param index int
--- @return int value
function getGameGlobal(index) end

--- @param index int
--- @param value int
function setGameGlobal(index, value) end

--- @param index int
--- @return uint ptr
function getGameGlobalPtr(index) end

--- @return bool loaded
function isSampfuncsLoaded() end

--- @return bool loaded
function isCleoLoaded() end

--- @return bool loaded
function isSampLoaded() end

--- @param keyId int
--- @return bool state
function isKeyDown(keyId) end

function reloadScripts() end

--- @return bool status
function isOpcodesAvailable() end

--- @param f float
--- @return int i
function representFloatAsInt(f) end

--- @param i int
--- @return float i
function representIntAsFloat(i) end

--- @param key string
--- @param text string
function setGxtEntry(key, text) end

--- @param text string
--- @return string key
function setFreeGxtEntry(text) end

--- @return string key
function getFreeGxtKey() end

--- @param key string
--- @return string text
function getGxtText(key) end

--- @param key string
function clearGxtEntry(key) end

--- @return bool active
function isPauseMenuActive() end

--- @return bool foreground
function isGameWindowForeground() end

--- @return int major
--- @return int minor
--- @return int majorRev
--- @return int minorRev
--- @return int game
--- @return int region
--- @return bool steam
--- @return bool cracked
function getGameVersion() end

--- @return int version
function getMoonloaderVersion() end

--- @return double time
function localClock() end

function freeTextures() end

--- @return string path
function getWorkingDirectory() end

--- @return string path
function getGameDirectory() end

--- @param enable bool
function useRenderCommands(enable) end

--- @param address uint
--- @param size uint
--- @param value int
--- @param virtualProtect bool
function writeMemory(address, size, value, virtualProtect) end

--- @param address uint
--- @param size uint
--- @param virtualProtect bool
--- @return int value
function readMemory(address, size, virtualProtect) end

--- @param library string
--- @return bool result
--- @return uint handle
function loadDynamicLibrary(library) end

--- @param handle uint
function freeDynamicLibrary(handle) end

--- @param proc string
--- @param handle uint
--- @return bool result
--- @return uint proc
function getDynamicLibraryProcedure(proc, handle) end

--- @param file string
--- @return bool result
function doesFileExist(file) end

--- @param directory string
--- @return bool result
function doesDirectoryExist(directory) end

--- @param directory string
--- @return bool result
function createDirectory(directory) end

--- @return float val
function popFloat() end

--- @return bool result
function isGameVersionOriginal() end

--- @param size uint
--- @return uint memory
function allocateMemory(size) end

--- @param memory uint
function freeMemory(memory) end

--- @param mask string
--- @return Filesearch handle
--- @return string name
function findFirstFile(mask) end

--- @param handle Filesearch
--- @return string file
function findNextFile(handle) end

--- @param handle Filesearch
function findClose(handle) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param radius float
--- @param findNext bool
--- @param skipDead bool
--- @return bool result
--- @return Ped ped
function findAllRandomCharsInSphere(posX, posY, posZ, radius, findNext, skipDead) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param radius float
--- @param findNext bool
--- @param skipWrecked bool
--- @return bool result
--- @return Vehicle car
function findAllRandomVehiclesInSphere(posX, posY, posZ, radius, findNext, skipWrecked) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param radius float
--- @param findNext bool
--- @return bool result
--- @return Object object
function findAllRandomObjectsInSphere(posX, posY, posZ, radius, findNext) end

--- @param ped Ped
--- @return uint ptr
function getCharPointer(ped) end

--- @param car Vehicle
--- @return uint ptr
function getCarPointer(car) end

--- @param object Object
--- @return uint struct
function getObjectPointer(object) end

--- @param address uint
--- @param params int
--- @param pop int
--- @return int returnValue
function callFunction(address, params, pop) end

--- @param address uint
--- @param struct int
--- @param params int
--- @param pop int
--- @return int returnValue
function callMethod(address, struct, params, pop) end

--- @param ped Ped
--- @return Vehicle car
--- @return Ped ped
function storeClosestEntities(ped) end

--- @param car Vehicle
--- @param state bool
function switchCarEngine(car, state) end

--- @return bool result
--- @return float posX
--- @return float posY
--- @return float posZ
function getTargetBlipCoordinates() end

--- @param car Vehicle
--- @return int gears
function getCarNumberOfGears(car) end

--- @param car Vehicle
--- @return int gear
function getCarCurrentGear(car) end

--- @param car Vehicle
--- @return bool state
function isCarSirenOn(car) end

--- @param car Vehicle
--- @return bool state
function isCarEngineOn(car) end

--- @param text string
function printHelpString(text) end

--- @param text string
--- @param time int
--- @param style int
function printStyledString(text, time, style) end

--- @param text string
--- @param time int
function printString(text, time) end

--- @param text string
--- @param time int
function printStringNow(text, time) end

--- @param player Player
--- @return bool result
--- @return Ped ped
function getCharPlayerIsTargeting(player) end

--- @param modelId Model
--- @return GxtString name
function getNameOfVehicleModel(modelId) end

--- @param text string
--- @return bool result
function testCheat(text) end

--- @param modelId Model
--- @return bool result
function spawnVehicleByCheating(modelId) end

--- @param ptr uint
--- @return Ped handle
function getCharPointerHandle(ptr) end

--- @param ptr uint
--- @return Vehicle handle
function getVehiclePointerHandle(ptr) end

--- @param ptr uint
--- @return Object handle
function getObjectPointerHandle(ptr) end

--- @param originX float
--- @param originY float
--- @param originZ float
--- @param targetX float
--- @param targetY float
--- @param targetZ float
--- @param checkSolid bool
--- @param car bool
--- @param ped bool
--- @param object bool
--- @param particle bool
--- @param seeThrough bool
--- @param ignoreSomeObjects bool
--- @param shootThrough bool
--- @return bool result
--- @return table colPoint
function processLineOfSight(originX, originY, originZ, targetX, targetY, targetZ, checkSolid, car, ped, object, particle, seeThrough, ignoreSomeObjects, shootThrough) end

--- @param text string
--- @return bool result
function setClipboardText(text) end

--- @return string text
function getClipboardText() end

--- @param struct uint
--- @param offset int
--- @param size uint
--- @param unprotect bool
--- @return int value
function getStructElement(struct, offset, size, unprotect) end

--- @param struct uint
--- @param offset int
--- @param size uint
--- @param value int
--- @param unprotect bool
function setStructElement(struct, offset, size, value, unprotect) end

--- @param rightX float
--- @param rightY float
--- @param rightZ float
--- @param frontX float
--- @param frontY float
--- @param frontZ float
--- @param upX float
--- @param upY float
--- @param upZ float
--- @return float w
--- @return float x
--- @return float y
--- @return float z
function convertMatrixToQuaternion(rightX, rightY, rightZ, frontX, frontY, frontZ, upX, upY, upZ) end

--- @param w float
--- @param x float
--- @param y float
--- @param z float
--- @return float rightX
--- @return float rightY
--- @return float rightZ
--- @return float frontX
--- @return float frontY
--- @return float frontZ
--- @return float upX
--- @return float upY
--- @return float upZ
function convertQuaternionToMatrix(w, x, y, z) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @return float wposX
--- @return float wposY
function convert3DCoordsToScreen(posX, posY, posZ) end

--- @param key int
--- @param state int
function setGameKeyState(key, state) end

--- @return int posX
--- @return int posY
function getCursorPos() end

--- @param wposX float
--- @param wposY float
--- @return float gposX
--- @return float gposY
function convertWindowScreenCoordsToGameScreenCoords(wposX, wposY) end

--- @param gposX float
--- @param gposY float
--- @return float wposX
--- @return float wposY
function convertGameScreenCoordsToWindowScreenCoords(gposX, gposY) end

--- @param posX float
--- @param posY float
--- @param depth float
--- @return float posX
--- @return float posY
--- @return float posZ
function convertScreenCoordsToWorld3D(posX, posY, depth) end

--- @param module string
--- @return uint handle
function getModuleHandle(module) end

--- @param module string
--- @param proc string
--- @return uint address
function getModuleProcAddress(module, proc) end

--- @param vkey int
--- @param down bool
function setVirtualKeyDown(vkey, down) end

--- @param ckey int
--- @param down bool
function setCharKeyDown(ckey, down) end

--- @param url string
--- @param file string
--- @param statusCallback function
--- @return int index
function downloadUrlToFile(url, file, statusCallback) end

--- @param key int
--- @return bool state
function isKeyJustPressed(key) end

--- @param posX float
--- @param posY float
--- @param posZ float
--- @param checkMin bool
--- @param checkMax bool
--- @return bool result
--- @return float x
--- @return float y
--- @return float z
--- @return float w
--- @return float h
function convert3DCoordsToScreenEx(posX, posY, posZ, checkMin, checkMax) end

--- @param struct uint
--- @param offset int
--- @param unprotect bool
--- @return float value
function getStructFloatElement(struct, offset, unprotect) end

--- @param struct uint
--- @param offset int
--- @param value float
--- @param unprotect bool
function setStructFloatElement(struct, offset, value, unprotect) end

--- @param key int
--- @return bool state
function wasKeyPressed(key) end

--- @param key int
--- @return bool state
function wasKeyReleased(key) end

--- @return int delta
function getMousewheelDelta() end

--- @param game bool
--- @param scripts bool
function consumeWindowMessage(game, scripts) end

--- @param eventName string
--- @param callback function
function addEventHandler(eventName, callback) end

--- @return bool paused
function isGamePaused() end

--- @return double time
function gameClock() end

--- @param property string
function script_properties(property) end

--- @param url string
function script_url(url) end

--- @param filename string
--- @return any imports
function import(filename) end

--- @param data table
--- @return string json
function encodeJson(data) end

--- @param json string
--- @return table data
function decodeJson(json) end

--- @param show bool
--- @param lockControls bool
function showCursor(show, lockControls) end

--- @param lock bool
function lockPlayerControl(lock) end

--- @return bool locked
function isPlayerControlLocked() end

--- @param blip Marker
--- @param x float
--- @param y float
--- @param z float
--- @return bool result
function setBlipCoordinates(blip, x, y, z) end

--- @param x float
--- @param y float
--- @param z float
--- @return bool result
function setTargetBlipCoordinates(x, y, z) end

--- @param x float
--- @param y float
--- @param z float
--- @return bool result
function placeWaypoint(x, y, z) end

--- @return bool result
function removeWaypoint() end

--- @param csidl int
--- @return string path
function getFolderPath(csidl) end

--- @return float value
function getTimeStepValue() end

--- @return uint devicePtr
function getD3DDevicePtr() end

--- @return table objects
function getAllObjects() end

--- @return table peds
function getAllChars() end

--- @return table vehicles
function getAllVehicles() end

--- @param index int
--- @return float value
function getGameGlobalFloat(index) end

--- @param index int
--- @param value float
function setGameGlobalFloat(index, value) end

--- @param file string
--- @return LuaScript s
function script.load(file) end

--- @param name string
--- @return LuaScript s
function script.find(name) end

--- @return table list
function script.list() end

--- @param scriptId int
--- @return LuaScript script
function script.get(scriptId) end

function script.this() end

--- @param default table
--- @param file string
--- @return table data
function inicfg.load(default, file) end

--- @param data table
--- @param file string
--- @return bool result
function inicfg.save(data, file) end

--- @param address uint
--- @param size uint
--- @param unprotect bool
--- @return int value
function memory.read(address, size, unprotect) end

--- @param address uint
--- @param value int
--- @param size uint
--- @param unprotect bool
function memory.write(address, value, size, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getint8(address, unprotect) end

--- @param address uint
--- @param byte int
--- @param unprotect bool
--- @return bool result
function memory.setint8(address, byte, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getint16(address, unprotect) end

--- @param address uint
--- @param word int
--- @param unprotect bool
--- @return bool result
function memory.setint16(address, word, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getint32(address, unprotect) end

--- @param address uint
--- @param dword int
--- @param unprotect bool
--- @return bool result
function memory.setint32(address, dword, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return double value
function memory.getint64(address, unprotect) end

--- @param address uint
--- @param qword double
--- @param unprotect bool
--- @return bool result
function memory.setint64(address, qword, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getuint8(address, unprotect) end

--- @param address uint
--- @param byte int
--- @param unprotect bool
--- @return bool result
function memory.setuint8(address, byte, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getuint16(address, unprotect) end

--- @param address uint
--- @param word int
--- @param unprotect bool
--- @return bool result
function memory.setuint16(address, word, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return int value
function memory.getuint32(address, unprotect) end

--- @param address uint
--- @param dword int
--- @param unprotect bool
--- @return bool result
function memory.setuint32(address, dword, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return double value
function memory.getuint64(address, unprotect) end

--- @param address uint
--- @param qword double
--- @param unprotect bool
--- @return bool result
function memory.setuint64(address, qword, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return float value
function memory.getfloat(address, unprotect) end

--- @param address uint
--- @param value float
--- @param unprotect bool
--- @return bool result
function memory.setfloat(address, value, unprotect) end

--- @param address uint
--- @param unprotect bool
--- @return double value
function memory.getdouble(address, unprotect) end

--- @param address uint
--- @param value double
--- @param unprotect bool
--- @return bool result
function memory.setdouble(address, value, unprotect) end

--- @param address uint
--- @param size uint
--- @return int oldProtection
function memory.unprotect(address, size) end

--- @param address uint
--- @param size uint
--- @param newProtection int
--- @return int oldProtection
function memory.protect(address, size, newProtection) end

--- @param destAddress uint
--- @param srcAddress uint
--- @param size uint
--- @param unprotect bool
function memory.copy(destAddress, srcAddress, size, unprotect) end

--- @param address1 uint
--- @param address2 uint
--- @param size uint
--- @param unprotect bool
--- @return bool result
function memory.compare(address1, address2, size, unprotect) end

--- @param address uint
--- @param size uint
--- @param unprotect bool
--- @return string str
function memory.tostring(address, size, unprotect) end

--- @param address uint
--- @param size uint
--- @param unprotect bool
--- @return string hexstr
function memory.tohex(address, size, unprotect) end

--- @param hex string
--- @return string bin
function memory.hex2bin(hex) end

--- @param address uint
--- @param value int
--- @param size uint
--- @param unprotect bool
function memory.fill(address, value, size, unprotect) end

--- @param str string
--- @return uint address
function memory.strptr(str) end

--- @param func function
--- @return LuaThread thread
function lua_thread.create(func) end

--- @param func function
--- @return LuaThread thread
function lua_thread.create_suspended(func) end
