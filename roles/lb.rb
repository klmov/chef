name "lb"
description "The base role for systems that installs nginx and setups LB"
run_list "recipe[web]"
env_run_lists "Chef-dev" => ["recipe[web]"], "_default" => ["recipe[web]"]
