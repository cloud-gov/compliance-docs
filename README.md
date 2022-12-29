# Compliance documentation

This repository documents 18F security policies and procedures, which for example are used by the cloud.gov product team.

For cloud.gov compliance documentation, see: https://github.com/cloud-gov/cg-compliance

This is a public repository following [18F's Open Source Policy](https://github.com/18F/open-source-policy/blob/master/policy.md). See our [LICENSE.md](LICENSE.md) and [CONTRIBUTING.md](CONTRIBUTING.md) files for additional information.

## Generating PDFs for assessors

To generate PDFs of all the Markdown files, install `pandoc` (e.g. 
`brew install pandoc`), and `basictex` (e.g. `brew install basictex`) then:

```shell
make all
```

## Editing documents

We've created the `...Policy.md` documents to all include the file, `TTS-Common-Control-Policy.md`. 
As Markdown in GitHub, that's simply a linked URL. To generate PDFs, we use the `m4`
commands `changequote` and `include` to make an intermediate tmp file, then pipe that
through to `sed` and `pandoc` to strip the "magic" comments and generate the final
output.

In short, maintain the following snippet in the input files to include the TTS common
controls:

    <!-- x
    changequote(`{{', `}}') 
    include({{bq_tts.md}})
    x -->

(The `changequote` is superfluous, we could just do ``include(`bq_tts.md')``)

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
