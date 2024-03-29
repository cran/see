% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.performance_roc.R
\name{plot.see_performance_roc}
\alias{plot.see_performance_roc}
\title{Plot method for ROC curves}
\usage{
\method{plot}{see_performance_roc}(x, ...)
}
\arguments{
\item{x}{An object.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A ggplot2-object.
}
\description{
The \code{plot()} method for the \code{performance::performance_roc()}
function.
}
\examples{
library(performance)
data(iris)
set.seed(123)
iris$y <- rbinom(nrow(iris), size = 1, .3)

folds <- sample(nrow(iris), size = nrow(iris) / 8, replace = FALSE)
test_data <- iris[folds, ]
train_data <- iris[-folds, ]

model <- glm(y ~ Sepal.Length + Sepal.Width, data = train_data, family = "binomial")
result <- performance_roc(model, new_data = test_data)
result
plot(result)
}
