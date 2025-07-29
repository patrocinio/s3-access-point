STACK_NAME = s3-access-point-stack
TEMPLATE_FILE = s3-access-point.yaml

deploy:
	aws cloudformation create-stack --stack-name $(STACK_NAME) --template-body file://$(TEMPLATE_FILE)

update:
	aws cloudformation update-stack --stack-name $(STACK_NAME) --template-body file://$(TEMPLATE_FILE)

delete:
	aws cloudformation delete-stack --stack-name $(STACK_NAME)

status:
	aws cloudformation describe-stacks --stack-name $(STACK_NAME) --query 'Stacks[0].StackStatus'