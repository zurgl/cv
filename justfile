# cSpell:disable
root := justfile_directory()

export TYPST_ROOT := root

set allow-duplicate-recipes := false

# @ ----------------
# @ HELPER
# @ ----------------

[private]
[group("helper")]
default:
  just --list

[group("helper")]
help:
  just --help

# @ ----------------
# @ git quick commit
# @ ----------------

# init folder as a git repository
[group("git")] 
git:
  git init

[group("git")]
status:
  git status

[group("git")]
add: status
  git add .

[group("git")]
commit: add
  git commit -m "quick commit"

[group("git")]
push: commit
  git push

[group("git")]
graph: 
  git log --graph --oneline master

# @ ----------------
# @ Builder
# @ ----------------

[group("Builder")]
dev:
  typst watch --root . \
    --input config=config.yaml \
    --format pdf \
    --font-path ./assets/fonts \
    main.typ \
    ./dist/cv.pdf

[group("Builder")]
run:
  typst compile \
    --root . \
    --format pdf \
    --open mupdf \
    --input config=config.yaml \
    --font-path ./assets/fonts \
    main.typ \
    ./dist/cv.pdf

# @ ----------------
# @ Cleaner
# @ ----------------

[group('Cleaner')]
clean:
  rm -rf ./dist/*.png
  rm -rf ./dist/*.pdf

# @ ----------------
# @ Preview
# @ ----------------

# [group('preview')]
# view target:
#   okular ./dist/{{target}}.png & disown

# [group('preview')]
# uview:
#   killall okular


