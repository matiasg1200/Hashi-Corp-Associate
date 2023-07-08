Providers are a list of plugins that terraform uses to interact with cloud providers (and others) APIs.
Each time we add a provider to our *.tf file and run `terraform init` terraform will download the plugins from the specified provider. 
Every provider is updated separtley from Terraform and from each other so we can use `version constraints` in order to ensure a specific functionallaty of one of our providers.
Initally, the version constraint was added to the `provider` block of the Terraform code but on newer versions is added on the `terraform` block

Providers documentation: [https://developer.hashicorp.com/terraform/language/v1.3.x/providers](https://developer.hashicorp.com/terraform/language/v1.3.x/providers)
