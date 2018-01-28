ansible-log="ansible-common.log"

default: test syntax-check
test: check-ansible-warnings check-idempotence syntax-check clean 
	./test-common.sh
syntax-check:
	pi-build-tools init-ansible-config ..
	cd .. && ansible-playbook playbooks/configure-common.yml -i tests/inventory --syntax-check
	rm ../ansible.cfg
check-idempotence:
	./test-idempotence.sh common
check-ansible-warnings:
	./test-ansible-warnings.sh ../tests-setup/docker $(ansible-log)
check-lint:
	ansible-lint ../playbooks/configure-common.yml;\
	for role in ../roles/*;\
	do \
	    ansible-lint $$role;\
	done
clean:
	if [ -d test-out ]; then rm -rf test-out ; fi
	if [ -f ../ansible.cfg ]; then rm ../ansible.cfg ; fi
