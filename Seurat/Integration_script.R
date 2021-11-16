
Immune<-readRDS('Immune_9.24_Hemsley.rds')

Immune.list <- SplitObject(Immune, split.by = "orig.ident")


Immune <- lapply(X = Immune.list, FUN = function(x) {
  x <- NormalizeData(x)
  x <- FindVariableFeatures(x, selection.method = "vst", nfeatures = 2000)
})

features <- SelectIntegrationFeatures(object.list = Immune)
Immune <- lapply(X = Immune, FUN = function(x) {
  x <- ScaleData(x, features = features, verbose = FALSE)
  x <- RunPCA(x, features = features, verbose = FALSE)
})

Immune <- FindIntegrationAnchors(object.list = Immune, dims =1:15, 
                                      anchor.features = features, reduction = "rpca")
Immune <- IntegrateData(anchorset = Immune)
DefaultAssay(Immune) <- "integrated"

# Run the standard workflow for visualization and clustering
Immune<- ScaleData(Immune, verbose = FALSE)
Immune <- RunPCA(Immune, npcs = 30, verbose = FALSE)
Immune <- RunUMAP(Immune, reduction = "pca", dims = 1:30)
Immune <- FindNeighbors(Immune, reduction = "pca", dims = 1:30)
Immune <- FindClusters(Immune, resolution = 1)

DefaultAssay(Immune) <- "RNA"
Immune <- NormalizeData(object = Immune)
