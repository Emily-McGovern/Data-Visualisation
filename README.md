
# Data visualisation in R 

Easy generation of ordination plots from [Qiime2](https://docs.qiime2.org/2020.2/tutorials/moving-pictures/) using [phyloseq](https://github.com/joey711/phyloseq) package. The code uses moving pictures tutorial output as an example. </br>

PCoA plots are first generated to visualise the change in bacterial community compostition for reported antibiotic use for each body site in the example dataset. 

![all_pcoa](./plots/gut-bray-Antibiotic_usage.pcoa.png=50x50)

Then [ggpubr](https://www.google.com/search?q=ggpubr&oq=ggpubr+&aqs=chrome..69i57j69i59l2j0l2j69i60l3.7908j0j7&sourceid=chrome&ie=UTF-8) is used to generate a single plot of all body sites investigated.</br>

![all_pcoa](./plots/bodysites_all.png)
