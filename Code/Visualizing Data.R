#Data Visualization
                      #References
                            #http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html
                            #data camp tutorials datacamp.com
                            #ADS lecture notes and R Documentation
  
  #The following code snipets show how to use the ggplot library and ggplot object to visualize data

  library(ggplot2) 
  #ggplot the object used as the basis to intialize a plot, many layers can be added to it with the + 
      ggplot(data, aes(x = , y = ))  #to be used when same set of data and aes is for all added layers
                                     #aes - tells R how variables are mapped to visual properties 
                                     #      can include; color, size, fill, x, y, etc.
      
      ggplot(data)                   #to be used when same set of data is for all added layers
      
      ggplot()                       #a skeleton object to be used as need for layers each layer
  
  # add the following layers to your ggplot object to form various plots and visualizations
  # each layer will assume inheritance of data, and aes if defined in ggplot object otherwise 
  # define at the layer level
  # agruments added to the layers below are ones that maybe beneficial to that plot and are not inherited
      
  #Bar Chart
      + geom_bar(width = )           #makes height of bar proportional to the number of cases in each group
                                     #width = bar width by default 90% of data resolution
      
      + geom_col(position = 'fill')  #a stacked barchart
      
  #Pie Chart - (a stacked bar chart in polar coordinates)
             #best for 3 or less categories of comparison
      + geom_bar()
      + coord_polar(var_to_map_angle, start_clock_pt, direction, fit_in_plotpanel = 'on')

  #Point Chart - basis for scatterplots
      + geom_point(col = 'color of dots', size = 'size of dots')
      
      #ordering of point charts can help make visualization easier to read
      + geom_point(aes(x = , y = reorder(cat_var, how_to_order))) 
      
      + geom_smooth(method = 'lm')  #adds a best fit line to scatterplot ie(lm = linear model)
      
  #Histograms
      + geom_histogram(bins = , binwidth = )      #bins = to specificy number of bins (default = 30)
                                                  #binwidth = can be numeric or function, overrides bin
      
      + facet_grid()               #add this to compare multiple histograms at once
      
  #Kernel Density Plot (KDE)
      + geom_density(fill = 'color of area under curve', bw = 'standard dev of kernel')
      
      + geom_rug()                 #add this to your KDE plot to find out where it is filling gaps
      
  #Ridgeline Plot
      library(ggridges)            #can be used as a ggplot layer but needs its library to function
      + geom_density_ridges()      #a stacked KDE plot over ordinal axis 
      
  #BoxPlots
      + geom_boxplot()             #visualizes five summary stats (median, 2 - quartiles and 2 - whiskers) 
                                   #outliers define as needed 
                                   #can define many aesthestic parameters with in boxplot
      
      + geom_jitter()              #adds raw data points to your boxplot for more detailed visualization
      
  #Violin Plot
      + geom_violin()             #a distribution plot alternative to the boxplot
                                  #every data point used but not seen in plot
      
  #Following layers will adjust plots for users readablility 
    #Labels and Titles (the following two examples will do the same thing)
      + labs(title = "title", subtitle = "subtitle", y = "y", x = "x", caption = "caption")
      
      + ggtitle("title", subtitle = "subtitle")
      + xlab("x")
      + ylab("y")
      
    #Limit the width and range of x and y
      #this will force the elimiation of data points outside of these ranges
      #if you are using a best fit line, the line will adjust from orginal data set
      +xlim(c(xmin, xmax))
      +ylim(c(ymin, ymax))
      
      ##this will 'zoom in' to specified ranges but will not change best fit line as all data points still used
      + coord_cartesian(xlim = c(xmin, xmax), ylim = c(ymin, ymax))
      
    #change axis tick marks/breaks  
      #X axis ie (x goes from 0-1 with width = 0.1)
      + scale_x_continuous(breaks = seq(xstart, xend, xwidth)) 
      
      #Y axis
      + scale_y_continuous(breaks = seq(ystart, yend, ywidth))
    
    #change color palette
      + scale_colour_brewer(palette = "BrBG")     #Palettes available are Diverging, Qualitative, ans Sequentail
      
    #The following are plots which are helpful visualization but found in other libraries
      
      #Waffle Chart - a square pie chart better for mulitple categories of comparison
      library(waffle)                              #need waffle library to use (not part of ggplot2)
      waffle(percentage_array, rows = )            #rows is an interger
      
      #Beeswarm Plot - a distribution plot alternative to the boxplot, every data point used and seen in plot.
      library(beeswarm)           
      geom_beeswarm(formula, data, method = 'how to arrange points')    
      

      
      
