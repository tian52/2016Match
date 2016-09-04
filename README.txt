Expected pairwise congruence among gene trees under the coalescent model

In this repo we provide a set of scripts that can be used with COAL (Degnan and Salter, 2005) and R to compute gene tree probabilities and RF distance distributions. We provide files and excel tools that will compute the probability of sampling two matching gene trees from asymmetric species trees with three to eight taxa for a set of user-specified branch lengths.



***Instruction of running the scripts and excel tools:


#Matching_4taxa.xlsm / Matching_5taxa.xlsm / Matching_6taxa.xlsm:

Excel tools to compute the probability of sampling two matching gene trees from asymmetric species trees with three to six taxa for a set of user-specified branch lengths.

The topology of the species tree is listed in the first row, with speciation times labelled by T1 - T6. When using these tools, select the correct file for the taxa number, input user-specified branch lengths in B2-B4 (4 taxa), B2-B5 (5 taxa), or B2 - B6 (6 taxa), the gene tree probabilities will be computed in column B, and the gene tree probability will be in the end of column C.

The function to compute the gene tree probabilities are obtained from the output of COAL (Degnan and Salter, 2005): myout_four, myout_five, and myout_six. One example of the input file for COAL to generate this output is "myinfile".


#threetaxa.pl - eighttaxa.pl

Perl scripts to compute the probability of sampling two matching gene trees from asymmetric species trees with three to eight taxa for a set of user-specified branch lengths.

The input file contains the user-specified species tree. Input species tree files to compute all the results in paper "Expected pairwise congruence among gene trees under the coalescent model" can be found in folder "Input_trees". Note that the input file with correct taxa number must be used for different perl script.


#RFdistance.R

An extra step is required to compute the RF distance distributions. When running the perl scripts described in the previous section, the gene tree probabilities will be save in file "myout", which is in input for RFdistance.R. Note that this script is and example to calculate RF distance distributions for 5-taxon species trees. Another example script "sevenRFdistance.R" is given for 7-taxon species trees. The rooted and unrooted RF distance distributions will be saved into "sumrooted.txt" and "sumunrooted.txt", respectively.


#Necessary gene tree files to running COAL is also included in the repo. Please refer to "http://www.stat.unm.edu/~james/" for more details.





