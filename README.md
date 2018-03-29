# Colormaps for cardiac DTI

## Introduction

This repository contains colormaps tailored for cardiac DTI.
Please feel free to use them and also to commit your own suggestions. I am sure we as a community can considerably improve them.

This repository was created after coming across several articles showing the shortcomings of the colormap "jet", by far the most used colormap in MR, after grayscale:

 - [How bad is your colour map?][1]
 - [The 'jet' colormap must die][2]
 - [matplotlib: choosing colourmaps][3]
 - [Rainbow Color Map Critiques][4]
 - [The "Which Blair project": a quick visual method for evaluating perceptual color maps][5]
 - [Why Should Engineers and Scientists Be Worried About Color?][6]

![jet colormap][image-1]
*jet colormap*

In short, we can divide colours stimulus in three dimensions:

- The luminance
- The saturation
- The hue

Human vision is highly sensitive to luminance, and the 'jet' colour map has a non-monotonical luminance profile which affects human perception. Additionally, when displaying angles that wraparound, such as helix-angle, the colormap should also wrap to aid interpretation.

With this in mind here is a list of colourmaps for tensor orientation measures:

### Tensor orientation

#### Helix-angle
![helix-angle][image-2]

Luminance encodes inclination. Hue encodes polarity of the angle. Angles wrap through black.

#### E2A
![E2A][image-3]

Luminance encodes inclination. Hue encodes polarity of the angle. Angles wrap through black.

#### Absolute E2A
![absolute E2A][image-4]

This maps does not wrap as it is showing absolute angles. It separates angles below and above 45 deg in different colours in order to visualise differences between diastole and systole conformations (below and above 45 deg respectively in healthy hearts).

#### E1 transverse angle
![E1 transverse angle][image-5]
Luminance encodes inclination. Hue encodes polarity of the angle. Angles wrap through black.

### Rotational invariants
#### Fractional anisotropy
![Fractional anisotropy][image-6]

#### Mean diffusivity
![Mean diffusivity][image-7]

#### Tensor mode
![Tensor mode][image-8]

## Colormap data
The colormap data is located in the *colormaps_data* folder. Each colormap is a text ASCII file with a 256 x 3 RGB array.

There is also a MATLAB script that will go through the text files and creates PNGs of the colormaps in the *colormaps_pngs* folder.

[1]:	https://jakevdp.github.io/blog/2014/10/16/how-bad-is-your-colormap/
[2]:	http://cresspahl.blogspot.co.uk/2012/03/expanded-control-of-octaves-colormap.html
[3]:	http://matplotlib.org/users/colormaps.html
[4]:	https://www.mathworks.com/content/dam/mathworks/tag-team/Objects/r/81137_92238v00_RainbowColorMap_57312.pdf
[5]:	http://ieeexplore.ieee.org/abstract/document/964510/?reload=true&section=abstract
[6]:	http://www.research.ibm.com/people/l/lloydt/color/color.HTM

[image-1]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/jet.png
[image-2]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/helix_angle.png
[image-3]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/E2A.png
[image-4]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/abs_E2A.png
[image-5]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/E1_TA.png
[image-6]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/FA.png
[image-7]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/MD.png
[image-8]:	https://github.com/Pedro-Filipe/cardiac_DTI_colormaps/blob/master/colormaps_pngs/tensor_mode.png
