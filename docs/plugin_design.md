# Plugin design

## Main requirements

* Be able to use `Ctrl + c` in any Neovim mode and have it behave as `Esc`
* Be able to add extra actions on `Ctrl + c` if desired, for specific modes
* Be able to extend `Ctrl + c` to specific third-party modules and plugins

## Design considerations

* Divide settings into modes (so you can control which modes are affected, maybe a list in the opts to toggle on/off the remap)
* Add extra actions as `Ctrl + c` and toggle manually for each action (a list again maybe), and make sure to match with a mode (or specify the modes that are affected). For instance, `clear_cmd` to clear the command-line.
* Add third party modules and toggle manually for each module (a list again maybe)
