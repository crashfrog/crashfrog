#PMAP Progress Jan 2016

Individual Performance Outcomes
===============================

1) Research

*not rated.*

2) Lab Analysis

*Ensures rapid and automated movement of PR066 (RTLM) and other high-priority isolate sequences to NCBI-SRA.*

	Post GIMS-deployment, SRA data now uploads several times a day.
	
3) Methods Development and Validation

*GIMS Implementation Phase 1*

	Basespace Integration: live in production.
	
	NextSeq Integration: live in production; currently shaking out bugs in our first Nextseq run.
	
	Sequence QC/QA Analysis: live in production.
	
	NCBI Submission: SRA and BioSample submissions live in production. Improvements planned.
	
*GIMS Implementation Phase 2*

	NCBI Accession capture: live in production. Currently a 20-hour lag between submission and accession capture due to NCBI not cleaning out old submission files. We expect this to drop to a couple of minutes or maybe an hour when they implement submission cleanup.
	
	Assembly pipeline: Assembly metadata was imported during go-live; assembly file data import in development. SLims assembly pipeline under active development.
	
	SLims reporting: live in production.
	
	PacBio network integration: Tim and Michael Long are mostly handling this, but I've been consulting and evaluating their proposals. Sci IT's sort of been dragging their feet.
	
	RNA-Seq data integration: No progress to report.
	
	Metagenomics data integration: Current SLims data model should transparently support metagenomic data, and support for non-isolate sequence data is being built into all SLims pipelines. Horizon goal for us, when the system is more mature and stable.
	
*Integrate with Submission Portal 2.0 API*

	SRA and BioSample submission currently supported. BioProject and PGAP submission in progress. WGS submission was enabled by NCBI but until we have assemblies in SLims there's nothing yet to submit.
	
*Metagenomic pipeline*

	Scope determination and functional specification discussions with Dr. Ottesen and metagenomics pipeline developer Padmini Ramachandran to begin soon.
	
4) Consultative Services

*WGS Submission*

*Bioinformatics*

	Led 1-day bioinformatics tools workshops during FDA/JIFSAN whole genome sequencing seminars in March and October.
	

5) Communications

*Conference attendance*

7. **September 2015** *American Society for Microbiology, Next-Gen Sequencing Pipelines*, Washington DC
6. **September 2015** *Next Generation Sequencing Network for Food Pathogen Traceability Meeting #2*, Washington DC
5. **August 2015** - *NCBI Hackathon*, Bethesda
4. **June 2015** - *Sequencing, Finishing, and Analysis in the Future*, Santa Fe

*Technical Contributions*

	I've appeared as co-author on a number of publications in 2015:

6. Cary Pirone-Davies, Maria Hoffmann, Richard J. Roberts, Tim Muruvanda, Ruth Timme, Errol Strain, Yan Luo, **Justin Payne**, Khai Luong, Yi Song, Yu-Chih Tsai, Matthew Boitano, Tyson Clark, Jonas Korlach, Peter Evans, Marc Allard. *Genome-wide methylation patterns in Salmonella enterica subsp. Enterica serovars.* PLoS ONE 10(4): e0123639. doi:10.1371/journal.pone.0123639

8. **Justin Payne**, Erica Lindroth, Kate Kneeland, Steven R. Skoda, Fatima Mustafa, Muhammad Irfan Ullah, John E. Foster. *Bootsie - Estimation of Coefficient of Variation of AFLP Data by Bootstrap Analysis.* Pak. Entomol. 36(2):79-81

7. Guojie Cao, Marc Allard, Maria Hoffmann, Steven Monday, Tim Muruvanda, Yan Luo, **Justin Payne**, Lydia Rump, Kevin Meng, Shaohua Zhao, Patrick McDermott, Eric Brown, and Jianghong Meng. *Complete Sequences of Six IncA/C Plasmids of Multidrug-Resistant Salmonella Newport.* Genome Announc. February, 2015.

9. Maria Hofmann, **Justin Payne**, Richard Roberts, Marc Allard, Eric Brown, and James Pettengill. *Complete Genome Sequence of Salmonella enterica Serovar Agona 460004 2-1  Associated with a Multi-State Outbreak in the United States.* Genome Announc. July, 2015.

10. Hua Wang, Yi Chen, Sherry Ayers, David Melka, Anna Maounounen-Laasri, **Justin Payne**, Jie Zheng, Insook Son, Ruth Timme, George Kastanis, Thomas Hammack, Errol Strain, Marc Allard, Peter Evans, and Eric Brown. *Draft Genome Sequence of Salmonella enterica subsp. enterica Serovar Give Isolated from an Imported Chili Powder Product.* Genome Announc. July, 2015.

