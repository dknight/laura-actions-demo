local laura = require("laura")
local myMath = require("src/my-math")

local describe = laura.describe
local it = laura.it
local expect = laura.expect

describe("my-math module", function()
	it("should add two number", function()
		expect(myMath.add(40, 2)).toEqual(42)
	end)
	it("should subtract two number", function()
		expect(myMath.sub(40, 2)).toEqual(38)
	end)
	it("should multiply  two number", function()
		expect(myMath.mul(40, 2)).toEqual(80)
	end)
	it("should divide two number", function()
		expect(myMath.div(40, 2)).toEqual(20)
	end)
	it("should divide by zero and get infinity", function()
		expect(myMath.div(40, 0)).notToBeFinite()
	end)
end)
