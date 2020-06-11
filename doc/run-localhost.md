## Prerequisite
Make sure you have installed `yarn` or `npm` package manager<br />

## Available Scripts

### `yarn`
The command will install all packages that need to run the app.<br />
`node_modules` folder will be created after run this command.

### `yarn start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `yarn build`

The command use to build the project codes into a `build` folder.<br />
The `build` folder used to deploy to production server.

### `.env`

You can create a file named `.env` to setup environment variables.<br />
Make sure all variables in this file MUST have prefix: `REACT_APP` <br />
We should use `.env` for local only and do not add to git
For production environment variable, we define in `.env.production`
ex: REACT_APP_SECRET_KEY=abcde

### `yarn test`

Launches the test runner in the interactive watch mode.<br />
We use `jest` and `enzyme` and `react-testing-library`.


## run as docker container 
```bash
# build & run as container based on config in .config.sh
./docker/localhost/build.sh ; ./docker/localhost/run.sh
    : the web app now is ready at localhost:20611
    
```
