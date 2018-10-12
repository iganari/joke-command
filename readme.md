# joke-command

:warning: WIP :warning:

## cmatrix

### 使い方

+ 基本

```
docker run --rm -it joke-cmd-img cmatrix
```

## asciiquarium

### 使い方

+ 基本

```
docker run --rm -it joke-cmd-img asciiquarium    
```

+ オプション

条件 | オプション | 説明 
--- | --- | ---
起動時 | -c | クラシックモードで起動
起動中	| q	| 中止
起動中	| r	| 再描画
起動中	| p	| 一時停止

### 公式

https://github.com/cmatsuoka/asciiquarium


***

### set up

```
$ cd opsfiles/vagrant
$ vagrant up && sh provision.sh
```

### Use cmatrix

```
$ cmatrix
```

+ Options:

```
-a: Asynchronous scroll, more like the movie/original screensaver 
-b: Partial bold text mode 
-B: All bold text mode 
-f: Force the linux $TERM type to on 
-l: Linux support for linux console matrix.fnt font 
-n: No bold text mode 
-o: Use "old-style" scrolling - less like the movie, more like the Win/Mac screensaver. 
-s: "Screen saver" mode.  Any key aborts (default is "eye candy" mode, must abort with control C) 
-x: X window mode, use if your xterm is using mtx.pcf 
-u [update]: Update delay (0-9, default 4). 
-C [color]: Use color for matrix (default green). 
```

+ Keystrokes available while running (not available in -s mode): 


```
a: Toggle asynch mode 
b: Enable partial bold text 
B: Enable all bold text 
n: Disable bold text 
0-9: Change update delay 
! @ # $ % ^ & ): Change the color of the matrix to the corresponding color: ! - red, @ - green, # - yellow, $ - blue, % - magenta, ^ - cyan, & - white, ) - black. 
```

http://www.asty.org/cmatrix/

###  Use Pokemonsay

```
$ pokemonsay Hello World!
$ py         Hello World!
============
### if you want to specify a pokemon
$ pokemonsay --pokemon Pikachu Hello World!
```

### Use Pikemonthink

```
$ pokemonthink I am sleepy...
```

https://github.com/possatti/pokemonsay

### Use SL

+ There is no end of comannd

```
$ slf
```

### 参考URL

http://qiita.com/Hiroki_lzh/items/8cf206d54f91e29b3912
