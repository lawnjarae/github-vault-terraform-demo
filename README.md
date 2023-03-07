## Building Security into Enterprise CI/CD Pipelines

In this demo, learn how HashiCorp can secure and accelerate your CI/CD pipelines with the HashiCorp Cloud Platform on top of GitHub. 

### The Demo Covers:
#### [GitHub Actions][3] and [Terraform Cloud for Business][1] (TFC-B)
  * [GitHub Actions][3] calling [Terraform Cloud][1]
  * Fine grained [access control](https://github.com/hashicorp/terraform-dynamic-credentials-setup-examples/blob/main/aws/aws.tf#L45) from GitHub Actions to TFC-B
  * [Terraform Cloud][1] retrieving AWS credentials via OIDC
  * Provisioning infrastructure
#### [GitHub Actions][3] and [HCP Vault][2]
  * Triggered by code change
  * GitHub Actions OIDC communicates with Vault/Terraform Cloud (without passwords)
  * GitHub Actions workflow calls out to [HCP Vault][2]  to retrieve secrets.


## :books: Resources
* Slides [Building Security into Enterprise CI/CD Pipelines](http://bit.ly/3yl988W "Presentation given with this demo")
* Case Study: [How GitHub uses HashiCorp](https://www.hashicorp.com/case-studies/github)
* White Paper: [Cloud Operating Model](https://www.datocms-assets.com/2885/1658941487-hashicorp_com_platformteams_template_digital-6.pdf)
* Blog: [How to build a consistent workflow for development and operations teams](https://github.blog/2023-02-28-how-to-build-a-consistent-workflow-for-development-and-operations-teams/) 

## :compass: Guides
* [Setting up TFC integration w/ GitHub Actions](https://developer.hashicorp.com/terraform/tutorials/automation/github-actions)
* [Setting up Vault with GitHub Actions](https://developer.hashicorp.com/vault/tutorials/app-integration/github-actions)
* [A Practioner’s Guild to Using HashiCorp Terrform Cloud w/ GitHub](https://www.hashicorp.com/resources/a-practitioner-s-guide-to-using-hashicorp-terraform-cloud-with-github)

[1]: https://app.terraform.io/public/signup/account?product_intent=terraform
[2]: https://www.hashicorp.com/products/vault
[3]: https://github.com/features/actions
