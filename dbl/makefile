prepare:
	Rscript PrepareRunningSeason.R ${SEASON}
process:
	Rscript ProcessRunningSeason.R ${SEASON}
travis_checkout_branch:
	./scripts/travischeckoutbranch.sh 
commit_input_files:
	./scripts/commitinputfiles.sh
commit_report_files:
	./scripts/commitreportfiles.sh
travis_push:
	./scripts/travispush.sh
travis_make_site:
	./scripts/travispreparebuildsite.sh
	./scripts/buildsite.sh