

#T cells
FeaturePlot(object = Hemsley_Immune,
            features = c('CD3D'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()


#CD4+ T cells 
FeaturePlot(object = Hemsley_Immune,
            features = c('CD40LG','CD4','CD3D','CCR7'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#clusters 5,8,11,12

#Cytotoxic CD8 T cells
FeaturePlot(object = Hemsley_Immune,
            features = c('GZMH','GZMB', 'PRF1', 'CD3D','CD8A','CD8B'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#clusters 1

#Dysfunctional/exhausted T cells; if CD4+ sometimes referred to as Tregs
FeaturePlot(object = Hemsley_Immune,
            features = c('PDCD1','CTLA4','LAG3','FOXP3', 'CD3D'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster 8

#Cytotoxic CD4 T Cells (rare cell type)
FeaturePlot(object = Hemsley_Immune,
            features = c('CD40LG','GZMB','KLRD1'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()


#Natural Killer cells (LACK CD6; typically cluster near CD8 cytotoxic T cells)
FeaturePlot(object = Hemsley_Immune,
            features = c('NKG7','GNLY','NCR1','CD6'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#clusters 9, 24

#Erythrocytes
FeaturePlot(object = Hemsley_Immune,
            features = c('HBB','HBA2'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster 23

#Monocytes
FeaturePlot(object = Hemsley_Immune,
            features = c('VCAN'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#Resident macrophages
FeaturePlot(object = Hemsley_Immune,
            features = c('SELENOP', 'SLC40A1', 'DNASE1L3','C1QA'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster 16

#Inflammatory Macrophages
FeaturePlot(object = Hemsley_Immune,
            features = c('IL1B', 'IER3', 'SOD2', 'CCL4', 'IL1A', 'IL1RN'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#clusters 19, 21


#NEUTROPHILS
FeaturePlot(object = Hemsley_Immune,
            features = c('CSF3R','MMP9','S100A9'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster 21; haven't seen neutrophils in single-cell CD literature; labeled as inflammatory macrophages for now

#CD14+ Monocytes
FeaturePlot(object = Hemsley_Immune,
            features = c('CD14','LYZ'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#FCGR3A+ (CD16+) Monocytes
FeaturePlot(object = Hemsley_Immune,
            features = c('FCGR3A','MS4A7'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()



#Conventional dendritic cells
FeaturePlot(object = Hemsley_Immune,
            features = c('FCER1A', 'CST3', 'CLEC10A', 'CD1C', 'CST7', 'DUSP4'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()




#Plasmacytoid dendritic cells (pDC)
FeaturePlot(object = Hemsley_Immune,
            features = c('IL3RA', 'GZMB', 'SERPINF1', 'ITM2C','LILRA4'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#B cells
FeaturePlot(object = Hemsley_Immune,
            features = c('MS4A1', 'CD19'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE, label = TRUE, label.size = 5) & NoAxes()

#Naive B cells
FeaturePlot(object = Hemsley_Immune,
            features = c('MS4A1', 'TCL1A','IGHD','IGHM'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#clusters 0,3,4,7,15
#Cluster 13 is novel B cell type unique to ileum; labeled as naive B cell for now

#memory B cells
FeaturePlot(object = Hemsley_Immune,
            features = c('CD27','IGHA1','IGHA2','CD1C'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#clusters 2 

#Plasma cells
FeaturePlot(object = Hemsley_Immune,
            features = c('JCHAIN', 'MZB1','XBP1'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#IgA plasma cells
FeaturePlot(object = Hemsley_Immune,
            features = c( 'IGHA1','IGHA2'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#clusters 6, 14, 20, 22 (weird clusters 20,22 are clustering so close to B cells)


#IgG plasma cells
FeaturePlot(object = Hemsley_Immune,
            features = c( 'IGHG1','IGHG2','IGHG3','IGHG4'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster18

#Long-lived plasma cells
FeaturePlot(object = Hemsley_Immune,
            features = c( 'SDC1','MCL1','MDK'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#short-lived plasma cells
FeaturePlot(object = Hemsley_Immune,
            features = c( 'CD19','HLA-A'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()

#Dividing B cells
FeaturePlot(object = Hemsley_Immune,
            features = c('MKI67','MS4A1'),
            cols=c("#e6e6e6","#0d0d5e"), 
            order=TRUE, raster=FALSE,  min.cutoff = 'q10',
            label = TRUE, label.size = 5) & NoAxes()
#cluster 10

current.cluster.ids <- c("0","1","2","3","4","5","6",'7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24')
new.cluster.ids <- c("Naive_B_cells","CD8_T_cells","Memory_B_cells","Naive_B_cells","Naive_B_cells","CD4_T_cells",
                  "IgA_plasma_cells",'Naive_B_cells','CD4_T_cells','NK_cells','Dividing_B_cells','CD4_T_cells',
                  'CD4_T_cells','Naive_B_cells','IgA_plasma_cells','Naive_B_cells',
                  'Resident_macrophages','Resident_macrophages','IgG_plasma_cells','Inflammatory_macrophages',
                  'IgA_plasma_cells','Inflammatory_macrophages','IgA_plasma_cells','Erythrocytes','NK_cells')

Hemsley_Immune@active.ident <- plyr::mapvalues(x = Hemsley_Immune@active.ident, from = current.cluster.ids, to = new.cluster.ids)

Hemsley_Immune$CellType <- Idents(Hemsley_Immune)

saveRDS(Hemsley_Immune, "Hemsley_Immune_10.5.21.rds")

