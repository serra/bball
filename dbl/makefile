prepare:
	Rscript PrepareRunningSeason.R
process:
	Rscript ProcessRunningSeason.R ${SEASON}
commit_input_files:
	./scripts/commitinputfiles.sh 
push_changes:
	./scripts/push.sh