const HelloWorld = artifacts.require("HelloWorld");
var ownerEmail = "suneshan@gmail.com";
var message = "This is exciting!";
module.exports = function (deployer) {
      deployer.deploy(HelloWorld, ownerEmail, message);
};