<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="">
    <img src="images/HWlogo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Hello World: A Decentralised Application</h3>

  <p align="center">
    An introductory project to building and deploying a dApp to your local environment!
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="">View Demo</a>
    ·
    <a href="">Report Bug</a>
    ·
    <a href="">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project documents my experience building a Decentralized Application (dApp) from the ground up. Part of my journey was to setup an easy to use local environment in which I could develop and deploy Smart Contracts. My operating system of choice is Windows 10 but I beleive some of the concepts/setups will be similar to other operating systems.

Here's why:
* Smart Contracts are amazing and your time should be focused on creating them in the quickest possible way. 
* This project solves the pain of setting up your local environment.
* A concise crash course into dApps

Of course, no one setup will serve all projects since your needs may be different. So I'll be adding alternative development tools in the near future. You may also suggest changes by forking this repo and creating a pull request or opening an issue.



### Built With

Here is a list of software/frameworks that we will be using to get up and running:

[VS Code](https://code.visualstudio.com/) | [Metamask](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn) | [Git](https://??????.com) | [Ganache](https://www.trufflesuite.com/ganache) | [Truffle](https://??????.com) | [Web3](https://??????.com) | [Node.js and npm](https://nodejs.org/en/) | [Python](https://??????.com) | [JQuery](https://jquery.com) | [Chrome](https://www.google.com/chrome/) 
----------------------------- | ------------------------------ | ------------------------- | ----------------------------- | ----------------------------- | ------------------------------ | ------------------------- | ----------------------------- | ----------------------------- | ------------------------------


## Installation

Ok first things first, lets install the above software (if not already installed).

### VS Code

I was looking for an IDE to start my development. I found that VS Code was best suited for my needs as it was light and easy to use with a strong developer community. Visit the the [VS download](https://code.visualstudio.com/docs/?dv=win64user). Once installed click the extension icon in the left hand pane, search and install the following extensions:
* Live Server by Ritwick Dey - A light weight server to serve up dynamic pages
* solidity by Juan Blanco - Support for the solidity language such as Syntax highlighting, Snippets etc..
* Blockchain Development Kit for Ethereum by Microsoft - Simplifies the creation, build and deployment of Smart Contracts

### Node.js and npm

[Node.js](https://nodejs.org/dist/v14.16.0/node-v14.16.0-x64.msi) is an open-source JavaScript runtime environment. npm is a package manager, that provides access to a large repository of JavaScript packages. The nodejs executable includes both the node and npm executables.

 ```sh
   $ npm --version
   6.14.11
   $ node -v
   v14.16.0
  ```

### Ganache

Ganache is a glaze, icing, sauce or filling for pastries. Really :smile:....ok if you search for Ganache you might end up with some interesting food recipes. The [Ganache download](https://github.com/trufflesuite/ganache/releases/download/v2.5.4/Ganache-2.5.4-win-x64.appx) we looking for is your very own personal blockchain without the bloat of a real blockchain. Ganache is great as it can be used during the entire development life cycle promoting a safe and re usable environment.

### Truffle

Truffle is a development environment and testing framework amongst other things. It is designed to aid in the development of dApps. As you will see below, we will use Truffle commands to create the scaffolding for our helloworld project.

```sh
   $ npm install truffle -g
  ```


### Metamask

[Metamask Chrome Extension](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn) is a software wallet that allows interaction with the Ethereum blockchain. Typically one would sign up using a password and can import an existing account using a seed phrase. As we are in development mode, the *Important Point* to consider here is that we must **NOT** be connected to any Main Net.
dApp ---> Metamask ---> blockchain

<!-- GETTING STARTED -->
### Getting Started

Now that we have everything installed lets dive into creating our helloworld contract.

1. Create a new directory and setup an initial project structure
   ```sh
   $ mkdir helloworld
   $ cd helloworld/
   $ truffle init
   $ ls -al
   $ ls contracts/
   $ truffle create contract HelloWorld
   $ ls contracts/
   ```
2. In Visual Studio Code update the HelloWorld contract as per [contracts\HelloWorld.sol](https://github.com/suneshan/helloworld/blob/master/contracts/HelloWorld.sol)
3. Create a HelloWorld migration file (used for deploying) as per [migrations\2_helloworld_migration.js](https://github.com/suneshan/helloworld/blob/master/migrations/2_helloworld_migration.js)
4. Add a compiler version to `truffle-config.js`
   ```JS
    solc: {
      version: "0.7.0"
    }
   ```
5. Now we ready to build our contracts. Right-click on one of the contract files (`HelloWorld.sol`) and click _Build Contracts_ from the drop down menu
6. Next we need to deploy our contract. In order to do this we will start up our very own BlockChain by starting up Ganache GUI and clicking _QUICKSTART_
7. Notice the RPC Server is running on port 7545 
8. Add a Network to `truffle-config.js`
  ```JS
     networks: {
      loc_ganache_ganache: {
        network_id: "*",
        port: 7545,
        host: "127.0.0.1"
      }
     }
   ```
9. Another way to add a Network in VS Code is in the bottom left we _Connect to network_ and select _Local Service_ from the _Command Palette_, click enter to confirm the default network name and change the port to 7545 and click enter
10. Now we ready to deploy our smart contracts. Right-click on one of the contract files (`HelloWorld.sol`) and click _Deploy Contracts_ from the drop down menu. Select the network from the _Command Palette_ i.e. _loc_ganache_ganache_
11. Done. In the Ganache GUI notice the address at index 0 has a transaction count greater than 0 and the balance is a bit less.

<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Suneshan Naidoo - [@suneshan1](https://twitter.com/suneshan1) - www.suneshan.com

Project Link: [https://github.com/suneshan/helloworld](https://github.com/suneshan/helloworld)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Animate.css](https://daneden.github.io/animate.css)
* [Loaders.css](https://connoratherton.com/loaders)
* [Slick Carousel](https://kenwheeler.github.io/slick)
* [Smooth Scroll](https://github.com/cferdinandi/smooth-scroll)
* [Sticky Kit](http://leafo.net/sticky-kit)
* [JVectorMap](http://jvectormap.com)
* [Font Awesome](https://fontawesome.com)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
