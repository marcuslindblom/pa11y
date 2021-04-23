# Pa11y

Pa11y aims to improve the accessibility of the web through better tooling and automation.

A simple example:

```yml
on:
  deployment_status

jobs:
  conformance:
    name: Pa11y
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          repository: marcuslindblom/pa11y
      - uses: marcuslindblom/pa11y@main
        with:
          url: ${{ secrets.URL }}
          level: error
```

Example output:
