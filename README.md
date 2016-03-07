* The best approach to storing environment variables is to put them in your bash profile. This way the keys are not uploaded to github or wherever for the world to see and abuse.

* We do not have to run migrations on the test database because for rake tests it migrates them and rolls them back each time.
