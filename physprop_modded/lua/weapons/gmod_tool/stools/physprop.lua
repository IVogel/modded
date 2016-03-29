
TOOL.Category = "Construction"
TOOL.Name = "#tool.physprop.name"

TOOL.ClientConVar[ "gravity_toggle" ] = "1"
TOOL.ClientConVar[ "material" ] = "metal_bouncy"

function TOOL:LeftClick( trace )

	if ( !IsValid( trace.Entity ) ) then return false end
	if ( trace.Entity:IsPlayer() || trace.Entity:IsWorld() ) then return false end

	-- Make sure there's a physics object to manipulate
	if ( SERVER && !util.IsValidPhysicsObject( trace.Entity, trace.PhysicsBone ) ) then return false end

	-- Client can bail out here and assume we're going ahead
	if ( CLIENT ) then return true end

	-- Get the entity/bone from the trace
	local ent = trace.Entity
	local Bone = trace.PhysicsBone

	-- Get client's CVars
	local gravity = self:GetClientNumber( "gravity_toggle" ) == 1
	local material = self:GetClientInfo( "material" )

	-- Set the properties

	construct.SetPhysProp( self:GetOwner(), ent, Bone, nil, { GravityToggle = gravity, Material = material } )

	DoPropSpawnedEffect( ent )

	return true
	
end

function TOOL:RightClick( trace )
	return false
end

