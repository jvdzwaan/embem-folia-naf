# Embem Folia Naf

Using the [embodied emotions scripts](https://github.com/jvdzwaan/embodied-emotions-scripts) 
to create naf files for some new DBNL texts. 

* Input: DBNL TEI
* Output: NAF with embodied emotions predictions

## Steps

1. Convert DBNL TEI to txt using `tei2txt` bash script (see notebook `00_txt2folia.ipynb`)
2. Convert text to folia using frog version 0.25 (see notebook `00_txt2folia.ipynb`)
3. Run jupyter notebook server for embodied emotions scripts (see notebook `01_embodied-emotions-scripts.ipynb`)
4. Convert folia to naf using emodied emotions scripts folia2naf
5. Use classifier to add the emotion predictions to the naf files using emodied emotions scripts