11. Emily Pettengill, Maria Hoffman, Rachel Binet, Richard J. Roberts, **Justin Payne**, Marc Allard, Valeria Michelacci, Fabio Minelli and Stefano Morabito. *Complete Genome Sequence of Enteroinvasive **Escherichia coli** O96:H19 Associated with a Severe Food-borne Outbreak.* Genome Announc. August, 2015.

12. Steve Davis, James B Pettengill, Yan Luo, **Justin Payne**, Al Shpuntoff, Hugh Rand, and Errol Strain. *CFSAN SNP Pipeline: an automated method for constructing SNP matricies from next-generation sequence data.* [PeerJ Computer Science 1:e20](https://dx.doi.org/10.7717/peerj-cs.20), 2015.

13. Kuan Yao, Tim Muruvanda, Richard Roberts, **Justin Payne**, Marc Allard, and Maria Hoffman. *Complete Genome and Methylome Sequences of two Salmonella enterica species.* Genome Announc. January, 2016.


	Posters on which I've appeared:
	
1.  Marc W. Allard, Charles Wang, George Kastanis, Tim Muruvanda, Cary Pirone, Errol Strain, Hugh Rand, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  *GenomeTrakr: A Pathogen Database to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.*  Univ. of Vermont, Burlington, VT, (seminar) Nov., 2015

2. Marc W. Allard, Charles Wang, George Kastanis, Tim Muruvanda, Cary Pirone, Errol Strain, Hugh Rand, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  *GenomeTrakr: A Pathogen Database to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.* 1st ASM Conference on Rapid Next-Generation Sequencing and Bioinformatic Pipelines for Enhanced Molecular Epidemiologic Investigation of Pathogens Washington DC, (seminar) Sept., 2015.

3.  Marc W. Allard, Charles Wang, George Kastanis, Tim Muruvanda, Cary Pirone, Errol Strain, Hugh Rand, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  *GenomeTrakr: A Pathogen Database to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.*  Georgetown Univ., College Park, MD, (seminar) Sept., 2015

4. M. W. Allard,  P. Evans, E. Strain, R. Timme, **J. Payne**, Hugh Rand, E. W. Brown and S. M. Musser.  *Whole genome sequencing for ORA and state regulators.* 3rd Annual FDA Scientific Computing Day, White Oak, MD (seminar and poster) Sept., 2015

222.  M. W. Allard,  P. Evans, E. Strain, R. Timme, **J. Payne**, Hugh Rand, E. W. Brown and S. M. Musser.  *Whole genome sequencing for ORA and state regulators.* Genetics and Genomics Team, White Oak, MD (seminar) Sept., 2015

221.  M. W. Allard,  P. Evans, E. Strain, R. Timme, **J. Payne**, Hugh Rand, E. W. Brown and S. M. Musser.  *Whole genome sequencing for ORA and state regulators.* CFSAN Office Director briefing, College Park MD (seminar) August, 2015

220.  Marc W. Allard, Charles Wang, George Kastanis, Tim Muruvanda, Cary Pirone, Errol Strain, Hugh Rand, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  *GenomeTrakr: A Pathogen Database to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.*  Fifth Annual FDA Foods and Veterinary Medicine Conference, White Oak, MD, (seminar and poster) August, 2015

219.  Marc W. Allard, Charles Wang, George Kastanis, Tim Muruvanda, Cary Pirone, Errol Strain, Hugh Rand, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  *GenomeTrakr: A Pathogen Database to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.*  FVM Research Day, White Oak, MD, (seminar and poster) July 2015

217.  M. W. Allard, C. Wang, G. Kastanis, Tim Muruvanda, C. Pirone-Davies,  E. Strain, R. Timme, **J. Payne**, Y. Luo, A. Ottesen, S. M. Musser, D. Melka, P. Evans, and E. W. Brown. *GenomeTrakr: A Pathogen Databases to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.* FERN meeting Portland OR (seminar) July 2015

215.  M. W. Allard,  P. Evans, E. Strain, R. Timme, **J. Payne**, Hugh Rand, E. W. Brown and S. M. Musser. *FSMA Chat: Whole genome sequencing for ORA and state regulators.* FSMA Chat, College Park MD (webex, seminar) July 2015

210.  M. W. Allard, C. Wang, G. Kastanis, C. Pirone, Tim Muruvanda, E. Strain, R. Timme, **J. Payne**, Y. Luo, Narjol Gonzalez-Escalona, Magaly ToroIbaceta, A. Ottesen, D. Melka, P. Evans, S. M. Musser and E. W. Brown. *GenomeTrakr: A Pathogen Databases to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.* IAFP Portland OR (poster) July 2015

205.  M. W. Allard, C. Wang, G. Kastanis, C. Pirone, E. Strain, R. Timme, **J. Payne**, Y. Luo, A. Ottesen, S. M. Musser, D. Melka, P. Evans, and E. W. Brown.  Food and Drug Administration, College Park MD USA. *GenomeTrakr: A Pathogen Databases to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.* FDA Science Forum. (seminar) May 2015.

204.  M. W. Allard, C. Wang, G. Kastanis, C. Pirone, E. Strain, R. Timme, **J. Payne**, Y. Luo, A. Ottesen, S. M. Musser, D. Melka, P. Evans, and E. W. Brown.  Food and Drug Administration, College Park MD USA.  *GenomeTrakr: A Pathogen Databases to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.* ASM general meeting (Poster) May 2015.

203.  Marc Allard, Peter Evans, Errol Strain, Ruth Timme, **Justin Payne**, Hugh Rand, and Eric Brown. *Whole Genome Sequencing - A New Approach for Pathogen Source Tracking.* Nestle Workshop on Whole-genome sequencing for pathogenic strain characterization, Lausanne, Switzerland (seminar) May. 2015.

200.  Marc W. Allard, Charles Wang, George Kastanis, Cary Pirone, Tim Muruvanda, Errol Strain, Ruth Timme, **Justin Payne**, Yan Luo, Narjol Gonzalez-Escalona, Magaly ToroIbaceta, Andrea Ottesen, David Melka, Peter Evans, Steven M. Musser, and Eric W. Brown.  *GenomeTrakr: a pathogen databases to build a global genomic network for pathogen traceback and outbreak detection.* FDA Technology Transfer Workshop, White Oak Campus MD, (Seminar), March. 2015.

199.  Marc W. Allard, Charles Wang, George Kastanis, Cary Pirone, Tim Muruvanda, Errol Strain, Ruth Timme, **Justin Payne**, Yan Luo, Narjol Gonzalez-Escalona, Magaly ToroIbaceta, Andrea Ottesen, David Melka, Peter Evans, Steven M. Musser, and Eric W. Brown.  *GenomeTrakr: a pathogen databases to build a global genomic network for pathogen traceback and outbreak detection.* Current methods and tools for analysis of foodborne pathogen genomes: A One day workshop for GenomeTrakr participants, Univ. of Maryland, JIFSAN, College Park MD. (Seminar), March. 2015.

198.  M. W. Allard, C. Wang, G. Kastanis, C. Pirone, Tim Muruvanda, E. Strain, R. Timme, **J. Payne**, Y. Luo, Narjol Gonzalez-Escalona, Magaly ToroIbaceta, A. Ottesen, D. Melka, P. Evans, S. M. Musser and E. W. Brown.  Food and Drug Administration, College Park MD USA. *GenomeTrakr: A Pathogen Databases to Build a Global Genomic Network for Pathogen Traceback and Outbreak Detection.*  Workshop on Emerging Approaches for Typing, Detection, and Characterization of Escherichia coli Penn State, PA March 2015 (seminar).

197.  Marc Allard, Eric Brown, Peter Evans, Errol Strain, **Justin Payne**, Hugh Rand, Ruth Timme.  *FDA-CFSAN whole genome sequencing program.* IFSH meeting, Whole genome sequencing for food safety – opportunities and applications to the food industry. IL (seminar) March 2015.

196.  Marc Allard, Ruth Timme*, Peter Evans, Errol Strain, **Justin Payne**, Hugh Rand, and Eric Brown. *Whole Genome Sequencing - A New Approach for Pathogen Source Tracking.* CDER Office of Clinical Pharmacology, (seminar) Feb. 2015.

193.  Marc W. Allard, Charles Wang, George Kastanis, Cary Pirone, Errol Strain, Ruth Timme, **Justin Payne**, Yan Luo, Andrea Ottesen, Steven M. Musser, David Melka, Peter Evans, and Eric W. Brown.  Food and Drug Administration, College Park MD USA.  *GenomeTrakr: a pathogen databases to build a global genomic network for pathogen traceback and outbreak detection.* AGBT meetings, (Poster), Marco Is. FL, Feb. 2015.
