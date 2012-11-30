# $1 is training data
# $2 is evaluation data
# $3 is the name of the output model

java -Xmx1800m -server -classpath \
"output/biotagger-0.5.jar:lib/trove.jar:lib/mallet-no_gnu.jar:lib/mallet-deps.jar" \
edu.upenn.cis.taggers.gene.GeneTrainer train $1 $2 $3

gzip $3

