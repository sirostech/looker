view: parameters {

  parameter: production_duration_param {
    type: string
    label: "Production Duration"
    description: "Filter to specify the preferred duration for well production: Monthly, Quarterly, or Yearly"

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
