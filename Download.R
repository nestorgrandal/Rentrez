install.packages('rmarkdown')
install.packages('dplyr')
install.packages('knitr')
#Step 1: Install (rentrez) package
install.packages("rentrez")
library(rentrez)
#Step 3.1: paste two lines of code below
ncbi_ids=c("HQ433692.1","HQ433694.1","HQ433691.1") #this line creates a vector of accession numbers (Step 3.2)
Bburg=entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") #sends accession #s to NCBI and receives data files containing partial sequences (Step 3.2)
Bburg #observing data acquired
Bburg3=strsplit(Bburg, "\n\n") #separating the three sets of sequence data into different components of vector (Step 3.4) 
Bburg3vec=unlist(Bburg3) #produce a vector which contains all the atomic components which occur in Bburg3
write.csv(Bburg3vec, "Sequences.csv") #output vector to .csv file called Sequences.csv (Step 4)