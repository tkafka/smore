set -x
Threads=1

# download dataset
cp "/Users/kafkat/Desktop/LMC data/jobs.cz/2019 10 market basket recommendations/data/jobs-mba-user-smore.txt" "./jobs-mba-user-smore.txt"

# run smore
../../cli/deepwalk -train jobs-mba-user-smore.txt -save rep_dw.txt -undirected 1 -dimensions 2 -walk_times 1 -walk_steps 40 -window_size 5 -negative_samples 5 -alpha 0.025 -threads $Threads

../../cli/deepwalk -train jobs-mba-user-smore.txt -save rep_dw.txt -undirected 1 -dimensions 64 -walk_times 1 -walk_steps 40 -window_size 5 -negative_samples 5 -alpha 0.025 -threads $Threads
../../cli/walklets -train jobs-mba-user-smore.txt -save rep_wl.txt -undirected 1 -dimensions 64 -walk_times 1 -walk_steps 40 -window_min 2 -window_max 5 -negative_samples 5 -alpha 0.025 -threads $Threads
../../cli/line -train jobs-mba-user-smore.txt -save rep_line1.txt -undirected 1 -order 1 -dimensions 64 -sample_times 10 -negative_samples 5 -alpha 0.025 -threads $Threads
../../cli/line -train jobs-mba-user-smore.txt -save rep_line2.txt -undirected 1 -order 2 -dimensions 64 -sample_times 10 -negative_samples 5 -alpha 0.025 -threads $Threads
../../cli/hpe -train jobs-mba-user-smore.txt -save rep_hpe.txt -undirected 1 -dimensions 64 -sample_times 10 -walk_steps 5 -negative_samples 5 -alpha 0.025 -threads $Threads
