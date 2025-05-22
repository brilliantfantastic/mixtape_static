import Config

config :griffin_ssg,
  input: "src",
  output: "_site",
  passthrough_copies: ["assets/css/*.css", "assets/images/**/*.{jpg,png,svg}", "assets/js/*.js"],
  shortcodes: %{
    youtube: fn slug ->
      """
      <iframe width="560" height="315" src="https://www.youtube.com/embed/#{slug}"
              title="YouTube player" frameborder="0" allow="accelerometer;
              autoplay; clipboard-write; encrypted-media; gyroscope;
              picture-in-picture; web-share" allowfullscreen>
      </iframe>
      """
    end
  }

config :tailwind,
  version: "4.0.0",
  default: [
    args: ~w(
      --config=assets/js/tailwind.config.js
      --input=assets/css/app.css
      --output=_site/assets/css/style.css
    ),
    cd: Path.expand("..", __DIR__)
  ]

# import_config "#{Mix.env()}.exs"
