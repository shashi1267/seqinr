#set directory
getwd()

#install packages
library(fasta)
library(seqinr)

#Reading the FASTA file
dna = read.fasta(file = "GAPDH_seq.txt", seqtype = "DNA", forceDNAtolower=TRUE)
View(dna)

#Number of Sequence
number_of_seq = length(dna)
print(paste("number of Sequences =",number_of_seq))

#Name of Sequences
name_of_seq = getName(dna)
name_of_seq[[1]]
name_of_seq[1]

#Annotations of dna
annotation = getAnnot(dna)
annotation

#length of individual Sequences
len_seq = getLength(dna)
len_seq

#Composition of Sequences
count(dna[[1]],1)
count(dna[[2]],1)

dinucleotide_count = count(dna[[1]],2)
print(dinucleotide_count)

trinucleotide_count = count(dna[[2]],3)
print(trinucleotide_count)

GC_content = GC(dna[[1]])
print(GC_content)
