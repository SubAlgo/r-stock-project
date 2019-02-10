# Download package "quantmod" for get daily stock price
```{r}
install.packages("quantmod")
```

# import library "quantmod" for use in project
```{r}
library(quantmod)
```

# get Apple stock price [Close price] [date 2012-04-11 to 2016-10-06]

```{r}
getSymbols("AAPL", from = "2012-04-11", to = "2016-10-06", periodicity = "daily")
```

```{r}
#head(AAPL[,4])
head(Cl(AAPL))
```

# Set close price to apple_Daily_ClosePrice
```{r}
apple_Daily_ClosePrice <- as.xts(Cl(AAPL))
```

