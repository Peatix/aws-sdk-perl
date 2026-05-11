# Apache 2.0 Modification Notices

This repository is a fork of [pplu/aws-sdk-perl](https://github.com/pplu/aws-sdk-perl), licensed under the Apache License 2.0. Under the Apache 2.0 license, modified files must carry a prominent notice stating they have been changed.

## When to add a modification notice

Add the notice when you are editing a file that **originated from the upstream** pplu/aws-sdk-perl repository. You can verify this by checking whether the file exists at the merge base between our `master` branch and `upstream/master`:

```bash
git merge-base master upstream/master
git ls-tree <merge-base> -- <filepath>
```

If `git ls-tree` returns output, the file is from upstream and needs the notice (if it doesn't already have one).

## When NOT to add a modification notice

- **New files** created by Peatix that do not exist in the upstream repository
- **Non-code files** such as `.json`, `.md`, `.gitignore`
- **Auto-generated data files** in `share/`
- **Test data/fixture files** without a code extension (e.g. `.response` files)
- Files that **already contain** the modification notice

## Notice text

For Perl files (`.pm`, `.pl`, `.t`) and Perl-syntax files (`cpanfile`):

```perl
# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.
```

For YAML files (`.yml`, `.yaml`):

```yaml
# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.
```

For shell scripts and Makefiles:

```bash
# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.
```

## Placement rules

1. **After any shebang line** (`#!/...`) — insert the notice after the shebang, separated by a blank line
2. **Before `package` declarations** — if a Perl module starts with `package` on line 1, place the notice before it
3. **Before `---`** in YAML files that start with a document separator
4. **At the top** of all other files

## Critical constraints

- **NEVER remove or replace existing copyright notices** — only ADD the modification notice
- Check whether the notice already exists before adding (search for "by Peatix, Inc.")
- Only one notice per file is needed, regardless of how many times the file is modified
