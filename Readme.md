## Moo E2E tests

These selenium tests are written using protractor along with cucumber. Cucumber allows stakeholders like Product Owners, Business analysts to describe test scenarios
in plain English.

Framework features:

1. In addition to this , this framework produces
a html report which can be shared with stakeholders and also helps in debugging.
The html reports can be found under htmlReports directory.

2. Ability to capture screenshots on failure which are later attached to the report.


## Instructions for running tests

# Pre-requisities

1. [NodeJs](https://nodejs.org/en/download/)
2. [Chrome Browser](https://www.google.com/chrome/browser/desktop/index.html)


# Steps
1. Navigate to `moo-e2e` folder
2. Do `npm install`
3. Run `npm run webdriver-update`(This updates all the selenium drivers)
4. Run `npm run webdriver-start`(This starts the selenium server)
5. You can confirm this by visiting this [URL](http://localhost:4444/wd/hub/static/resource/hub.html)
6. Open a new terminal window and run `npm test` which runs all the tests.
7. To shut the selenium server just press `ctrl+c` in terminal window where the selenium server is running.

### Easter-Eggs

Alternatively if you don't want to run the tests in a local chrome browser or you do not have chrome installed on your machine you could run the tests in a docker selenium grid. For this to happen , make sure you have [docker](https://www.docker.com/docker-mac) installed on your system.

Now run `docker-compose up -d`, this should spin up a docker selenium grid with one chrome node.

### FootNotes:
All the above commands have been tested on OsX, have not really checked that these work on other platforms.(Linux should be fine , Windows not really sure)