## ---------------------------
##
## Script name: Plotting.r
##
## Purpose of script: 
##      Functions for making boxplots of the flipper data, saves to png and svg 
##
## Author: Dr. Lydia France
##
## Date Created: 2022-11-10
##
##
## ---------------------------
##
## Notes:
##   
##
## ---------------------------

# Save the plot as a png and define the size, resolution, and scaling
save_flipper_plot_png <- function(culmen_data, filename, size, res, scaling){
  agg_png(filename, width = size, 
                    height = size, 
                    units = "cm", 
                    res = res, 
                    scaling = scaling)
  culmen_scatter <- plot_flipper_figure(culmen_data)
  print(culmen_scatter)
  dev.off()
}

# Save the plot as a svg and define the size and scaling
save_flipper_plot_svg <- function(penguins_flippers, filename, size, scaling){
    size_inches = size/2.54
    svglite(filename, width = size_inches, height = size_inches, scaling = scaling)
    flipper_box <- plot_flipper_figure(penguins_flippers)
    print(flipper_box)
    dev.off()
}