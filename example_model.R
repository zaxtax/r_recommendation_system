#!/usr/bin/Rscript

library('ProjectTemplate')
try(load.project())

logit.fit <- glm(Installed ~ LogDependencyCount +
                             LogSuggestionCount +
                             LogImportCount +
                             LogViewsIncluding +
                             LogPackagesMaintaining +
                             CorePackage +
                             RecommendedPackage,
                 data = training.data,
                 family = binomial(link = 'logit'))

summary(logit.fit)
