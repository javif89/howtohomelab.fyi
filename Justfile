default:
    @just -l

dev:
    uv run zensical serve

init:
    uv add zensical
    uv run zensical new .