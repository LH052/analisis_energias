
filename<-paste0( 'RData/results_e1_15_', format( Sys.Date(), '%Y_%m_%d' ), '.RData' ) 
load( filename )

# Generando reporte excel --------------------------------------------------------------------------
resultfold<-'results'
if ( !file.exists( resultfold ) ) { 
  dir.create( resultfold )
}
filerep<-paste0( resultfold, '/results_e1_15_', format( Sys.Date(), '%Y_%m_%d' ), '.xlsx' )
write.xlsx( results, file = filerep, sheetName = 'results' )

# Haciendo gráficos --------------------------------------------------------------------------------
Energia
plot(Energia)
dEnergia
plot(dEnergia)