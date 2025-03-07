local laura = require("laura")
local myMath = require("my-math")

local describe = laura.describe
local it = laura.it
local expect = laura.expect

describe("my-math module", function()
	it("should add two number", function()
		expect(myMath.add(40, 2)).toEqual(42)
	end)
end)
