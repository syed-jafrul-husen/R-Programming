bayesTheorem <- function(pA, pB, pBA)
  pAB <- (pA * pBA)/pB

pCloudy = 0.40
pRain <- 0.10
pCloudyRain <- 0.50

pRainCloudy <- bayesTheorem(pRain, pCloudy, pCloudyRain)
pRainCloudy

