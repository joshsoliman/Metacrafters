
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("ErrorHandling Contract", function () {
  let ErrorHandling, errorHandling, owner;

  beforeEach(async function () {
    ErrorHandling = await ethers.getContractFactory("ErrorHandling");
    errorHandling = await ErrorHandling.deploy();
    [owner] = await ethers.getSigners();
  });

  it("Should set a valid value", async function () {
    await errorHandling.setValue(10);
    expect(await errorHandling.value()).to.equal(10);
  });

  it("Should revert when setting value to zero", async function () {
    await expect(errorHandling.setValue(0)).to.be.revertedWith("Value must be greater than zero");
  });

  it("Should reset value to zero", async function () {
    await errorHandling.setValue(10);
    await errorHandling.resetValue();
    expect(await errorHandling.value()).to.equal(0);
  });

  it("Should revert when resetting already zero value", async function () {
    await expect(errorHandling.resetValue()).to.be.revertedWith("Value is already zero");
  });
});
