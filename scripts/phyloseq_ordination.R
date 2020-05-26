generate_pcoa <- function(data, method, treatment_group, title) {
  pseq.rel <- microbiome::transform(data, "compositional")
  phy4<-microbiome::transform(pseq.rel, "log")
  GP.ord_pt4 <- ordinate(phy4, "PCoA", method)
  p1 = plot_ordination(phy4, GP.ord_pt4, type="sampleid", color=treatment_group, title=title)+
  geom_point(shape=16, size = 4) +
  theme_minimal() +
  stat_ellipse(type="t" ,size =0.7)+ 
  scale_colour_manual(name=treatment_group, values=colors, aesthetics = c("colour")) +
  theme(plot.title=element_text(size=10, face="bold", color="black"), axis.text=element_text(size=10), aspect.ratio = 1, axis.title=element_text(size=8,face="bold"))+
  theme(legend.position="top", legend.background = element_blank(), legend.box.background = element_rect(colour = "black")) 
  ggsave(paste(data, "-", distance_metric, "-", treatment_group, ".pcoa.png", sep=""), width = 20, height = 20, units = c("cm"), dpi = 320)
  print(p1)
  return(p1)
}


