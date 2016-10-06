# JavaFX in GHCVM

This is an example application that demonstrates Java integration in GHCVM

# Prerequisites
- JDK 8
  - JavaFX must be installed in the home directory of the JDK.
    - If you're running Ubuntu OpenJDK, you'll have to do an [extra step](http://stackoverflow.com/questions/34243982/why-is-javafx-is-not-included-in-openjdk-8-on-ubuntu-wily-15-10):
      ```sudo apt-get install openjfx```
- [GHCVM](https://github.com/rahulmutt/ghcvm) (On `master` branch)

# Running
```
$ cd ghcvm-javafx
$ cabalvm run
```

# Contact Us
If you face any trouble with this project, or you'd like to take this project further, please join us on (Gitter)(https://gitter.im/rahulmutt/ghcvm).
