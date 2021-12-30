import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lv_sample, LvSampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "l+6eP3jGMw2i/XG+PE5m0qFH4kojxj3lHBSD9i2yMt7clw/a9yGIeS3JAXWVO31u",
  server: false

# In test we don't send emails.
config :lv_sample, LvSample.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
