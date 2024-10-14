connection: "explore-assistant-test"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: explore_assistant_kb_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: explore_assistant_kb_default_datagroup

# access_grant: explore_assistant_tester {
#   allowed_values: ["yes"]
#   user_attribute: explore_assistant_test_group
# }

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Explore-assistant-kb"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: explore_assistant_samples {
  # required_access_grants: [explore_assistant_tester]
}

explore: explore_assistant_examples {
  # required_access_grants: [explore_assistant_tester]
}

explore: explore_assistant_refinement_examples {
  # required_access_grants: [explore_assistant_tester]
}
