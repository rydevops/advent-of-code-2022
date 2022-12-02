init_day: .TEST_DAY_SET
	mkdir ./DAY$(DAY)
	cp application.py ./DAY$(DAY)/application_part1.py
	cp application.py ./DAY$(DAY)/application_part2.py

clean_day: .TEST_DAY_SET
	rm -rf ./DAY$(DAY)

run: .TEST_DAY_SET .TEST_PART_SET
	python3 ./DAY$(DAY)/application_part$(PART).py

.TEST_DAY_SET:
ifndef DAY
	$(error DAY not set, use DAY=# or export DAY=# to set the day)
endif

.TEST_PART_SET:
ifndef PART
	$(error PART not set, use PART=1|2 or export DAY=1|2 to set the day)
endif

.SILENT:
