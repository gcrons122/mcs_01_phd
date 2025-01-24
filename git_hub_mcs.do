// Model 0 - Unconditional Means Model 

mi estimate, variance: mixed IQ_ c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var // random effect of centred age, acknowledges that the role of the randomm effect is that of change in each individual over time anf that there age varies. Three level model to acknowledged that area and repeated measures influence the independence of the child relative to themselves at different time points, but also to other children. 

** model 0 

mi estimate, variance: mixed Conduct c.centred_age c.centred_age#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Hyper c.centred_age c.centred_age#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Peer c.centred_age c.centred_age#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Emotions c.centred_age c.centred_age#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

// Model 1 - Addition of main variables 

mi estimate, variance: mixed IQ_ c.centred_age c.Greenspace c.Greenspace#c.centred_age|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var 

mi estimate, variance: mixed Conduct c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Hyper c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Peer c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Emotions c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

// Model 2 - Addition of envionmental confoudners

mi estimate, variance: mixed IQ_ c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden || SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var 

mi estimate, variance: mixed Conduct c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Hyper c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Peer c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Emotions c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

// Model 3 - Addition of child level confoudners 

mi estimate, variance: mixed IQ_ c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var 

mi estimate, variance: mixed Conduct c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Hyper c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Peer c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Emotions c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

// Model 3 - Addition of family level confoudners 

mi estimate, variance: mixed IQ_ c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity i.move i.education_sweep2 i.poverty_indicator i.two_natural_parents i.owns_home c.BDKESS00|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var 

mi estimate, variance: mixed Conduct c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity i.move i.education_sweep2 i.poverty_indicator i.two_natural_parents i.owns_home c.BDKESS00|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Hyper c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity i.move i.education_sweep2 i.poverty_indicator i.two_natural_parents i.owns_home c.BDKESS00|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Peer c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity i.move i.education_sweep2 i.poverty_indicator i.two_natural_parents i.owns_home c.BDKESS00|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var

mi estimate, variance: mixed Emotions c.centred_age c.centred_age#c.centred_age c.Greenspace c.Greenspace#c.centred_age i.PTTYPE2 i.urban c.PM10_ i.garden i.GENDER i.Ethnicity i.move i.education_sweep2 i.poverty_indicator i.two_natural_parents i.owns_home c.BDKESS00|| SPTN00: || MCSID: c.centred_age, pweight(EOVWT1) covariance(unstructured) var
