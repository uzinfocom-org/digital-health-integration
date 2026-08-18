# Releasing

Publishing a release is automated by [`.github/workflows/release.yml`](.github/workflows/release.yml).

## Steps

1. **Prepare-release PR.** Open a PR that:
   - bumps `version:` in `sushi-config.yaml` to `X.Y.Z`, and
   - rolls the changelog `### In development` section into a `### Version X.Y.Z`
     section (en/ru/uz), resetting *In development* to `(No changes yet)`.

   Merge it once CI is green.

2. **Tag the release commit** on `main` and push the tag:

   ```bash
   git checkout main && git pull
   git tag X.Y.Z && git push origin X.Y.Z
   ```

3. The **Release** workflow then automatically:
   - builds the IG,
   - verifies the built package is `uz.dhp.integrations#X.Y.Z` (and that the tag
     matches `sushi-config.yaml`),
   - creates the GitHub Release `X.Y.Z` with `package.tgz` attached, and
   - opens a PR adding `X.Y.Z` to [`docs/package-feed.xml`](docs/package-feed.xml)
     so the FHIR package registry discovers it.

4. **Merge the package-feed PR.**

`main` is ruleset-protected (PR + `sushi`/`ig-publisher` checks required), so the
feed change must go through a PR rather than a direct push.

## One-time: register the package feed

`uz.dhp.integrations` only reaches the FHIR package registry once its feed is
listed in [FHIR/ig-registry](https://github.com/FHIR/ig-registry). After the
first release and its feed PR have landed on `main` - so that the raw URL
resolves and the feed has an item to crawl - open a PR against
`package-feeds.json` there adding:

```json
{
  "name": "DHP Integrations Uzbekistan Packages",
  "url": "https://raw.githubusercontent.com/uzinfocom-org/digital-health-integration/refs/heads/main/docs/package-feed.xml",
  "errors": "fhir|vadimperetok.in"
}
```

`uz.dhp.core` is registered the same way from the
[core IG repository](https://github.com/uzinfocom-org/digital-health-ig).

Optionally, the same PR can add the guide to `fhir-ig-list.json`, which is what
lists an IG at [fhir.org/guides/registry](https://fhir.org/guides/registry).
`uz.dhp.core` has an entry there with `npm-name`, `canonical`, `country`,
`language` and `category` - no publication history is required.
