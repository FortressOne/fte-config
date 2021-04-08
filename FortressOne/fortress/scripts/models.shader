///////////////////////projectiles///////////////////////

textures/grenade
{
	{
		map textures/grenade_glow.tga
		rgbGen identity
	}
	{
		map textures/grenade.tga
		blendFunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
	}
}

textures/missile
{
	{
		map textures/missile_glow.tga
		rgbGen identity
	}
	{
		map textures/missile.tga
		blendFunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
	}
}

////////////////////view weapons//////////////////

//textures/v_rock2
//{
//	{
//		map textures/v_rock2_spec.tga
//		rgbGen lightingDiffuse        
//		tcGen environment
//	}
//	{
//		map textures/v_rock2.tga
//		rgbGen lightingDiffuse
//		blendFunc GL_ONE GL_ONE
//	}
//}

textures/v_rock2_flash
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_rock_flash
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_light_flash
{
	{
		map textures/v_light_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail_flash_l
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail_flash_r
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail2_flash_01
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail2_flash_02
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail2_flash_03
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_nail2_flash_04
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_shot_flash
{
	{
		map textures/v_rock2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

textures/v_shot2_flash
{
	{
		map textures/v_shot2_flash.tga
		blendFunc add
		rgbGen identity
	}
}

////////////////////ground weapons////////////////

textures/g_light
{
	{
		map textures/sfx/quad.tga
//		rgbGen identity
		tcMod scale 6 6
		tcMod scroll 0.5 0.1
	}
	{
		map textures/g_light.tga
		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		rgbGen lightingDiffuse
	}
}

////////////////////armour///////////////////////

//textures/armor_0
//{
//	{
//		map textures/sfx/lightning_green.tga
//		rgbGen identity
//		tcMod scale 2 2
//		tcMod scroll 2 1
//	}
//	{
//		map textures/armor_0.tga
//		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
//		rgbGen lightingDiffuse
//	}
//}

//textures/armor_1
//{
//	{
//		map textures/sfx/lightning_yellow.tga
//		rgbGen identity
//		tcMod scale 2 2
//		tcMod scroll 2 1
//	}
//	{
//		map textures/armor_1.tga
//		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
//		rgbGen lightingDiffuse
//	}
//}

//textures/armor_2
//{
//	{
//		map textures/sfx/lightning_red.tga
//		rgbGen identity
//		tcMod scale 2 2
//		tcMod scroll 2 1
//	}
//	{
//		map textures/armor_2.tga
//		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
//		rgbGen lightingDiffuse
//	}
//}