resource "local_file" "foo" {
  content  = "This is a demo file content foo"
  filename = "${path.module}/foo.txt"
}

// comment

/* test */