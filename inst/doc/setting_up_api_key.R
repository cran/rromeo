## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----set_env_var---------------------------------------------------------
Sys.setenv(SHERPAROMEO_KEY = "Iq83AIL5bss")
Sys.getenv("SHERPAROMEO_KEY")

## ------------------------------------------------------------------------
library("rromeo")
check_key()

## ------------------------------------------------------------------------
rr_auth("Iq83AIL5bs2")
check_key()

## ----check_api_key-------------------------------------------------------
check_key()

## ----check_key_renviron--------------------------------------------------
check_key()

## ----include = FALSE-----------------------------------------------------
Sys.setenv("SHERPAROMEO_KEY" = "")

