# Initializing static content constants

LEGAL = YAML.load_file(Rails.root.join('config/data/legal.yml'))
DEFAULT_META = YAML.load_file(Rails.root.join('config/data/default_meta.yml'))
PERSONAL = YAML.load_file(Rails.root.join('config/data/personal.yml'))
SOCIALS = YAML.load_file(Rails.root.join('config/data/socials.yml'))
