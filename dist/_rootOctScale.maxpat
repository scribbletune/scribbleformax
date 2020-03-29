{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -402.0, -1062.0, 972.0, 660.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.000001907348633, 76.20000171661377, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.300001907348644, 4.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.300000000000011, 5.0, 50.0, 18.0 ],
					"text" : "SCALE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.300001907348644, 4.5, 49.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.300000000000011, 5.0, 49.0, 18.0 ],
					"text" : "OCTAVE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.000001907348633, 4.5, 41.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 5.0, 37.0, 18.0 ],
					"text" : "ROOT",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 4.000001907348633, 47.333337068557739, 194.0, 22.0 ],
					"text" : "combine C 3 \" \" major @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 4.000001907348633, 23.000002145767212, 40.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 23.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 11,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "menuRoots",
							"parameter_enum" : [ "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B" ],
							"parameter_type" : 2,
							"parameter_longname" : "menuRoots",
							"parameter_initial_enable" : 1
						}

					}
,
					"varname" : "menuRoots"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 50.300001907348644, 23.000002145767212, 31.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.300000000000011, 23.0, 31.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 7,
							"parameter_initial" : [ 2.0 ],
							"parameter_shortname" : "menuOctaves",
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_type" : 2,
							"parameter_longname" : "menuOctaves",
							"parameter_initial_enable" : 1
						}

					}
,
					"varname" : "menuOctaves"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 108.300001907348644, 23.000002145767212, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.300000000000011, 23.0, 57.699999999999989, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 7,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "menuScales",
							"parameter_enum" : [ "major", "minor", "dorian", "phrygian", "lydian", "mixolydian", "locrian", "harmonic minor" ],
							"parameter_type" : 2,
							"parameter_longname" : "menuScales",
							"parameter_initial_enable" : 1
						}

					}
,
					"varname" : "menuScales"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"source" : [ "obj-7", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-7" : [ "menuScales", "menuScales", 0 ],
			"obj-12" : [ "menuOctaves", "menuOctaves", 0 ],
			"obj-13" : [ "menuRoots", "menuRoots", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