local ConVarsDefault = TOOL:BuildConVarList()

	list.Set( "PhysicsMaterials", "metal_bouncy", { physprop_material = "metal_bouncy" } )
	list.Set( "PhysicsMaterials", "sphere", { physprop_material = "sphere" } )
	list.Set( "PhysicsMaterials", "plastic", { physprop_material = "plastic" } )
	list.Set( "PhysicsMaterials", "papercup", { physprop_material = "papercup" } )
	list.Set( "PhysicsMaterials", "wood_furniture", { physprop_material = "wood_furniture" } )
	list.Set( "PhysicsMaterials", "slipperymetal", { physprop_material = "slipperymetal" } )
	list.Set( "PhysicsMaterials", "plastic_barrel_buoyant", { physprop_material = "plastic_barrel_buoyant" } )
	list.Set( "PhysicsMaterials", "strider", { physprop_material = "strider" } )
	list.Set( "PhysicsMaterials", "energyball", { physprop_material = "energyball" } )
	list.Set( "PhysicsMaterials", "wood", { physprop_material = "wood" } )
	list.Set( "PhysicsMaterials", "rubber", { physprop_material = "rubber" } )
	list.Set( "PhysicsMaterials", "slidingrubbertire", { physprop_material = "slidingrubbertire" } )
	list.Set( "PhysicsMaterials", "grenade", { physprop_material = "grenade" } )
	list.Set( "PhysicsMaterials", "antlionsand", { physprop_material = "antlionsand" } )
	list.Set( "PhysicsMaterials", "zombieflesh", { physprop_material = "zombieflesh" } )
	list.Set( "PhysicsMaterials", "metal_barrel_hl", { physprop_material = "metal_barrel_hl" } )
	list.Set( "PhysicsMaterials", "grass", { physprop_material = "grass" } )
	list.Set( "PhysicsMaterials", "phx_rubbertire2", { physprop_material = "phx_rubbertire2" } )
	list.Set( "PhysicsMaterials", "phx_rubbertire", { physprop_material = "phx_rubbertire" } )
	list.Set( "PhysicsMaterials", "snow", { physprop_material = "snow" } )
	list.Set( "PhysicsMaterials", "phx_explosiveball", { physprop_material = "phx_explosiveball" } )
	list.Set( "PhysicsMaterials", "porcelain", { physprop_material = "porcelain" } )
	list.Set( "PhysicsMaterials", "crowbar", { physprop_material = "crowbar" } )
	list.Set( "PhysicsMaterials", "stone", { physprop_material = "stone" } )
	list.Set( "PhysicsMaterials", "gm_ps_metaltire", { physprop_material = "gm_ps_metaltire" } )
	list.Set( "PhysicsMaterials", "rock", { physprop_material = "rock" } )
	list.Set( "PhysicsMaterials", "default_silent", { physprop_material = "default_silent" } )
	list.Set( "PhysicsMaterials", "phx_tire_normal", { physprop_material = "phx_tire_normal" } )
	list.Set( "PhysicsMaterials", "chainlink", { physprop_material = "chainlink" } )
	list.Set( "PhysicsMaterials", "boulder", { physprop_material = "boulder" } )
	list.Set( "PhysicsMaterials", "plastic_box", { physprop_material = "plastic_box" } )
	list.Set( "PhysicsMaterials", "rubbertire", { physprop_material = "rubbertire" } )
	list.Set( "PhysicsMaterials", "slidingrubbertire_front", { physprop_material = "slidingrubbertire_front" } )
	list.Set( "PhysicsMaterials", "slidingrubbertire_jalopyrear", { physprop_material = "slidingrubbertire_jalopyrear" } )
	list.Set( "PhysicsMaterials", "solidmetal", { physprop_material = "solidmetal" } )
	list.Set( "PhysicsMaterials", "combine_glass", { physprop_material = "combine_glass" } )
	list.Set( "PhysicsMaterials", "alienflesh", { physprop_material = "alienflesh" } )
	list.Set( "PhysicsMaterials", "no_decal", { physprop_material = "no_decal" } )
	list.Set( "PhysicsMaterials", "demoman_grenade", { physprop_material = "demoman_grenade" } )
	list.Set( "PhysicsMaterials", "hunter", { physprop_material = "hunter" } )
	list.Set( "PhysicsMaterials", "paintcan", { physprop_material = "paintcan" } )
	list.Set( "PhysicsMaterials", "metal_barrellight_hl", { physprop_material = "metal_barrellight_hl" } )
	list.Set( "PhysicsMaterials", "roller", { physprop_material = "roller" } )
	list.Set( "PhysicsMaterials", "gm_ps_soccerball", { physprop_material = "gm_ps_soccerball" } )
	list.Set( "PhysicsMaterials", "water", { physprop_material = "water" } )
	list.Set( "PhysicsMaterials", "armorflesh", { physprop_material = "armorflesh" } )
	list.Set( "PhysicsMaterials", "gmod_silent", { physprop_material = "gmod_silent" } )
	list.Set( "PhysicsMaterials", "wood_box", { physprop_material = "wood_box" } )
	list.Set( "PhysicsMaterials", "friction_00", { physprop_material = "friction_00" } )
	list.Set( "PhysicsMaterials", "wood_plank", { physprop_material = "wood_plank" } )
	list.Set( "PhysicsMaterials", "plastic_barrel", { physprop_material = "plastic_barrel" } )
	list.Set( "PhysicsMaterials", "ceiling_tile", { physprop_material = "ceiling_tile" } )
	list.Set( "PhysicsMaterials", "default", { physprop_material = "default" } )
	list.Set( "PhysicsMaterials", "quicksand", { physprop_material = "quicksand" } )
	list.Set( "PhysicsMaterials", "gm_torpedo", { physprop_material = "gm_torpedo" } )
	list.Set( "PhysicsMaterials", "canister", { physprop_material = "canister" } )
	list.Set( "PhysicsMaterials", "cardboard", { physprop_material = "cardboard" } )
	list.Set( "PhysicsMaterials", "ice", { physprop_material = "ice" } )
	list.Set( "PhysicsMaterials", "brass_bell_large", { physprop_material = "brass_bell_large" } )
	list.Set( "PhysicsMaterials", "computer", { physprop_material = "computer" } )
	list.Set( "PhysicsMaterials", "brakingrubbertire", { physprop_material = "brakingrubbertire" } )
	list.Set( "PhysicsMaterials", "woodladder", { physprop_material = "woodladder" } )
	list.Set( "PhysicsMaterials", "ladder", { physprop_material = "ladder" } )
	list.Set( "PhysicsMaterials", "concrete", { physprop_material = "concrete" } )
	list.Set( "PhysicsMaterials", "phx_ww2bomb", { physprop_material = "phx_ww2bomb" } )
	list.Set( "PhysicsMaterials", "wood_crate", { physprop_material = "wood_crate" } )
	list.Set( "PhysicsMaterials", "metalvehicle", { physprop_material = "metalvehicle" } )
	list.Set( "PhysicsMaterials", "mud", { physprop_material = "mud" } )
	list.Set( "PhysicsMaterials", "brass_bell_smallest", { physprop_material = "brass_bell_smallest" } )
	list.Set( "PhysicsMaterials", "wood_panel", { physprop_material = "wood_panel" } )
	list.Set( "PhysicsMaterials", "sand", { physprop_material = "sand" } )
	list.Set( "PhysicsMaterials", "gmod_bouncy", { physprop_material = "gmod_bouncy" } )
	list.Set( "PhysicsMaterials", "player_control_clip", { physprop_material = "player_control_clip" } )
	list.Set( "PhysicsMaterials", "frictionm_00", { physprop_material = "frictionm_00" } )
	list.Set( "PhysicsMaterials", "plastic_barrel_verybuoyant", { physprop_material = "plastic_barrel_verybuoyant" } )
	list.Set( "PhysicsMaterials", "gunship", { physprop_material = "gunship" } )
	list.Set( "PhysicsMaterials", "friction_25", { physprop_material = "friction_25" } )
	list.Set( "PhysicsMaterials", "frictionm_10", { physprop_material = "frictionm_10" } )
	list.Set( "PhysicsMaterials", "antlion_eggshell", { physprop_material = "antlion_eggshell" } )
	list.Set( "PhysicsMaterials", "metal_seafloorcar", { physprop_material = "metal_seafloorcar" } )
	list.Set( "PhysicsMaterials", "floating_metal_barrel", { physprop_material = "floating_metal_barrel" } )
	list.Set( "PhysicsMaterials", "frictionm_25", { physprop_material = "frictionm_25" } )
	list.Set( "PhysicsMaterials", "phx_flakshell", { physprop_material = "phx_flakshell" } )
	list.Set( "PhysicsMaterials", "metalpanel", { physprop_material = "metalpanel" } )
	list.Set( "PhysicsMaterials", "flesh", { physprop_material = "flesh" } )
	list.Set( "PhysicsMaterials", "brick", { physprop_material = "brick" } )
	list.Set( "PhysicsMaterials", "cavern_rock", { physprop_material = "cavern_rock" } )
	list.Set( "PhysicsMaterials", "brass_bell_medium", { physprop_material = "brass_bell_medium" } )
	list.Set( "PhysicsMaterials", "concrete_block", { physprop_material = "concrete_block" } )
	list.Set( "PhysicsMaterials", "jalopy", { physprop_material = "jalopy" } )
	list.Set( "PhysicsMaterials", "metal_box", { physprop_material = "metal_box" } )
	list.Set( "PhysicsMaterials", "glass", { physprop_material = "glass" } )
	list.Set( "PhysicsMaterials", "metal", { physprop_material = "metal" } )
	list.Set( "PhysicsMaterials", "slidingrubbertire_jalopyfront", { physprop_material = "slidingrubbertire_jalopyfront" } )
	list.Set( "PhysicsMaterials", "carpet", { physprop_material = "carpet" } )
	list.Set( "PhysicsMaterials", "watermelon", { physprop_material = "watermelon" } )
	list.Set( "PhysicsMaterials", "friction_10", { physprop_material = "friction_10" } )
	list.Set( "PhysicsMaterials", "tile", { physprop_material = "tile" } )
	list.Set( "PhysicsMaterials", "item", { physprop_material = "item" } )
	list.Set( "PhysicsMaterials", "slime", { physprop_material = "slime" } )
	list.Set( "PhysicsMaterials", "gm_ps_woodentire", { physprop_material = "gm_ps_woodentire" } )
	list.Set( "PhysicsMaterials", "glassbottle", { physprop_material = "glassbottle" } )
	list.Set( "PhysicsMaterials", "combine_metal", { physprop_material = "combine_metal" } )
	list.Set( "PhysicsMaterials", "slipperyslime", { physprop_material = "slipperyslime" } )
	list.Set( "PhysicsMaterials", "pottery", { physprop_material = "pottery" } )
	list.Set( "PhysicsMaterials", "metal_barrel", { physprop_material = "metal_barrel" } )
	list.Set( "PhysicsMaterials", "wood_solid", { physprop_material = "wood_solid" } )
	list.Set( "PhysicsMaterials", "bloodyflesh", { physprop_material = "bloodyflesh" } )
	list.Set( "PhysicsMaterials", "metalgrate", { physprop_material = "metalgrate" } )
	list.Set( "PhysicsMaterials", "wood_lowdensity", { physprop_material = "wood_lowdensity" } )
	list.Set( "PhysicsMaterials", "foliage", { physprop_material = "foliage" } )
	list.Set( "PhysicsMaterials", "hay", { physprop_material = "hay" } )
	list.Set( "PhysicsMaterials", "metalvent", { physprop_material = "metalvent" } )
	list.Set( "PhysicsMaterials", "paper", { physprop_material = "paper" } )
	list.Set( "PhysicsMaterials", "chain", { physprop_material = "chain" } )
	list.Set( "PhysicsMaterials", "dirt", { physprop_material = "dirt" } )
	list.Set( "PhysicsMaterials", "advisor_shield", { physprop_material = "advisor_shield" } )
	list.Set( "PhysicsMaterials", "jalopytire", { physprop_material = "jalopytire" } )
	list.Set( "PhysicsMaterials", "plaster", { physprop_material = "plaster" } )
	list.Set( "PhysicsMaterials", "floatingstandable", { physprop_material = "floatingstandable" } )
	list.Set( "PhysicsMaterials", "gmod_ice", { physprop_material = "gmod_ice" } )
	list.Set( "PhysicsMaterials", "gravel", { physprop_material = "gravel" } )
	list.Set( "PhysicsMaterials", "antlion", { physprop_material = "antlion" } )
	list.Set( "PhysicsMaterials", "brass_bell_small", { physprop_material = "brass_bell_small" } )
	list.Set( "PhysicsMaterials", "weapon", { physprop_material = "weapon" } )
	list.Set( "PhysicsMaterials", "gm_ps_egg", { physprop_material = "gm_ps_egg" } )
	list.Set( "PhysicsMaterials", "slidingrubbertire_rear", { physprop_material = "slidingrubbertire_rear" } )
	list.Set( "PhysicsMaterials", "player", { physprop_material = "player" } )
	list.Set( "PhysicsMaterials", "grenade_napalm", { physprop_material = "grenade_napalm" } )
	list.Set( "PhysicsMaterials", "popcan", { physprop_material = "popcan" } )
	list.Set( "PhysicsMaterials", "wade", { physprop_material = "wade" } )
	list.Set( "PhysicsMaterials", "jeeptire", { physprop_material = "jeeptire" } )


function TOOL.BuildCPanel( CPanel )
	print("LDL")
	CPanel:AddControl( "ComboBox", { MenuButton = 1, Folder = "physprop", Options = { [ "#preset.default" ] = ConVarsDefault }, CVars = table.GetKeys( ConVarsDefault ) } )

	CPanel:AddControl( "CheckBox", { Label = "#tool.physprop.gravity", Command = "physprop_gravity_toggle" } )

	local listw = vgui.Create( "DListView" )
	listw:SetMultiSelect( false )
	listw:AddColumn( "#tool.physprop.material" )
	for k, v in pairs( list.Get( "PhysicsMaterials" ) ) do

		local line = listw:AddLine( k )
		line.data = v
		for k, v in pairs( line.data ) do
			if ( GetConVarString( k ) == v ) then
				line:SetSelected( true )
			end
		end		
	end
	listw:SetTall( 500 )
	listw:SortByColumn( 1, false )
	function listw:OnRowSelected( lid, l )
		for k, v in pairs( l.data ) do
			RunConsoleCommand( k, v )
		end
	end
	
	CPanel:AddItem( listw )
end

