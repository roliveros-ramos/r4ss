% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSexecutivesummary.r
\name{SSexecutivesummary}
\alias{SSexecutivesummary}
\title{A function to create a executive summary tables from an SS Report.sso file}
\usage{
SSexecutivesummary(
  replist,
  plotfolder = "default",
  ci_value = 0.95,
  es_only = FALSE,
  tables = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "catch", "timeseries",
    "numbers"),
  divide_by_2 = FALSE,
  endyr = NULL,
  adopted_ofl = NULL,
  adopted_abc = NULL,
  adopted_acl = NULL,
  forecast_ofl = NULL,
  forecast_abc = NULL,
  verbose = TRUE
)
}
\arguments{
\item{replist}{Object name that holds output from the SS_output function.}

\item{plotfolder}{Directory where the 'tables' directory will be created.
The default is the dir location where the Report.sso file is located.}

\item{ci_value}{To calculate confidence intervals, default is set at 0.95}

\item{es_only}{TRUE/FALSE switch to produce only the executive summary tables
will be produced, default is FALSE which will return all executive summary
tables, historical catches, and numbers-at-ages}

\item{tables}{Which tables to produce (default is everything). Note: some
tables depend on calculations related to previous tables, so will fail
if requested on their own (e.g. Table 'f' can't be created
without also creating Table 'a')}

\item{divide_by_2}{This will allow the user to calculate single sex values
based on the new sex specification (-1) in SS for single sex models. Default value is FALSE.
TRUE will divide by 2.}

\item{endyr}{Optional input to choose a different ending year for tables
(could be useful for catch-only updates)}

\item{adopted_ofl}{Vector of adopted ofl values to be printed in the mangagement performance
table. This should be a vector of 10 values.}

\item{adopted_abc}{Vector of adopted abc values to be printed in the mangagement performance
table. This should be a vector of 10 values.}

\item{adopted_acl}{Vector of adopted acl values to be printed in the mangagement performance
table. This should be a vector of 10 values.}

\item{forecast_ofl}{Optional input vector for management adopted OFL values for table g. These values
will be overwrite the OFL values in the projection table, rather than the model estimated
OFL values. Example input: c(1500, 1300)}

\item{forecast_abc}{Optional input vector for management adopted ABC values for table g. These values
will be overwrite the ABC values in the projection table, rather than the model estimated
ABC values. Example input: c(1500, 1300)}

\item{verbose}{Return updates of function progress to the R console?}
}
\value{
Individual csv files for each executive summary table and additional tables (catch, timeseries, numbers-at-age).
}
\description{
Takes the output from SS_output and creates executive summary tables
as required by the current Terms of Reference for US West Coast
groundfish stock. Additionally, historical catches, time-series and numbers-at-ages tables are created.
}
\author{
Chantel Wetzel
}
