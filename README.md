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

# Notice

This module only works on the latest version of the `tf_dcos_core` and above from [bernadinm/tf_dcos_core#3](https://github.com/bernadinm/tf_dcos_core/pull/3)

# Authors

Originally created and maintained by [Miguel Bernadin](https://github.com/bernadinm).


# License

Apache 2 Licensed. See LICENSE for full details.
