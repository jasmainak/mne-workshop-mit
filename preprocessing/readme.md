Preprocessing
-------------

Spatial filtering
=================

Physiological artifacts that are not related to brain
rhythms such as heart beats and eyeblinks have prototypical
spatial signatures. They can be removed using
Signal Space Projection (SSP.ipynb) or Independant Component
Analysis (ICA.ipynb).

Autoreject
==========

Sometimes, sensors can be bad due to loose contact or
flux jumps. Autoreject is an automated method to label
and repair artifacts in the data.

Quality assurance
=================

We will see how to use the MNE report to generate figures for
quality assurance when analyzing tens of hundreds of subjects. We will
also look at how to parallelize the analysis.
