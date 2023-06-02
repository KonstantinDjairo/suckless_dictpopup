# suckless_dictpopup

This is a very lightweight program to show a popup with the translation of the selected text. It uses [sdcv](https://github.com/Dushistov/sdcv) for the dictionary lookup and a slightly modified version of [herbe](https://github.com/dudik/herbe) to display the popup.

![image](https://files.catbox.moe/dx3hf5.png)

## Dependencies
most of them might be already installed.

sselp , sdcv, perl




## Setup
First setup [sdcv](https://github.com/Dushistov/sdcv) according to their github page.
Then install with `sudo make install`. \
Uninstall with `sudo make uninstall`

If you would like to automatically lookup a word on every selection, then take a look at the following script: https://github.com/GenjiFujimoto/shell-scripts/blob/main/selautolookup

## Usage
Call `dictpopup  [<WORD>]`.\
If no word as an argument is supplied, the selection is used.\
The popup can be dismissed by clicking on it.

The styling can be changed in `config.h` and then recompile to apply.
There is also a xresources patch from [herbe](https://github.com/dudik/herbe)
that you could try to apply if you like.

`popup` can also be used as a standalone program to show the contents of stdin.


## TODO
- [x] Completed
- [ ] Work in Progress
<br><br/>
- [ ] Switch between words in a given sentence by using the arrow keys or any user-defined key;
      Sudachi can be used to accomplish that.
