# Simple Storage Account example

Configuration in this directory creates a test resource group and then deploys a single storage account in to it.
This also demonstrates the usage of the `sa_depends_on` variable.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.