STACK_NAME = s3-bucket-stack
TEMPLATE_FILE = s3-bucket.yaml

deploy:
	aws cloudformation create-stack --stack-name $(STACK_NAME) --template-body file://$(TEMPLATE_FILE)

delete:
	aws cloudformation delete-stack --stack-name $(STACK_NAME)

status:
	aws cloudformation describe-stacks --stack-name $(STACK_NAME) --query 'Stacks[0].StackStatus'