import yaml

with open("mta.yaml", "r") as stream:
    try:
        parsed_yaml = yaml.safe_load(stream)
        print(parsed_yaml["version"])
    except yaml.YAMLError as exc:
        print(exc)
