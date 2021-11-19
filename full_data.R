
# full data

samples <- system('ls ~/Projects/OLD/rcc/Data/TCR/samples', intern = TRUE)
samples <- paste0('~/Projects/OLD/rcc/Data/TCR/samples/',samples)

contigs <- readVDJcontigs(samples)

sce <- loadHDF5SummarizedExperiment('~/Projects/OLD/rcc/sceMNN')

sce <- addVDJtoSCE(contigs, sce, barcode = 'cell')


