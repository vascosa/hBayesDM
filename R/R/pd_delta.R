#' @templateVar MODEL_FUNCTION pd_delta
#' @templateVar CONTRIBUTOR 
#' @templateVar TASK_NAME Prisoner's Dilemma Task
#' @templateVar TASK_CODE pd
#' @templateVar TASK_CITE 
#' @templateVar MODEL_NAME Rescorla-Wagner (Delta) Model
#' @templateVar MODEL_CODE delta
#' @templateVar MODEL_CITE 
#' @templateVar MODEL_TYPE Hierarchical
#' @templateVar DATA_COLUMNS "subjID", "choice", "outcome"
#' @templateVar PARAMETERS \code{A} (learning rate), \code{tau} (inverse temperature)
#' @templateVar REGRESSORS 
#' @templateVar POSTPREDS "y_pred"
#' @templateVar LENGTH_DATA_COLUMNS 3
#' @templateVar DETAILS_DATA_1 \item{subjID}{A unique identifier for each subject in the data-set.}
#' @templateVar DETAILS_DATA_2 \item{choice}{Integer value representing the option chosen on the given trial: 1 (Cooperate) or 2(Defect).}
#' @templateVar DETAILS_DATA_3 \item{outcome}{Integer value representing the outcome of the given trial.}
#' @templateVar LENGTH_ADDITIONAL_ARGS 0
#' 
#' @template model-documentation
#'
#' @export
#' @include hBayesDM_model.R
#' @include preprocess_funcs.R
#' 
#' @references
#' 
#'

pd_delta <- hBayesDM_model(
  task_name       = "pd",
  model_name      = "delta",
  model_type      = "",
  data_columns    = c("subjID", "choice", "outcome"),
  parameters      = list(
    "A" = c(0, 0.5, 1),
    "tau" = c(0, 1, 5)
  ),
  regressors      = NULL,
  postpreds       = c("y_pred"),
  preprocess_func = pd_preprocess_func)
