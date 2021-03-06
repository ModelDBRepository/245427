This model was used to generate data from Figures 8-9 of the article.


Cell_0.hoc to cell_4.hoc files described the simplified morphology of DA neurons with an increase in ABD Length and its complexity (nb of secondary dendrites on ABD) from 0 to 4 files. They also contains the conductances for each compartment. 

init_*.hoc files are files of initialization (dt, time of simulation, graph, etc...). They load cell_*.hoc files and then launch the simulation and the analysis. 

variable_length_*.hoc files allow automatic changing in AIS length but also conductances in several compartments.

spike_extract_frequency.hoc calculates the spike frequency after some spikes have been generated and save the trace corresponding to the first spike of the data chunk from which the frequency was analyzed. Here you can specify the number of spikes you want to skip, the number of spikes you want to measure the frequency from and the amount of time before and after the spike you want to record. 

WARNING :
 1/ If the the amount of time before and after the spike you want to record is longer than the inter-spike interval, the program will analyze two spikes as one and the data will be wrong. 
2/ If the number of spike generated during the simulation is less than the number of spikes skipped plus the number of spikes kept, no measurement will occur. So increase the time window. 


Spike_analysis computes the spike characteristics and write them into a file. Here you set the threshold for the first derivative. 

start_linux.sh launches the compilation of mod files and the simulation on linux computer. It doesn't not work on windows. To use it on windows, you need to load the init_* files one by one or to write your own bat file. You also need to compile mod files first. 

As you will note, the above script launches Neuron for each cell and quit it when the analyis of the cell is complete. It means that for each cell the hoc files describing the topology, morphology and biophysics are loaded on a fresh (new) start of NEURON. In doing so, every previous neuron properties will be destroyed preventing potential problems with changes in topology. In addtion, it may help doing parallelization since each cell could be launched independently.

data directory is needed to put the files generated by the program, otherwise they are written in the present one. 


Data from figure 10 were obtained in a similar manner but cell_*.hoc were replaced by files containing the full morphology, topology and biophysics of DA neurons. Conductances were altered as done above but lengths were unchanged. 


On a recent computer (Intel® Xeon(R) CPU E5-2637 v4 @ 3.50GHz × 14 ) and under linux, simulation runs take around 500 seconds each for a dt of 0.02 ms and 1000 seconds for a dt of 0.01 ms (the one used in the study) for a simulated duration of 8000 ms. Paralellization in under progress. 


We apologize in advance for any unseen errors. Please let us know.

fabien.tell@univ-amu.fr

