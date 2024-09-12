# This wrapper file was generated automatically by the GenDllWrappers program.

# indexes for ElComp reference sat data and deltas
# inclination (deg)
set XA_ELCOM_INCLI 0
# right ascension of the asending node (deg)
set XA_ELCOM_NODE 1
# eccentricity (unitless)
set XA_ELCOM_E 2
# argument of perigee (deg)
set XA_ELCOM_OMEGA 3
# mean anomaly (deg)
set XA_ELCOM_MNANOM 4
# mean motion (revs/day)
set XA_ELCOM_MNMOTION 5
# epoch in days since 1950, UTC
set XA_ELCOM_EPOCH 6

# perigee height (km)
set XA_ELCOM_PHT 7
# period (min)
set XA_ELCOM_PERIOD 8
# delta t between nodal crossing times (min)
set XA_ELCOM_TNODE 9
# delta east longitude for geo satellites (deg)
set XA_ELCOM_LONGE 10

set XA_ELCOM_SIZE 16

# indexes for setting criteria for full, close, maybe
# incli diff in deg - full
set XA_ECDIFF_INCMAX1 0
# incli diff in deg - close
set XA_ECDIFF_INCMAX2 1
# incli diff in deg - maybe
set XA_ECDIFF_INCMAX3 2

# W vector dot product in deg - full
set XA_ECDIFF_RAMAX1 3
# W vector dot product in deg - close
set XA_ECDIFF_RAMAX2 4
# W vector dot product in deg - maybe
set XA_ECDIFF_RAMAX3 5

# perigee height diff in km - full
set XA_ECDIFF_PHTMAX1 6
# perigee height diff in km - close
set XA_ECDIFF_PHTMAX2 7
# perigee height diff in km - maybe
set XA_ECDIFF_PHTMAX3 8

# eccentricity diff - full
set XA_ECDIFF_ECCMAX1 9
# eccentricity diff - close
set XA_ECDIFF_ECCMAX2 10
# eccentricity diff - maybe
set XA_ECDIFF_ECCMAX3 11

# period diff in min - full
set XA_ECDIFF_PERMAX1 12
# period diff in min - close
set XA_ECDIFF_PERMAX2 13
# period diff in min - maybe
set XA_ECDIFF_PERMAX3 14

# argument of perigee diff in deg - full
set XA_ECDIFF_APMAX1 15
# argument of perigee diff in deg - close
set XA_ECDIFF_APMAX2 16
# argument of perigee diff in deg - maybe
set XA_ECDIFF_APMAX3 17

set XA_ECDIFF_SIZE 32

# indexes for association status from ElComp
# "FULL" association
set ELCOM_ASTAT_FULL 1
# "CLOSE" association
set ELCOM_ASTAT_CLOSE 2
# "MAYBE" association
set ELCOM_ASTAT_MAYBE 3
# "NONE" association
set ELCOM_ASTAT_NONE 4

# indexes for setting criteria for full, close, maybe
# incli diff in deg - same
set XA_COCODIFF_INCMAX1 0
# incli diff in deg - close
set XA_COCODIFF_INCMAX2 1
# incli diff in deg - near-by
set XA_COCODIFF_INCMAX3 2

# W vector dot product in deg - same
set XA_COCODIFF_RAMAX1 3
# W vector dot product in deg - close
set XA_COCODIFF_RAMAX2 4
# W vector dot product in deg - near-by
set XA_COCODIFF_RAMAX3 5

# perigee height diff in km - same
set XA_COCODIFF_PHTMAX1 6
# perigee height diff in km - close
set XA_COCODIFF_PHTMAX2 7
# perigee height diff in km - near-by
set XA_COCODIFF_PHTMAX3 8

# period diff in min - same
set XA_COCODIFF_PERMAX1 9
# period diff in min - close
set XA_COCODIFF_PERMAX2 10
# period diff in min - near-by
set XA_COCODIFF_PERMAX3 11

set XA_COCODIFF_SIZE 32


# indexes for Coco sat data and coplanar deltas fields
# inclination (deg)
set XA_SATDATA_INCLI 0
# right ascension of the asending node (deg)
set XA_SATDATA_NODE 1
# eccentricity (unitless)
set XA_SATDATA_E 2
# argument of perigee (deg)
set XA_SATDATA_OMEGA 3
# mean anomaly (deg)
set XA_SATDATA_MNANOM 4
# mean motion (revs/day)
set XA_SATDATA_MNMOTION 5
# epoch in days since 1950, UTC
set XA_SATDATA_EPOCH 6

# perigee height (km)
set XA_SATDATA_PHT 7
# period (min)
set XA_SATDATA_PERIOD 8

set XA_SATDATA_SIZE 16


# indexes for Coco sat data and coplanar deltas fields
# inclination (deg)
set XA_COCO_INCLI 0
# right ascension of the asending node (deg)
set XA_COCO_NODE 1
# perigee height (km)
set XA_COCO_PHT 2
# period (min)
set XA_COCO_PERIOD 3
# coplanar angle (dot the w vectors) (deg)
set XA_COCO_WDOT 4
# right ascension dot (deg/day)
set XA_COCO_RADOT 5
# nodal crossing (min)
set XA_COCO_TNODE 6
# time in days to approach 0.0 RA delta
set XA_COCO_TZERO 7
# sustained close approach possible
set XA_COCO_SCAP 8
# potential constellation member
set XA_COCO_PCM 9
# time in ds50UTC when primary at nodal crossing (prior to its epoch)
set XA_COCO_PNODALX 10
# time in ds50UTC when secondary at nodal crossing (after primary nodal crossing time)
set XA_COCO_SNODALX 11

set XA_COCO_SIZE 16


# indexes for association status from COCO
# "SAME" association
set COCO_ASTAT_SAME 1
# "CLOSE" association
set COCO_ASTAT_CLOSE 2
# "NEARBY" association
set COCO_ASTAT_NEARBY 3
# "NONE" association
set COCO_ASTAT_NONE 5

# ========================= End of auto generated code ==========================
