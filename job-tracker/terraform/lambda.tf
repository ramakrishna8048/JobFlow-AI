# Placeholder Terraform for AWS Lambda
resource "aws_lambda_function" "parser" {
  function_name = "gmail_parser"
  handler       = "gmail_parser.handler"
  runtime       = "python3.9"
}
