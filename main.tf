# Read Script and return output
data "template_file" "script" {
 template = "${file("${path.module}/helper.sh")}"

 vars { 
 input_script_path = "${file("${var.input_script_path}")}"
 }
}
