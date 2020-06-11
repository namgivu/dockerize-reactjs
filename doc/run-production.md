## Run production
After created `build` folder with `yarn build` command, <br />
Do following steps to deploy to server:
1. `ssh` to connect to host server.
2. Copy `build` to remote server with `scp build location-on-server`
3. Config `ngnix` web server point to `index.html` file inside the build folder. 