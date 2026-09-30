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
   - builds the IG as a publication build (`-publish https://dhp.uz/fhir/integrations`),
   - verifies the built package is `uz.dhp.integrations#X.Y.Z` (and that the tag
     matches `sushi-config.yaml`), is not flagged `notForPublication` and has the
     `https://dhp.uz/fhir/integrations` url - packages2.fhir.org rejects draft
     packages,
   - creates the GitHub Release `X.Y.Z` with `package.tgz` attached, and
   - opens a PR adding `X.Y.Z` to [`docs/package-feed.xml`](docs/package-feed.xml)
     so the FHIR package registry discovers it.

4. **dhp.uz publishes the release on its own.** A GitLab instance pull-mirrors
   this repository and runs the publication build there, so GitHub stays the
   source of truth and there is nothing to trigger by hand. The mirror polls
   every 30 minutes and an integrations build takes 48-78 minutes, so allow up
   to an hour and a half from pushing the tag before
   `https://dhp.uz/fhir/integrations/X.Y.Z/` appears and
   `https://dhp.uz/fhir/integrations/` starts serving it. Until then the tag is
   only on GitHub.

   The published build reports a few more QA findings than CI did, because
   `-go-publish` revalidates against a cold terminology cache. On the publishing
   host, `ci/verify-site.sh https://dhp.uz integrations <previous> X.Y.Z` checks
   the result and `ci/release-rollback.sh X.Y.Z` undoes it; the pipeline and
   those scripts live in
   [dhp-gitlab-publishing](https://github.com/vadi2/dhp-gitlab-publishing).

5. **Merge the package-feed PR.**

`main` is ruleset-protected (PR + `sushi`/`ig-publisher` checks required), so the
feed change must go through a PR rather than a direct push.

## Registration

Both guides are already discoverable, and nothing per release is needed. The
GitLab pipeline publishes one site-level feed, <https://dhp.uz/package-feed.xml>,
listing every `uz.dhp.core` and `uz.dhp.integrations` release, and that feed is
the one registered in
[FHIR/ig-registry](https://github.com/FHIR/ig-registry/blob/master/package-feeds.json);
the registry crawls it and publishes each new version itself. The guide is listed
at [fhir.org/guides/registry](https://fhir.org/guides/registry) through its
`fhir-ig-list.json` entry there.
