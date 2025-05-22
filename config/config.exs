import Config

config :griffin_ssg,
  input: "src",
  output: "_site",
  passthrough_copies: ["assets/css/*.css", "assets/images/**/*.{jpg,png,svg}", "assets/js/*.js"]

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
