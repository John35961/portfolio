# Initializing static content constants

LEGAL = YAML.load_file(Rails.root.join('config/data/legal.yml'))
DEFAULT_META = YAML.load_file(Rails.root.join('config/data/default_meta.yml'))
ABOUT = YAML.load_file(Rails.root.join('config/data/about.yml'))
SOCIALS = YAML.load_file(Rails.root.join('config/data/socials.yml'))
