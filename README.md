# r_lab

My R lab


Reading a file 

```r
data <- read.csv("./data.txt", header = FALSE)
data_vector <- as.vector(data$V1)
```

Computing the sum of the values

```r
total_sum <- sum(data_vector)
```

Computing the number of values

```r
count <- length(data_vector)
```

Computing the mean

```r
mean(data_vector)
```

Computing the standard deviation

```r
std(data_vector)
```

Computing the max and min median and range

```r
max(data_vector)
min(data_vector)
median(data_vector)
range(data_vector)
```


## Screen Scraping

The rvest package is the most commonly utilized package for screen scraping.


Installing rvest

```r
install.packages("rvest")
```

Usage of rvest

```r
library(rvest)

# Start by reading a HTML page with read_html():
starwars <- read_html("https://rvest.tidyverse.org/articles/starwars.html")

# Then find elements that match a css selector or XPath expression
# using html_elements(). In this example, each <section> corresponds
# to a different film
films <- starwars %>% html_elements("section")
films

# Then use html_element() to extract one element per film. Here
# we the title is given by the text inside <h2>
title <- films %>% 
  html_element("h2") %>% 
  html_text2()
title

# Or use html_attr() to get data out of attributes. html_attr() always
# returns a string so we convert it to an integer using a readr function
episode <- films %>% 
  html_element("h2") %>% 
  html_attr("data-id") %>% 
  readr::parse_integer()
episode
```


## Creating a package

## Set Up Your Package Structure

Install devtools

```r
install.packages("devtools")
```

Import devtools

```r
library(devtools)
```

Create a new package

```r
create("mypackage")
```

This will create a new package that looks something like this

mypackage/
  ├── DESCRIPTION
  ├── NAMESPACE
  ├── R/
  ├── man/
  └── tests/
  
Write your Functions

Place your R scripts with your functions in the R/ directory.  Each script 
should contain related functions.

For example, create a file R/hello.R with the following content

```r
hello <- function() {
  print("Hello, world!")
}
```


Types of vectors: six!

* integer
* double
* character
* logical
* complex
* raw


Assigning a variable

```r
vrbl <- 10
```


Determining if a variable is a vector

```r
is.vector(x)
```

Determining the type of a variable

```r
typeof(vrbl)
```

Listing all of the variables in the environment

```r
ls()
```


Note: Check out the R related actions:

github.com/r-lib/actions


From the terminal getting help

```r
?is.complex()
?typeof()
```

The question mark tells R to open the help menu for the function to the right.

Note: all vector elements must be of the same type

## References

* [Jime Hester](https://www.jimhester.com/talk/2020-rsc-github-actions/)
