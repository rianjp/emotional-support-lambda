# Emotional Support Lambda

### Introduction

Ever felt lonely and in need of some support while at work? Does your rubber duck 🐣 not talk back? Well look no further, the **Emotional Support Lambda<sup>TM</sup>**[^1] has your back. 

> [!WARNING]
> Emotional support not guarunteed! 

### Deployment
Okay so you're interested in your own **Emotional Support Lambda<sup>TM</sup>**? Wondering how to deploy this marvel of modern Cloud Engineering?

All that stands between you and all the reassurance you will ever need are some pesky pre-requisites.

#### pre-requisites

1. An AWS account where you can safely use admin access.
    - This is by no means "production ready" there are some savagery bugs still in the code of every emotional support lambda.
    - There may also a serious deficiency in the will of the author to work out a least privillege IAM policy for this project.
1. Some AWS credentials.
    - Ideally of the ephemeral `IAM Identity Center` variety. But some brief tinkering with the [provider.tf](./provider.tf) will allow you to do what you want with your creds.
1. Terraform installed at a version that is inline with the required version in [versions.tf](./versions.tf).
    - Or you can meddle with the version number, I am not the boss of you.
1. A desire for some emotional support from an uncaring machine.
> [!CAUTION]
> The Emotional Support Lambda<sup>TM</sup> has not been tested on willing participants (or otherwise) that don't require some form of emotional support.
>
> Perhaps this is due to a selecttion bias when only testing the Emotional Support Lambda<sup>TM</sup> on developers and engineers.
>
> If you are not in genuine need of emotional support from Emotional Support Lambda<sup>TM</sup> then we cannot guaruntee any results[^2]

#### Configuring for deployment

1. clone this repo
1. open the cloned repo in your terminal
1. paste your IAM Identity center credentials
1. edit [config/dev/backend.hcl](config/dev/backend.hcl) to configure your S3 backend
    - or run it with a local backend I won't tell anyone
1. run `terraform init --backend-config=./config/dev/backend.hcl` in your terminal with the repo open
1. run `terraform plan --var-file=./config/dev/variables.tfvars`
    - this is optional but I would't trust me who know what I have added in this repo, if only the source code were viewable by the whole internet 🤔
1. run `terraform apply --var-file=./config/dev/variables.tfvars`
1. Invoke the **Emotional Support Lambda<sup>TM</sup>** using your preferred method
    - people who don't know what a cassette tape is may prefer to use the AWS console
    - people who have seen a blackboard may want to use the AWS CLI
    - or you can overengineer your emotional support journey and use an AWS SDK, or even more terraform
1. When you feel adequately emotionally supported run `terraform destroy --var-file=./config/dev/variables.tfvars`

For lazy people using a Mac here are some aliases you can add to your `~/.zshrc`
```shell
alias tfinit="terraform init --backend-config=./config/dev/backend.hcl"
alias tfplan="terraform plan --var-file=./config/dev/variables.tfvars"
alias tfapply="terraform apply --var-file=./config/dev/variables.tfvars"
alias tfdestroy="terraform destroy --var-file=./config/dev/variables.tfvars"
```
For linux users (yes we all know you "use arch BTW") or windows users, the aliases will come as part of a premium add-on service offerd at a subscription fee for £5 per/install[^3], this has been decided by consulting with Electronic Arts[^4] on how to most effectively monetise features that should be free.

---
### Footnotes

[^1]: No real trademark has been registered, this is intended for comedic purposes only.
[^2]: No result of emotional support is guarunteed for any user.
[^3]: No there will not be micro-transactions.
[^4]: EA had nothing to do with this project but the fact that you checked the footnotes really says something about EA doesn't it.
