default:
    @just -l

serve:
    uv run zensical serve

init:
    uv add zensical
    uv run zensical new .