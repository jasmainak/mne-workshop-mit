Source modeling
---------------

Evoked to STC
=============

A bird's eye view of going from evoked to STC. The forward is read
from a precomputed file, from which an inverse operator is computed and the source
estimation performed.


Forward
=======

More details into how the forward model is computed.

The forward model tells us how a unit dipole on the
cortical surface propagates through the brain. It involves
computation of:

* Boundary element model (BEM) conductivity
of different tissues
* Creation of a discrete source space to compute the forward on the entire
cortical surface
* Coregistration (aligning the head and the device coordinates)

Covariance
==========

The covariance estimation is needed to take into account
the correlated noise in the sensors.
