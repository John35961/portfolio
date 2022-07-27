# Initializing static content constants

DEFAULT_META = YAML.load_file(Rails.root.join('config/data/meta.yml'))
SOCIALS = YAML.load_file(Rails.root.join('config/data/socials.yml'))
