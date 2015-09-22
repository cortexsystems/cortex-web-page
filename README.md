# Cortex Web Page

This application displays a fullscreen web page. It requires Cortex Player v2+.

# Installation
```
npm install
make dist
```

Application zip file will appear under `./dist`.

# Configuration Parameters
  - `webpage.url`: [default=http://www.cortexpowered.com] The web page url. The web page will be rendered in an iframe so it is important that the target url doesn't have the SAMEORIGIN policy.
  - `webpage.duration`: [default=7500] The duration the web page will be shown on screen in milliseconds.
