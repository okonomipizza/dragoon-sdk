.PHONY: check

check:
	protoc -I api \
		--descriptor_set_out=/tmp/dragoon-sdk-api.pb \
		api/control/v1/control.proto \
		api/agent/v1/agent.proto
