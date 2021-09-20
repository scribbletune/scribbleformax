{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 353.0, -947.0, 1699.0, 897.0 ],
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-48",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 234.0, 505.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 984.0, 186.0, 183.0, 22.0 ],
					"text" : "prepend set useScaleNotesForR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 853.0, 186.0, 133.0, 22.0 ],
					"text" : "prepend set sizzleReps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 746.0, 186.0, 105.0, 22.0 ],
					"text" : "prepend set sizzle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 634.0, 186.0, 110.0, 22.0 ],
					"text" : "prepend set subdiv"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 491.0, 186.0, 148.0, 22.0 ],
					"text" : "prepend set repeatPattern"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 186.0, 89.0, 22.0 ],
					"text" : "prepend set ab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 186.0, 103.0, 22.0 ],
					"text" : "prepend set scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 215.0, 156.0, 59.0, 22.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 404.0, 59.0, 22.0 ],
					"text" : "makeClip"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 215.0, 186.0, 113.0, 22.0 ],
					"text" : "prepend set pattern"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 552.0, 96.0, 22.0 ],
					"text" : "setNotes apiClip"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 28.0, 447.0, 225.0, 22.0 ],
					"text" : "node.script riff.js @autostart 1 @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 26.0, 263.0, 91.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 28.0, 505.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict apiClip"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 597.0, 37.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "api",
						"parameter_enable" : 0
					}
,
					"text" : "js api"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-39",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1019.733324551582427, 147.5, 245.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 280.0, 126.5, 215.0, 27.0 ],
					"text" : "(if you deselect USE SCALE, then R will randomly toggle between MIDI note on/off",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 475.0, 123.666666805744171, 56.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 121.5, 56.0, 20.0 ],
					"text" : "REPEAT",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 475.0, 147.5, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 137.5, 23.699999999999989, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "menuRepeatPattern",
							"parameter_mmax" : 7,
							"parameter_shortname" : "menuRepeatPattern",
							"parameter_type" : 2
						}

					}
,
					"varname" : "menuRepeatPattern"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 983.900000000000091, 89.833323389291763, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1019.733324551582427, 127.5, 270.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 169.0, 42.166666805744171, 71.0, 18.0 ],
					"text" : "USE SCALE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"checkedcolor" : [ 0.266887962818146, 0.742145776748657, 0.184240370988846, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 983.900000000000091, 127.5, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 172.0, 57.333337634801865, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "_rootOctScale.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 117.833333611488342, 167.333334505558014, 37.666666388511658 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 38.166666805744171, 166.333334505558014, 37.666666388511658 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 837.0, 123.0, 51.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.0, 84.5, 42.0, 20.0 ],
					"text" : "REPS",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 837.0, 147.5, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.300000000000011, 104.5, 36.699999999999989, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "4" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "menuSizzleReps",
							"parameter_mmax" : 2,
							"parameter_shortname" : "menuSizzleReps",
							"parameter_type" : 2
						}

					}
,
					"varname" : "menuSizzleReps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 730.0, 123.0, 51.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 163.0, 84.5, 55.0, 20.0 ],
					"text" : "SIZZLE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 730.0, 147.5, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 104.5, 52.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "none", "sin", "cos", "rampUp", "rampDown" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "menuSizzle",
							"parameter_mmax" : 4,
							"parameter_shortname" : "menuSizzle",
							"parameter_type" : 2
						}

					}
,
					"varname" : "menuSizzle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 618.0, 123.0, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 71.0, 84.5, 94.0, 20.0 ],
					"text" : "NOTE LENGTH",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 618.0, 147.5, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 74.0, 102.5, 57.699999999999989, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "2m", "1m", "1n", "2n", "4n", "8n" ],
							"parameter_initial" : [ 4.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "menuSubdiv",
							"parameter_mmax" : 5,
							"parameter_shortname" : "menuSubdiv",
							"parameter_type" : 2
						}

					}
