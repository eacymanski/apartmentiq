Property.find_or_create_by!(name: "Property 1", address: "111 Main Street, Hiram OH 44234", year_built: 2000, website_url: "zillow.com/1")
Property.find_or_create_by!(name: "Property 2", address: "222 Main Street, Hiram OH 44234", year_built: 2025, website_url: "zillow.com/2")
Property.find_or_create_by!(name: "Property 3", address: "333 Main Street, Hiram OH 44234", year_built: 2025, website_url: "zillow.com/3")

Unit.find_or_create_by!(name: "P1 Unit 1", bedroom_count: 2, bathroom_count: 1.5, unit_size: 1500, property: Property.find_by(name: "Property 1"))
Unit.find_or_create_by!(name: "P1 Unit 2", bedroom_count: 2, bathroom_count: 1.5, unit_size: 1500, property: Property.find_by(name: "Property 1"))
Unit.find_or_create_by!(name: "P1 Unit 3", bedroom_count: 2, bathroom_count: 1.5, unit_size: 1500, property: Property.find_by(name: "Property 1"))
