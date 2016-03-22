# zlotnick-drug-sim


**Why:** Understand the behavior of viral capsid assembly in the absence and presence of varying drug concentrations.

**Scope:** 
1.  Reproduce viral capsid assembly model from "A Theoretical Model Successfully Identifies Features of Hepatitis B Virus Capsid" by Zlotnick et al. Model will use ODE's with [KroneckerBio Systems Biology Modeling](https://github.com/kroneckerbio/kroneckerbio) in MATLAB for the assembly of capsid monomers to form a final dodecahedron capsid.  
2.  Extend Zlotnick model to include varying concentrations of drugged monomers.


**Status:** Unfinished.  Added all helper code.  TODO: add modeling code"

`Zlotnick1999.m` fits figure 1B from Zlotnick 1999 paper, but doesn't account for the slow nucleation steps of dimer and trimer reactions.  Mysterious. 

