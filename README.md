# GroukProject

## I. Get the project
You will need obviously the useful tool git, you can download it with this link :
[Get Git](https://git-scm.com/downloads)

Then you will need to get the web URL of the project. You can find here by cliking on the green button "Clone or download" on this page.

Now, open a terminal and type the following command :
`git clone *URL of the Project*`

Great, now you have the project on your computer !

## II. Install
Open your IDE. We will use [Clion](https://www.jetbrains.com/clion/download/#section=windows-version) now but you can use any IDE you want.
In Clion, >`File`>`Open` to open the project you have just downloaded with `git clone *URL of the Project*`.
Wait a few moment to let the time to CMake to explore and do some stuff.

Now, you'll get in the Cmake output the following message : 
> cmake/Config.cmake file created, it need to be filled with the correct value

Go to this file and modify the variable `SFML_ABSOLUTE_PATH` with your path to the [SFML](http://www.sfml-dev.org/download/sfml/2.4.0/index-fr.php).
Also, add the binary \*.dll in the `bin` folder if you are on Windows. 

You can now run your project, everythings should be working well !