,
					"varname" : "menuSubdiv"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 123.0, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 84.5, 56.0, 20.0 ],
					"text" : "AB",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 362.0, 147.5, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 102.5, 57.699999999999989, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "A", "C", "AB", "BC", "AC", "AABC", "AAAB", "AABB", "AACC", "BAAA", "CAAA", "ABA", "BAB", "ABBC", "ABCC", "ABC", "BCA", "CAB", "ABCBCA", "ABCBCACAB" ],
							"parameter_initial" : [ 5.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "menuAb",
							"parameter_mmax" : 19,
							"parameter_shortname" : "menuAb",
							"parameter_type" : 2
						}

					}
,
					"varname" : "menuAb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 330.0, 74.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 177.300000000000011, 121.5, 90.0, 20.0 ],
					"text" : "GENERATE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.113725490196078, 0.717647058823529, 0.141176470588235, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 357.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 179.300000000000011, 137.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.900000000000091, 410.5, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 90.0, 61.0, 20.0 ],
					"text" : "Subdivide",
					"textcolor" : [ 0.690196078431373, 0.690196078431373, 0.690196078431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 410.5, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 90.0, 20.0, 20.0 ],
					"text" : "[ ]",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.000000000000114, 25.0, 184.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 23.0, 184.0, 20.0 ],
					"text" : "Select a clip in Session View first",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.900000000000091, 390.5, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 110.333337634801865, 57.0, 20.0 ],
					"text" : "Random",
					"textcolor" : [ 0.690196078431373, 0.690196078431373, 0.690196078431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.900000000000091, 370.5, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 69.0, 57.0, 20.0 ],
					"text" : "sustain",
					"textcolor" : [ 0.690196078431373, 0.690196078431373, 0.690196078431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.900000000000091, 350.5, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 49.0, 57.0, 20.0 ],
					"text" : "note off",
					"textcolor" : [ 0.690196078431373, 0.690196078431373, 0.690196078431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.900000000000091, 330.5, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 29.0, 57.0, 20.0 ],
					"text" : "note on",
					"textcolor" : [ 0.690196078431373, 0.690196078431373, 0.690196078431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 390.5, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 110.333337634801865, 20.0, 20.0 ],
					"text" : "R",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 370.5, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 69.0, 20.0, 20.0 ],
					"text" : "_",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 350.5, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 49.0, 18.0, 20.0 ],
					"text" : "-",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 330.5, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 29.0, 19.0, 20.0 ],
					"text" : "x",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.899999999999977, 310.5, 142.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 12.0, 134.0, 20.0 ],
					"text" : "PATTERN LANGUAGE",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 102.550000000000011, 6.5, 96.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 8.0, 43.0, 20.0 ],
					"text" : "RIFF",
					"textcolor" : [ 0.309803921568627, 0.772549019607843, 0.23921568627451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 6.5, 96.5, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 8.0, 133.0, 20.0 ],
					"text" : "SCRIBBLE 4 MAX v1.4",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 78.0, 63.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 121.5, 63.0, 20.0 ],
					"text" : "PATTERN",
					"textcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"bangmode" : 1,
					"border" : 1.0,
					"clickmode" : 1,
					"hint" : "",
					"id" : "obj-9",
					"keymode" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 215.0, 106.5, 134.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 137.5, 106.0, 26.0 ],
					"rounded" : 0.0,
					"text" : "xRRRxxRR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 674.0, 47.0, 22.0 ],
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 746.0, 607.0, 40.0, 22.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -267.499999999999886, -60.5, 1711.0, 846.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -10.0, -12.833333194255829, 1415.0, 763.0 ]
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
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-15" : [ "menuRepeatPattern", "menuRepeatPattern", 0 ],
			"obj-31" : [ "menuAb", "menuAb", 0 ],
			"obj-33" : [ "menuSizzle", "menuSizzle", 0 ],
			"obj-36" : [ "menuSubdiv", "menuSubdiv", 0 ],
			"obj-38" : [ "menuSizzleReps", "menuSizzleReps", 0 ],
			"obj-7::obj-12" : [ "menuOctaves", "menuOctaves", 0 ],
			"obj-7::obj-13" : [ "menuRoots", "menuRoots", 0 ],
			"obj-7::obj-7" : [ "menuScales", "menuScales", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "_rootOctScale.maxpat",
				"bootpath" : "~/Github/Riff-Prod",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
