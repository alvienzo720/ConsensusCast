// hardhat.config.ts
import { HardhatUserConfig } from "hardhat/config";

const config: HardhatUserConfig = {
  networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/YOUR-INFURA-PROJECT-ID`,
      chainId: 4, // Sepolia uses chainId 4
      accounts: ['db50acc44a9eee0a59abf844f18703eb1c5784f8a2606f4d73ba622fab7024b6'], // Your private key
      gasPrice: 20000000000, // Optional: you can set a custom gas price
    },
  },
  solidity: {
    version: "0.8.18",
  },
};

export default config;




