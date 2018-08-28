
library(data.table)
library(dplyr)
library(plyr)

elevLatLongcsv <- read.csv(file='site_clim_data_Elev-Lat-Long-Site_for_means_in_R.csv') 


	elev_means <-ddply(elevLatLongcsv, .(Site), summarize, mean=mean(Elev, na.rm=T))
	elev_means
	write.table(elev_means, file='elev_nonstd_means.txt', sep='\t')
#
	lat_means <-ddply(elevLatLongcsv, .(Site), summarize, mean=mean(Lat, na.rm=T))
	lat_means
	write.table(lat_means, file='latnonstd_means.txt', sep='\t')
#
	long_means <-ddply(elevLatLongcsv, .(Site), summarize, mean=mean(Long, na.rm=T))
	long_means
	write.table(long_means, file='long_nonstd_means.txt', sep='\t')


