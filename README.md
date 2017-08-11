# tf_script_to_variable
A helper function to make it easy to pass in the ip-detect script or the public-ip-detect script to the config.yaml as a variable and not as a file.

## Usage

### Module Input

```bash
module "public-ip-detect-contents" {
  source   = "github.com/bernadinm/tf_script_to_variable"
  input_script_path = "scripts/cloud/aws/public-ip-detect.aws.sh"
}
```

### Module Output

```bash
 dcos_ip_detect_public_contents = "${module.public-ip-detect-contents.script}"
```


## Limitation

Since the script is being interpreted entirely before its run, incuding your comments, your script must not have any unenclosed single quotes, double quotes, or apostrophes. This causes an EOF error.

i.e, do not use comments like this with an apostrophe:

```bash
#!/bin/sh
# Node's internal
curl -fsSL "http://169.254.169.254/latest/meta-data/local-ipv4"
```

Use this:

```bash
#!/bin/sh
# Nodes (without apostrophe works) internal
curl -fsSL "http://169.254.169.254/latest/meta-data/local-ipv4"
```


