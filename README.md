# Colormaps for cardiac DTI

This repository contains Colormaps tailored for cardiac DTI.
Please feel free to use them and also to commit your own suggestions. I am sure we as a community can considerably improve them.

This repository was created after coming across several articles showing the shortcomings of the colormap "jet", by far the most used colormap in MR after grayscale:

 - [How bad is your colour map?](https://jakevdp.github.io/blog/2014/10/16/how-bad-is-your-colormap/)
 - [The 'jet' colormap must die](http://cresspahl.blogspot.co.uk/2012/03/expanded-control-of-octaves-colormap.html)
 - [matplotlib: choosing colourmaps](http://matplotlib.org/users/colormaps.html)
 -  [Rainbow Color Map Critiques](https://www.mathworks.com/content/dam/mathworks/tag-team/Objects/r/81137_92238v00_RainbowColorMap_57312.pdf)
 -  [The "Which Blair project": a quick visual method for evaluating perceptual color maps](http://ieeexplore.ieee.org/abstract/document/964510/?reload=true&section=abstract)
 -  [Why Should Engineers and Scientists Be Worried About Color?](http://www.research.ibm.com/people/l/lloydt/color/color.HTM)

In short we can divide colours stimulus in three dimensions:

- The luminance
- The saturation
- The Hue

Human vision is highly sensitive to luminance, and the 'jet' colour map has a non-monotonical luminance profile which affects human perception.
