
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


# Ejemplos
library( ggplot2 )

n<-200
D<-data.frame( x = seq( 1, 2, length.out = n ),
               y = rnorm( n ) )

pg<-qplot() +
  geom_line( data = D, aes( x = x, y = y ), colour = 'purple', size = 1, linetype = 4 ) +
  scale_y_continuous( limits = c( -4, 4 ) ) +
  theme_minimal()

plot( pg )

n<-20
D<-data.frame( x = seq( 1, 2, length.out = n ),
               y = rnorm( n ) )

pb<-qplot() +
  geom_bar( data = D, aes( x = x, y = y ), stat = "identity", colour = 'purple', fill = 'dodgerblue4', size = 1 ) +
  scale_y_continuous( limits = c( -4, 4 ) ) +
  theme_minimal()

plot( pb )


