constant: CONNECTION_NAME {
  value: "conn_cortex_framework_demo_sfdc"
  export: override_required
}

constant: GCP_PROJECT_ID {
  value: "leega-demo-cortex"
  export: override_required
}

constant: SFDC_DATASET {
  value: "CORTEX_2_SFDC_REPORT"
  export: override_required
}

application: explore_assistant {
  label: "Explore Assistant"
# url: “https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
# external_api_urls: [“cloud function url"]
  }
}
