data "alicloud_images" "main" {
  most_recent = true
  name_regex  = "^aliyun_3_x64."
}