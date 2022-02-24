
const main = async () => {
  const Constantes = await hre.ethers.getContractFactory("EtherUnits");
  const constantes = await Constantes.deploy();

  await constantes.deployed();
}


(async () => { 
  try {
    await main()
    process.exit(0)
  } catch (e) {
    console.log(e)
    process.exit(1)
  }
})()

