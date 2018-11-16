prepare:
	Rscript PrepareRunningSeason.R ${SEASON}
process:
	Rscript ProcessRunningSeason.R ${SEASON}
travis_check_out_branch:
	./scripts/travischeckoutbranch.sh 
commit_input_files:
	./scripts/commitinputfiles.sh 
push_changes:
	./scripts/push.sh