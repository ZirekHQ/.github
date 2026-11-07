#!/usr/bin/env bash
# Prints the next X.Y.Z version from the Conventional Commit subjects since the latest vX.Y.Z tag.
# Exit 1: nothing release-worthy since that tag. With no vX.Y.Z tag yet, prints 1.0.0.
# feat -> minor, `!` or a BREAKING CHANGE footer -> major, any other type that is not docs/chore/
# style/refactor/test/ci/build/perf, or an unprefixed subject -> patch.
set -euo pipefail

last_tag="$(git tag --list 'v*' --merged HEAD --sort=-v:refname | grep -E '^v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$' | head -1 || true)"
if [ -z "$last_tag" ]; then
  echo "1.0.0"
  exit 0
fi

version="${last_tag#v}"
major="${version%%.*}"
rest="${version#*.}"
minor="${rest%%.*}"
patch="${rest#*.}"

subjects="$(git log "${last_tag}..HEAD" --pretty='%s')"
bodies="$(git log "${last_tag}..HEAD" --pretty='%b')"

if [ -z "$subjects" ]; then
  echo "::notice::No commits since ${last_tag} -- nothing to release" >&2
  exit 1
fi

bump=""
while IFS= read -r subject; do
  [ -z "$subject" ] && continue
  if echo "$subject" | grep -qE '^[a-zA-Z]+(\([^)]*\))?!:'; then
    bump="major"
    break
  fi
  if echo "$subject" | grep -qE '^feat(\([^)]*\))?:'; then
    [ "$bump" != "major" ] && bump="minor"
    continue
  fi
  if echo "$subject" | grep -qE '^(docs|chore|style|refactor|test|ci|build|perf)(\([^)]*\))?:'; then
    continue
  fi
  [ -z "$bump" ] && bump="patch"
done <<< "$subjects"

if echo "$bodies" | grep -qE '^BREAKING[ -]CHANGE:'; then
  bump="major"
fi

if [ -z "$bump" ]; then
  echo "::notice::Only docs/chore/style/refactor/test/ci/build/perf commits since ${last_tag} -- nothing to release" >&2
  exit 1
fi

case "$bump" in
  major) echo "$((major + 1)).0.0" ;;
  minor) echo "${major}.$((minor + 1)).0" ;;
  patch) echo "${major}.${minor}.$((patch + 1))" ;;
esac
