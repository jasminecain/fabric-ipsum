# Fabric Ipsum
This project is built with Ruby 2.4.2 and Rails 5.1.6.

### Description:
Fabric Ipsum is a SPA that generates ipsum paragraphs based on words from a fabric dictionary.

### Prerequisites
- Node v6.11.0
- NPM >= v5.3.0

### Spin up
```bash
rake db:create db:migrate db:seed
```

### Staging
You'll need a server to run Fabric Ipsum in your browser, if you don't have one installed, [http-server](https://www.npmjs.com/package/http-server) is a quick option.

```bash
npm install --save http-server
```
Then open a new terminal tab and run:

```bash
rails s
```
