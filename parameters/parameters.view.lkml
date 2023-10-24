view: parameters {

  parameter:  production_duration_param{
    type: string
    description: "Filter to specify the prferred duration for well production: Monthly, Quarterly, or Yearly"

    allowed_value: {
      label: "Monthly"
      value: "Month"
    }
    allowed_value: {
      label: "Quarterly"
      value: "Quarter"
    }
    allowed_value: {
      label: "Yearly"
      value: "Year"
    }
  }
}
