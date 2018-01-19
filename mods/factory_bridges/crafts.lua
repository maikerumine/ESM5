minetest.register_craft({output = FB.NAME..":i00 200",
	recipe ={
		{	"",			"",			"default:steel_ingot",	},
		{	"",			"default:steel_ingot",	"",			},
		{	"default:steel_ingot",	"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":i01 350",
	recipe ={
		{	"default:steel_ingot",	"default:steel_ingot", "",			},
	},
})
minetest.register_craft({output = FB.NAME..":i02",
	recipe ={
		{	FB.NAME..":i01",	FB.NAME..":i01",	FB.NAME..":i01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b00 10",
	recipe ={
		{	"default:steel_ingot",	"default:steel_ingot",	"default:steel_ingot",	},
	},
})

minetest.register_craft({output = FB.NAME..":a01",
	recipe ={
		{	"",			FB.NAME..":i01",	"",			},
		{	"",			FB.NAME..":i00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a05",
	recipe ={
		{	"",			FB.NAME..":i02",	"",			},
		{	FB.NAME..":i00",	"",			FB.NAME..":i00",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a13",
	recipe ={
		{	"",			FB.NAME..":i02",	FB.NAME..":i00",	},
		{	"",			FB.NAME..":i00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a14",
	recipe ={
		{	FB.NAME..":i00",	FB.NAME..":i02",	"",			},
		{	"",			FB.NAME..":i00",	"",			},
		{	"",			"",			"",			},
	},
})

minetest.register_craft({output = FB.NAME..":a02",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			"",			"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a03",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			"",			"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":a04",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			"",			"",			},
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":a06",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			"",			"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":a07",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			"",			"",			},
		{	FB.NAME..":a01",	"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a08",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			"",			"",			},
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":a09",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	"",			"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a10",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	"",			"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":a11",
	recipe ={
		{	"",			"",			"",			},
		{	FB.NAME..":a05",	"",			FB.NAME..":a05",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a12",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	"",			FB.NAME..":a05",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":a15",
	recipe ={
		{	"",			"",			"",			},
		{	FB.NAME..":a13",	"",			FB.NAME..":a14",	},
		{	"",			"",			"",			},
	},
})

minetest.register_craft({output = FB.NAME..":b01",
	recipe ={
		{	FB.NAME..":a01",	"",			"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b02",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b03",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b04",
	recipe ={
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
		{	"",			FB.NAME..":b00",	"",			},
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b05",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b06",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b07",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	FB.NAME..":a01",	"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b08",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	FB.NAME..":a01",	"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b09",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b10",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	FB.NAME..":b00",	"",			},
		{	"",			"",			FB.NAME..":a01",	},
	},
})
minetest.register_craft({output = FB.NAME..":b11",
	recipe ={
		{	"",			"",			"",			},
		{	FB.NAME..":a05",	FB.NAME..":b00",	FB.NAME..":a05",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b12",
	recipe ={
		{	"",			FB.NAME..":a05",	"",			},
		{	FB.NAME..":a05",	FB.NAME..":b00",	FB.NAME..":a05",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b02",
	recipe ={
		{	"",			FB.NAME..":a02",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b03",
	recipe ={
		{	"",			FB.NAME..":a03",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b04",
	recipe ={
		{	"",			FB.NAME..":a04",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b06",
	recipe ={
		{	"",			FB.NAME..":a06",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b07",
	recipe ={
		{	"",			FB.NAME..":a07",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b08",
	recipe ={
		{	"",			FB.NAME..":a08",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b09",
	recipe ={
		{	"",			FB.NAME..":a09",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b10",
	recipe ={
		{	"",			FB.NAME..":a10",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b11",
	recipe ={
		{	"",			FB.NAME..":a11",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":b12",
	recipe ={
		{	"",			FB.NAME..":a12",	"",			},
		{	"",			FB.NAME..":b00",	"",			},
		{	"",			"",			"",			},
	},
})

minetest.register_craft({output = FB.NAME..":c00 2",
	recipe ={
		{	FB.NAME..":i02",	FB.NAME..":b00",	"",			},
		{	FB.NAME..":b00",	FB.NAME..":i02",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":c01",
	recipe ={
		{	"",			"",			"",			},
		{	FB.NAME..":a13",	FB.NAME..":c00",	"",			},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":c02",
	recipe ={
		{	"",			"",			"",			},
		{	"",			FB.NAME..":c00",	FB.NAME..":a14",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":c03",
	recipe ={
		{	"",			"",			"",			},
		{	FB.NAME..":a13",	FB.NAME..":c00",	FB.NAME..":a14",	},
		{	"",			"",			"",			},
	},
})
minetest.register_craft({output = FB.NAME..":c03",
	recipe ={
		{	"",			FB.NAME..":a15",	"",			},
		{	"",			FB.NAME..":c00",	"",			},
		{	"",			"",			"",			},
	},
})

minetest.register_craft({output = FB.NAME..":d00",
	recipe ={
		{	"",			FB.NAME..":i02",	"",			},
		{	FB.NAME..":i02",	FB.NAME..":b00",	FB.NAME..":i02",	},
		{	"",			FB.NAME..":i02",	"",			},
	},
})

minetest.register_craft({output = FB.NAME..":s00",
	recipe ={
		{	"",			FB.NAME..":i00",	"",			},
		{	FB.NAME..":i02",	"",			FB.NAME..":i02",	},
		{	"",			FB.NAME..":i00",	"",			},
	},
})
minetest.register_craft({output = FB.NAME..":s01",
	recipe ={
		{	FB.NAME..":i02",	FB.NAME..":i02",	FB.NAME..":i02",	},
		{	FB.NAME..":i02",	FB.NAME..":s00",	FB.NAME..":i02",	},
		{	FB.NAME..":i02",	FB.NAME..":i02",	FB.NAME..":i02",	},
	},
})
minetest.register_craft({output = FB.NAME..":s02",
	recipe ={
		{	FB.NAME..":i02",	FB.NAME..":i02",	FB.NAME..":i02",	},
		{	FB.NAME..":i02",	"",			FB.NAME..":i02",	},
		{	FB.NAME..":i02",	FB.NAME..":i02",	FB.NAME..":i02",	},
	},
})
minetest.register_craft({output = FB.NAME..":s03",
	recipe ={
		{	FB.NAME..":i02",	"",			"",			},
		{	FB.NAME..":i02",	FB.NAME..":s00",	"",			},
		{	FB.NAME..":i02",	FB.NAME..":i02",	"",			},
	},
})
minetest.register_craft({output = FB.NAME..":s04",
	recipe ={
		{	"",			"",			FB.NAME..":i02",	},
		{	"",			FB.NAME..":s00",	FB.NAME..":i02",	},
		{	"",			FB.NAME..":i02",	FB.NAME..":i02",	},
	},
})
minetest.register_craft({output = FB.NAME..":s05",
	recipe ={
		{	"",			"",			"",			},
		{	"",			FB.NAME..":s00",	"",			},
		{	FB.NAME..":i02",	"",			FB.NAME..":i02",	},
	},
})
