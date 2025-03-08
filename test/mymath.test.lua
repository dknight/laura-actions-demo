local laura = require("laura")
local mymath = require("src/mymath")

local describe = laura.describe
local it = laura.it
local expect = laura.expect

describe("my-math module", function()
	it("should add two number", function()
		expect(mymath.add(40, 2)).toEqual(42)
	end)
	it("should subtract two number", function()
		expect(mymath.sub(40, 2)).toEqual(38)
	end)
	it("should multiply  two number", function()
		expect(mymath.mul(40, 2)).toEqual(80)
	end)
	it("should divide two number", function()
		expect(mymath.div(40, 2)).toEqual(20)
	end)
	it("should divide by zero and get infinity", function()
		expect(mymath.div(40, 0)).notToBeFinite()
	end)
end)
