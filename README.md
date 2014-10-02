CAMOMILE Touch
==============

## Format

### Annotation layer

Chaque layer d'annotation contient autant d'Annotation que l'on veut

    * layer_type : Nom donne par le createur
    * data_type : "tracking"
    * fragment_type : "annotations"
    
Format de ses annotations

    * data : [{"t" : tempsT, "x" : posX, "y" : posY}, {"t" : tempsT, "x" : posX, "y" : posY}, ... ]
    * fragment : {"start" : tempsEnSecondes, "end" : tempsEnSecondes}


### Segmentation layer
 
Chaque layer est une segmentation différente et contient une seule Annotation

    * layer_type : Nom de la segmentation. (Exemples : References, Automatique, ...)
    * data_type : "tracking"
    * fragment_type : "segmentation"

Format de son annotation

    * data : [tempsEnSecondes, tempsEnSecondes, ... ]
    * fragment : ""


## Docker setup

$ docker build . -t camomile/touch
$ docker run -d -e CAMOMILE_API=https://foo.bar.com/baz camomile/touch

Automated build...

## Local setup

### Edit configuration file

```
# html/config.js
var api_url=https://foo.bar.com/baz;
```

### Run web server

```
$ cd html
$ python -m SimpleHTTPServer
````

