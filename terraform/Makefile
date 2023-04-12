SSH_FILENAME=ssh/site-walmir-dev

setup:
	test -f .env || cp .env.example .env;
	@ test -f ~/.${SSH_FILENAME} || ssh-keygen -q -v -C "`git config user.email`" -f ~/.${SSH_FILENAME};
	cp ~/.${SSH_FILENAME}.pub ${SSH_FILENAME}.pub;

init:
	@. .env && terraform init -backend-config="conn_str=$${PG_CONNECTION_STRING}";

plan:
	TF_VAR_ssh_public_key_content="`cat ssh/site-walmir-dev.pub`" terraform plan;
