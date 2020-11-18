const Victim = artifacts.require("VictimContract");
const Attack = artifacts.require("AttackContract");

module.exports = async function (deployer, network, addresses) {
  const [owner] = addresses;
  await deployer.deploy(Victim);
  const victim = await Victim.deployed();
  const victimAddress0 = victim.address;
  const victimAddress = Victim.networks['5777'].address;
  console.log('vi:', owner, victimAddress, victimAddress0);
  await deployer.deploy(Attack, owner, victimAddress);
};
