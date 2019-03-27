# AWS Lambda CloudFormation NodeJS Starter

Modify the code in [hello-ts/src/index.ts](./hello-ts/src/index.ts) or create new functions.
Source code of Lambda functions published on S3

## Deploying the project

```sh
npm run create-stack
```

## Updating the project

```sh
npm run update-stack
```

## Deleting the project

```sh
npm run delete-stack
```

## Adding New Functions

To add a new function you need to create a new folder where the function will be located and add references to the new function wherever you find a TODO comment in the shell scripts. Additionally, you need to create a `build.sh` which will build your function and output its version. Also the function resource and its role need to be added to the `cloudformation.yaml`.

## More Info

Please read this blog post of mine providing more details about this project: [Introducing a Simple AWS Lambda Starter Kit for NodeJS Using CloudFormation](https://60devs.com/aws-lambda-starter-kit-using-cloudformation-nodejs.html).
