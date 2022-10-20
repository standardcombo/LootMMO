--[[
	FluidMannequin - README
	
	v 0.1.0 - 1/7/2021

	By estlogic
    
	(work in progress)
    
	Description
	-------------------   
	This is a mannequin/costume template inspired by the ones made by Sobchak.	This version of the mannequin can automatically
	change which template is used based on the gender of the player's character. Additional settings allow the creator to control
	when the costume is allowed to change and whether a preview is spawned. Next possibile update will allow the creator to
	"force fit" a costume to a player no matter which gender the player's character is.
	    
    This set comes with:
        1) FluidMannequin
        2) MannequinGalTemplate
        3) MannequinGuyTemplate
        4) CostumeServerManager
        5) CostumeClientManager
        6) PickupTrigger

	
	Setup Instructions
	-------------------
	* Drop the FluidMannequin equipment into the hierarchy and deinstance it.
	* Navigate to the custom properties of the FluidMannequin equipment root.
	* Select the Find Asset in Catalog button for both MannequinGuyTemplate and MannequinGalTemplate and use these templates to 
		create custom costumes (see below for details).
	* Replace the asset references for MannequinGuyTemplate and MannequinGalTemplate with the custom costumes.
	* Select values for AllowLiveSwapping, ChangeInterval, AllowPreview, and PlayerVisibility custom properties (see below for 
		details).
	* Rename the FluidMannequin equipment root and save the whole package as a new template.
	* The new template should be ready to use.	
	
	Creating a Costume
	-------------------
	The MannequinGuyTemplate and MannequinGalTemplate templates have been set with accurate positions and rotations for all of
	the costume sockets based on the unarmed_bind_pose. These templates are structured as such:
	
	> MannequinTemplate (client context group)
		> socket_child (group with a socket name)
			> CostumeRoot (will be used for a future update for force-fiting costumes)
				> MannequinGuide (simple mannequin visual representation)
				> SampleCostume (group containing the sample costume components)
				
	socket_child and CostumeRoot should not be changed in any way. When done making the costume, socket_child should have the 
	original rotation and position, and CostumeRoot should be zeroed out relative to its corresponding socket_child.
	
	MannequinGuide can be deleted once the costume is finished, and SampleCostume is is group where the comnponents of the
	custom costume should go.
	
	The MannequinTemplate root can be renamed before saving as a new template.
	
	NOTE: Due to how the CostumeClientManager works, the costume names must be different for the GuyTemplate and GalTemplate.
	
	Additional Settings
	-------------------	
	AllowLiveSwapping - When true, the costume is allowed to change whenever the player changes. When false, the costume can only
	change the moment the costume is equipped. Thsi means that if a player equips the costume as one gender, swaps, then equips
	again, the costume will change accordingly, but the player cannot change while wearing the costume.
	
	ChangeInterval - A float that determines the rate at which the player's gender is checked. This applies only if live swapping
	is enabled.
	
	AllowPreview - When true, the equipment will spawn a preview while unequipped. This preview is just the costume template
	spawned in with the parent set to the ClientContext group inside the equipment. When false, no preview is spawned.
	
	PlayerVisibility - At any negative number, the player's visibility will not be set. This is useful if there are external factors
	that may change and rely on player visibility. Zero will force player visibility off upon equipping the costume. Any positive number
	will force player visibility on upon equipping the costume.

	For more information check the tooltips on each of the script properties.
--]]