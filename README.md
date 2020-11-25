# Compliance documentation

This repository documents 18F security policies and procedures, which for example are used by the cloud.gov product team.

For cloud.gov compliance documentation, see: https://github.com/cloud-gov/cg-compliance

This is a public repository following [18F's Open Source Policy](https://github.com/18F/open-source-policy/blob/master/policy.md). See our [LICENSE.md](LICENSE.md) and [CONTRIBUTING.md](CONTRIBUTING.md) files for additional information.

To generate PDFs of all the Markdown file, install `pandoc` (e.g. 
`brew install pandoc`) , then:

```shell
for markdown  in *Policy.md
do
  pdf=$(echo $markdown | sed -e 's/md/pdf/')
  echo == converting $markdown to $pdf ==
  pandoc $markdown -s -o $pdf
done
```

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
