#Analysis
                        #References
                        #ADS lecture note and Data camp tutorials datacamp.com
                        #towarddatascience.com

  #Generalized Linear Models
  #For generalized linears models there are 3 basic arguments
  #First the response variable (Y) and the predictor variable (X)
  #Second the data set 
  #Third type or family of statistical distribution ie gaussian, poisson, binomial]

  #set up for 1 predictor variable
  glm(response_var ~ predictor_var, data_set, family = "gaussian")
  
  #set up for 2 or more predictor variables
  glm(response_var ~ predictor_varA + predictor_varB, dataset, family = )
  
  #set up for all variables besides the response variable to be included as
  #a predictor variable.  
  glm(response_var ~ ., data_set, family = )
  
  #Negative Binomial GLM
  library(MASS)
  glm.nb()

  #Cluster Analysis
  #does k means clustering on a datacset
  #centers (number of cluster can be defined)
  kmeans(dataset, centers = )
  
  #the DataExplorer library has straight forward and easy do use EDA functions
  library(DataExplorer)
  
  #Gives a plot of missing variables and quantities
  plot_missing(dataset)
  
  #plots histograms for all the variables
  plot_histogram(dataset)
  
  #gives a density plot 
  plot_density(dataset)
  
  #for multivariate analysis; type = type of variable, 'variable' = variable to be correlated with
  plot_correlation(dataset, type = , 'variable')
  
  #In the Visualizing Data file there are ggplot ways to do the things listed above