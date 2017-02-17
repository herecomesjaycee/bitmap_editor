# bitmap_editor
Solution for carwow's technical test

## Installation 
1) Fork and/or Git Clone this repository `git clone https://github.com/herecomesjaycee/bitmap_editor.git`

2) Navigate to the `bitmap_editor` folder `cd bitmap_editor`

3) Run `gem install bundler` if bundler is not installed

4) Run `bundle` to install dependencies

- Both step 3 and 4 are not essential for running the application, however it is recommended for testing purposes. 

## Running the application
You can run the application by any terminal application on your local machine. 

```
2.3.1 :001 > require './app/bitmap_editor'
 => true 
2.3.1 :002 > be = BitmapEditor.new
 => #<BitmapEditor:0x007f99f9108d68 @canvas=[], @input=nil> 
2.3.1 :003 > be.run
type ? for help
>I 5 5
>S
OOOOO
OOOOO
OOOOO
OOOOO
OOOOO
>L 4 4 A
>S
OOOOO
OOOOO
OOOOO
OOOAO
OOOOO
>H 1 1 3 A
>S
AAAOO
OOOOO
OOOOO
OOOAO
OOOOO
>V 2 3 5 A
>S
AAAOO
OOOOA
OOOOA
OOOAO
OOOOO
```

