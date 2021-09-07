# Exercise-02a-Weapons
Exercise for MSCH-C220, 7 September 2021

This exercise will explore the first step to creating an Arcade Space Shooter: firing weapons. In space shooter games, weapons can have many different attributes or characteristics, but we will be spawning one of the most basic types: an accelerating rocket.

Begin by Forking this repository. Check that it has been forked successfully; the repository should now read [your username]/Exercise-02a-Weapons

Edit the LICENSE and replace BL-MSCH-C220-F21 with your full name. Commit your changes.

Press the green "Code" button and select "Open in GitHub Desktop". Allow the browser to open (or install) GitHub Desktop. Once GitHub Desktop has loaded, you should see a window labeled "Clone a Repository" asking you for a Local Path on your computer where the project should be copied. Choose a location. Make sure the Local Path ends with "Exercise-02a-Weapons" and then press the "Clone" button. GitHub Desktop will now download a copy of the repository to the location you indicated.

Your task is to create a Weapon scene (saved as res://Weapon.tscn) that represents a rocket sprite that accelerates off the screen. The Project comes with a rotating ship that will be responsible for instancing the Weapon, positioning and rotating it.

The ship rotates with the A and D keys, and will fire using the space bar. 

Create a new 2D scene. Rename the Node2D "Weapon". Add res://Assets/rocket.png as a Sprite; make sure it is at position 0,0.

Right click on Weapon, Attach Script. In the script add a _physics_process function and make the node accelerate upwards over time.

(This is a possible example: 
```
extends Node2D

var speed = 0.5
var velocity = Vector2.ZERO

func _physics_process(_delta):
	velocity.y -= speed
	position += velocity.rotated(rotation)
```	
).

In Player.gd, you will need to uncomment (remove the # on) line 8. Run the main scene (Game.tscn). If you have done everything correctly, the ship should now fire a missile.

We will, of course, need to deal with collisions, explosions, damage, and other weapon types later. If the ship is able to fire missiles when the player hits the space bar, you have completed the exercise.

In GitHub Desktop, you should now see several files highlighted (including a new Weapon.tscn and Weapon.gd). Add a Summary message at the bottom of that panel (something like "Creates Weapon scene and allows ship to instance the scene."), and push the "Commit to master" button. On the right side of the top, black panel, you should see a button labeled "Push origin". Press that now.

If you return to and refresh your GitHub repository page, you should now see that your files have been changed (with a new date).

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-02a-Weapons) on Canvas.

The final state of the file should be as follows (replacing my information with yours):
```
# Exercise-02a-Weapons
Exercise for MSCH-C220, 7 September 2021

An exploration of instancing scenes (for the firing of weapons in a space shooter). Created in Godot.

## Implementation
Created using [Godot 3.3.3](https://godotengine.org/download)
Assets are provided by [Kenney.nl](https://kenney.nl/assets/space-shooter-extension), provided under a [CC0 1.0 Public Domain License](https://creativecommons.org/publicdomain/zero/1.0/).

## References
None

## Future Development
None

## Created by
Jason Francis
```