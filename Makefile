deploy:
	aws cloudformation create-stack --template-body file://cloudformation/2-ec2-instance.yaml --stack-name simple-sinatra-app --parameters file://config/dev.json --capabilities CAPABILITY_IAM

update:
	aws cloudformation update-stack --template-body file://cloudformation/ec2-instance.yaml --stack-name simple-sinatra-app --parameters file://config/dev.json --capabilities CAPABILITY_IAM