--[[
	Cinematic Shot
	v1.0
	by: standardcombo

Important update December 2022:
The Cinematic Shot component is now maintained by CoreAcademy. To get the latest and best version,
search community content for their version instead.

This component pans a camera from point A to B. It can be used for both capturing video and for
in-game cinematic moments. For complex sequences with multiple shots simply add copies of this
template as needed and setup their sequence numbers to create a chain.

USAGE
1. Position CameraStart and CameraEnd at the desired locations.
2. If the shot looks at a specific point position the Target object and use the 'LookAtTarget' option.
3. Configure properties at the root of the template, such as duration, key binding and sequence number.
4. Play the game and activate the camera with the specified key (Default is 'M').

TIP: For an easy workflow when positioning cameras:
1. During edit mode, select the camera you wish to position.
2. Move the editor view to the position and rotation you want.
3. Right-click in the middle of the screen and select:
   "Move Selected Object to Camera and Align Orientation"
NOTE: The editor's camera has a fixed FOV, while the cinematic cameras can have their FOVs customized,
   therefore what the editor view sees is not exactly what the cinematic camera will show.

TIP 2: See the tooltips on each custom property for more info about each option.

For capturing game video the use of keyboard shortcuts is recommended when activating a shot.
If multiple shots are setup with the same key binding, pressing the key will cycle through them.

For gameplay moments, cinematic sequences should be triggered with events by setting the 'PlayOnEvent'
property. At the given gameplay moment a server script should call Events.BroadcastToPlayer().
If all players should see the cinematic at the same time use Events.BroadcastToAllPlayers() instead.
See the Core API for more info about events.

------------------------------
Appendix: ABILITY BINDING LIST
------------------------------
Mouse 1			ability_primary
Mouse 2			ability_secondary
Left Shift 		ability_feet
0				ability_extra_0
1				ability_extra_1
2				ability_extra_2
3				ability_extra_3
4				ability_extra_4
5				ability_extra_5
6				ability_extra_6
7				ability_extra_7
8				ability_extra_8
9				ability_extra_9
Left Ctrl		ability_extra_10
Right Ctrl		ability_extra_11
Left Shift		ability_extra_12
Right Shift		ability_extra_13
Left Alt		ability_extra_14
Right Alt		ability_extra_15
Return			ability_extra_16
Spacebar		ability_extra_17
Capslock		ability_extra_18
Tab				ability_extra_19
Q				ability_extra_20
W				ability_extra_21
E				ability_extra_22
R				ability_extra_23
T				ability_extra_24
Y				ability_extra_25
U				ability_extra_26
I				ability_extra_27
O				ability_extra_28
P				ability_extra_29
A				ability_extra_30
S				ability_extra_31
D				ability_extra_32
F				ability_extra_33
G				ability_extra_34
H				ability_extra_35
J				ability_extra_36
K				ability_extra_37
L				ability_extra_38
Z				ability_extra_39
X				ability_extra_40
C				ability_extra_41
V				ability_extra_42
B				ability_extra_43
N				ability_extra_44
M				ability_extra_45
Up Arrow		ability_extra_46
Down Arrow		ability_extra_47
Left Arrow		ability_extra_48
Right Arrow		ability_extra_49
F1				ability_extra_50
F2				ability_extra_51
F3				ability_extra_52
F4				ability_extra_53
F5				ability_extra_54
F6				ability_extra_55
F7				ability_extra_56
F8				ability_extra_57
F9				ability_extra_58
F10				ability_extra_59
F11				ability_extra_60
F12				ability_extra_61
Insert			ability_extra_62
Home			ability_extra_63
Page Up			ability_extra_64
Page Down		ability_extra_65
Delete			ability_extra_66
End				ability_extra_67
--]]