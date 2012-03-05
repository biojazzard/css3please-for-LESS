# css3please-for-LESS

A collecion of LESS Mixins to produce:

[http://css3please.com](http://css3please.com)

[https://github.com/paulirish/css3please](https://github.com/paulirish/css3please)

By Paul Irish | [http://paulirish.com/](http://paulirish.com/)

Using:

[http://lesscss.org/](http://lesscss.org/)

By Alexis Sellier | [http://cloudhead.io/](http://cloudhead.io/) 


## Features

Looking for the maximum backwards compat.:

* Gradients converted to -ms-filters.
* Scales & Rotations converted to Matrix Transformations.


## Howto

In LESS:

    .myClass {
    	.box_rotate(30.0deg); /* 30 degrees */
    }

You get this CSS:

    .myClass {
      -webkit-transform: rotate(30deg); /* Saf3.1+, Chrome */
      -moz-transform: rotate(30deg); /* FF3.5+ */
      -ms-transform: rotate(30deg); /* IE9 */
      -o-transform: rotate(30deg); /* Opera 10.5 */
      transform: rotate(30deg);
      -ms-filter: progid:DXImageTransform.Microsoft.Matrix(M11=0.8660254037844387, M12=-0.49999999999999994, M21=0.49999999999999994, M22=0.8660254037844387, sizingMethod='auto expand'); /* IE8+ - must be on one line: as seen here: http://www.useragentman.com/IETransformsTranslator/ */
      filter: progid:DXImageTransform.Microsoft.Matrix(M11=0.8660254037844387, M12=-0.49999999999999994, M21=0.49999999999999994, M22=0.8660254037844387, sizingMethod='auto expand'); /* IE6-IE7 */
      zoom: 1;
    }


## List of Mixins

    .box_round(@radius)
@radius: px

    .box_shadow(@isInset, @offsetX, @offsetY, @blurRad, @blurSpread, @color)

@isInset: boolean

@offsetX: px

@offsetY: px

@blurRad: px

@blurSpread: px

@color: color

    .box_gradient(@fromColor, @toColor)

@fromColor: color

@toColor: color

    .box_rgba(@rgbaColor)

@rgbaColor: RGBA color

    .box_rotate(@degRotation)

@degRotation: degrees [ex: 13.deg]

    .box_scale(@perScale)

@degRotation: per unit [ex: 1.5]

    .box_3dtransforms(@perspective, @degRotateY)

@perspective: units

@degRotateY: degrees [ex: 13.deg]

    .box_transition(@secTransition, @easeStyle: ease-out)

@secTransition: secs 

@easeStyle: defaults to ease-out [ease-in...]

    .box_textshadow(@offsetX, @offsetY, @blurSpread, @color)

@offsetX: px

@offsetY:px

@blurSpread: px

@color: color

    .box_opacity(@perOpacity)

@perOpacity: per unit [ex: 0.8, max: 1.0]

    .box_border-box()

No input var

    .box_bgsize(@percentageX, @percentageY)

@percentageX: percentage [ex: 80%]

@percentageY: percentage [ex: 60%]

    .box_columns(@numCols, @gapCols)

@numCols: integer

@gapCols: px

    .box_animation(@animeName, @animeTime, @animeStyle: infinite)

@animeName: string

@animeTime: secs [ex: 3s]

@animeStyle: infinite

    .font-face(@font)

@font: String [Font Name, ex: 'arial']

    .box_tabsize(@tabSize)

@tabSize: px


## Versioning

* I´ll try to follow Paul Irish on this!!!.


## Some documentation used

[http://css3.bradshawenterprises.com](http://css3.bradshawenterprises.com)

[http://msdn.microsoft.com/en-us/library/ms533014(v=vs.85).aspx](http://msdn.microsoft.com/en-us/library/ms533014(v=vs.85).aspx)

[http://en.wikipedia.org/wiki/Transformation_matrix](http://en.wikipedia.org/wiki/Transformation_matrix)

[http://www.useragentman.com/IETransformsTranslator/](http://www.useragentman.com/IETransformsTranslator/)


## Everything else:

* The Unlicense (aka: public domain)


##Enjoy ;-)
