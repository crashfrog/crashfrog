Justin Payne
============


> A scientific toolmaker who deploys into the customer's world.
>
> Specialties: Distributed Systems, Systems Programming, Agent-Assisted Development, Scientific Computing at Scale.

---

(I) Information
---------------
*crashfrog@gmail.com*  
+1 240-899-5786  
San Antonio, Texas (remote)

GitHub Username: [crashfrog](http://github.com/crashfrog)  
This document is hosted at https://github.com/crashfrog/crashfrog/blob/master/cv.md

---

(II) Selected Highlights
------------------------

* **Built and shipped the software backbone of the world's largest genomic biosurveillance network.** As primary software specifications analyst and maintainer for FDA GenomeTrakr and its partner projects, authored the integration-layer architecture that put more than **60,000 bacterial genomes** into public databases, where they remain in continuous use for foodborne outbreak traceback.

* **Deployed bioinformatics platforms into other people's environments — then taught them to run it.** Applications scientist and tool developer for **GalaxyTrakr**, a free, elastic AWS-hosted analysis environment used by state, federal, and international public health laboratories. Ran hands-on training for lab scientists in Maryland, Virginia, and Bangkok, and consulted informally for research groups at agencies worldwide who needed a working pipeline more than a paper.

* **Architected event-driven biosurveillance on serverless cloud infrastructure.** Primary architect and developer of **FDA-GRaSP**, performing high-throughput next-generation sequencing surveillance on AWS Lambda, Step Functions, and Batch against data from GenomeTrakr, Real-Time Listeria/Salmonella, and unassociated global sequencing projects.

* **Writes systems software where the existing tools don't fit.** Author of **phraya**, a pure-Rust pairwise aligner with zero binary dependencies and hand-tuned SIMD, and **sra-rust**, a clean-room reimplementation of NCBI's undocumented SRA/VDB binary format verified byte-for-byte against the reference implementation.

* **Practices agent-assisted development as an engineering discipline, not a novelty.** Recent projects are built issue-driven and test-first, with architectural decision records governing algorithm changes, machine-readable domain glossaries checked into the repository, and adversarial verification agents whose job is to disprove a result before it is reported. Currently consulting with the FDA HFP chemistry program on a multi-agent system that prioritizes new food additives for formal risk assessment across five distinct criteria.

* **Federally recognized.** HHS Innovates Secretary's Pick (2014), Presidential Recognition for the Federal Workforce (2016), and a Federal Laboratory Consortium Interagency Partnership Award (2020) for GenomeTrakr and Pathogen Detection across FDA, NIH, CDC, and USDA.

---


(III) Professional Experience
-----------------------------

|Date                         | Employer (Specialization)     |
|:---------------------------:|------------------------------:|
|``Aug 2018 - Current``       |**FDA Human Foods Program (GS-1550-13)**

**Computer scientist** supporting the **analysis and interpretation of molecular data from next generation DNA sequencing technologies,** and the **development and maintenance of whole-genome pathogen surveillance networks** to aid in the detection, identification, and characterization of microbial food-borne pathogens.

**Primary architect and developer** of FDA-GRaSP (Genomic Research and Surveillance Platform), an FDA initiative to perform event-driven, high-throughput NGS biosurveillance on AWS Serverless resources to support national and international investigation efforts into outbreaks of foodborne illness, using data from FDA GenomeTrakr, Real-Time Listeria/Salmonella, and unassociated sequencing projects around the world.

Primary **applications scientist and tool developer for GalaxyTrakr,** a web-based bioinformatics and biosurveillance analysis environment offered freely to GenomeTrakr partners and other experts in public health and food defense built on a scalable elastic architecture in AWS. Maintainer of the GalaxyTrakr tool catalog and its containerized tool definitions, and author of a **pull-through container cache** that removes the platform's dependence on upstream registry availability at job-launch time.

**Consulting** with the FDA HFP **chemistry** program on **agentic risk-assessment prioritization of food additives** — an orchestration of specialized agents that evaluates new additives along **five distinct risk criteria** and ranks them for formal safety assessment. Each criterion is evaluated independently against its own evidence, and per-criterion findings, citations, and reasoning are retained alongside the combined ranking so that chemistry reviewers can audit how any given priority was arrived at.

Author of **Phraya**, a general-purpose pairwise sequence aligner for bacterial genomics written in **Rust** with **zero binary dependencies** (no BWA, minimap2, samtools, or htslib) and portable SIMD acceleration on AVX2 and NEON. Phraya separates alignment computation from filtering policy — alignments are computed once with full multi-mapping, CIGAR, provenance, and coverage metadata retained, so downstream filtering parameters can be revised without re-alignment. Implemented seed-chaining, a flat-buffer Myers bit-parallel forward pass that eliminates per-column allocation, occurrence-cap masking for repeat-dense genomes, and a content-addressed reference space for reproducible plans; contributed native parsers for AB1/ABIF Sanger traces, SFF, and POD5. Benchmarked continuously against BWA, Bowtie2, and minimap2 on HPC.

Author of **sra-rust**, a from-scratch, pure-Rust reader for NCBI's SRA/VDB file format, implemented without bindings to or linkage against `ncbi-vdb`. Reverse-engineered the KAR container, KDB metadata tree, blob framing and page maps, block-index encodings, and the `izip`/`irzip`/`delta_average_zip` codec family, then implemented a **schema production-graph evaluator** for the computed columns — `READ`, `NAME`, `SPOT_ID`, `READ_LEN` — that the format never physically stores. Decoded output is verified byte-for-byte against `sra-tools vdb-dump`.

Author of **Torchbase**, a framework for reproducible microbial serotyping that packages allele references, profile schemas, and WDL execution workflows into versioned, **cryptographically signed "torches" distributed over IPFS** — addressing the reproducibility gap created by typing databases that mutate silently under their users. Supports multi-scheme torches, hardware-token signing, and four typing strategies (fast MinHash, alignment fallback, full-alignment sensitive, and automatic selection from input characteristics).

Author of the HFP **Data Commons**, shared validation data for surveillance bioinformatics. Includes an automated NCBI-mining pipeline that discovers new ground-truth test cases, semantic LLM-based output validation in place of brittle diffing, and an **adversarial stimulus library** of 22 engineered datasets across 10 phenomenon categories — contamination, extreme GC, high recombination, wrong reference, platform mismatch — backed by a catalog of roughly 150 documented tool failure modes.

Author of **pi.science**, a terminal-based data science agent built as a statistician's research assistant rather than an oracle. Every claim is backed by auditable executable code; every dataframe carries complete lineage (source, acquisition method, transformation code, snapshots) in a **Dolt-backed store with session branching and conflict-aware merge-back**; and causal or predictive claims are routed through an **adversarial verification subagent** that attempts to disprove them before they reach the user.

Author of **tequila-mule**, an OpenAI-compatible inference gateway that provides a persistent LLM endpoint on Slurm-managed HPC clusters despite hard job wall-time limits. Runs overlapping rolling vLLM reservations and rotates backends ahead of scheduler kills so clients never observe a gap; supports independently-rotating multi-model pools with alias routing, health-checked failover, and multi-user API key management, and runs entirely with user-level privileges.

Author of **PeerModel**, a secure capability-based peer-to-peer ORM on OrbitDB, with a signed operation log, CBOR canonical serialization, SQLite index projection with warm incremental sync, and hardware-token signing over **PKCS#11** (YubiKey, and federal PIV/CAC credentials).

Primary developer of **PoreRefiner**, a LIMS integration Linux service for Oxford Nanopore sequencers in a biosurveillance context.

**Consulting developer** of ShigaTyper, an in-silico NGS seroprediction tool for *Shigella sp.*, an important foodborne pathogen.

Maintainer of **binfie-cookiecutter**, the group's project template for bioinformatics tooling, kept current with modern Python packaging and reproducible-environment practice (uv, Pixi, Apptainer, containerized CI).

Serving member of the FDA-HFP **Scientific Computing Board** (SCB).

|Date                         | Employer (Specialization)     |
|:---------------------------:|------------------------------:|
|``Oct 2012 - Apr 2015``      |**FDA-CFSAN-ORS-DM-MMSB (ORAU Fellowship)**
|``Apr 2015 - Aug 2016``      |**FDA-CFSAN-ORS-DM-MMSB (GS-403-11)**
|``Aug 2016 - Aug 2018``      |**FDA-CFSAN-OAO-DB (GS-403-12)**

**Bioinformatician in Microbiology** and **primary software specifications analyst, author, and maintainer** of the FDA-hosted codebase and informatic infrastructure for FDA/State joint **GenomeTrakr Network**, FDA/CDC Real-Time Listeria Genomic Surveillance Project, and FDA-CFSAN/MN/WA/NY Real-Time Salmonella Enteritidis Project, resulting in the deposit of more than 60,000 bacterial genomes into publicly accessible databases. Contributor to testing plans for above.

**Provided bioinformatics system development consultation** on an informal basis to researchers at diverse US and international agencies and groups. Educated workshop attendees in command-line operation of Linux and Mac OS X (desktop, server, and high-performance clusters.) Author of high-performance analysis tools in **C/C++, Python,** and **Java** to **analyze and interpret molecular data from DNA sequencing platforms: Illumina family of sequencers, Pacific Biosciences RSII and Sequel, Ion Torrent PGM, Roche 454, Oxford Nanopore MinION/GridION.**

Utilized High-Performance Computing (HPC) platforms for high-throughput genomic science. **Evaluated over 40 bioinformatics tools and methods for pipeline incorporation and analysis use, determined their relevance to the detection and typing of foodborne pathogens** and to the food safety mission as a whole, and provided local support for their deployment and use.

**Assisted in developing SOP for conducting next-generation genomic analysis of foodborne pathogens.** Primary schema developer for public health biosurveillance applications in **MSSQL, MySQL, Oracle, and Neo4J.**

Developed GenomicsDB database in Microsoft SQL Server for isolate metadata, sequencing scheduling, and high-throughput submission to national biotechnology databases such as NCBI GenBank and NCBI SRA, and **primary schema architect** in the project to migrate this system to Genohm's SLims Genomic Information Management System (GIMS). Developed sra-quick-submit, an easy-to-use NCBI Sequence Read Archive (SRA) submission tool used by researchers around the world to submit their own genomes to the GenomeTrakr project.

|Date                         | Employer               |
|:---------------------------:|-----------------------:|
|``Feb 2012 - Oct 2012``      |**Trojan Defense, LLC**

**Analysis Software Programmer** and primary **Internet of Things architect** developing **distributed nuclear materials monitoring architectures** based on proprietary solid-state radiologic sensor. Specialized in "bare-metal" C/C++ on Atmel-family embedded SoC (Systems on a Chip.) Developed custom evaluation boards based on **Arduino-family system development boards** (Uno rev3, Mini, Mega, Leo, Yun.) Used professional illustration tools (Adobe family, Inkscape) to produce technical illustrations, patent documentation, and marketing materials. Wrote proposals for Small Business Innovation Research (SBIR) grants and RFP responses for DTRA, DoD, DoE, and other Federal agencies.

|Date                         | Employer               |
|:---------------------------:|-----------------------:|
|``May 2005 - Dec 2006``      |**University of Missouri-Columbia/USDA-ARS**

**Biological Field Research Aide (GS-1)** assisting in field studies in agricultural entomology, jointly as an appointment to the USDA-ARS and as an employee of the University of Missouri, Columbia. Developed professional web presence and custom content management system (CMS) using Apache and PHP. Developed laboratory setup and tools for electroantennographic bioassay of _Diabrotica virgifera virgifera_ (western corn rootworm) and _Loxosceles reclusa_ (brown recluse) species for detection of host identification factors. Constructed field study equipment using basic and power carpentry tools. Managed small (3-6 person) groups of fellow assistants. Worked independently to ensure adherence to study protocols.

|Date                         | Employer               |
|:---------------------------:|-----------------------:|
|``Sept 1998 - Jan 2003``     |**Gustavus Adolphus College, Dept. of Information Technologies**

**Tech Support Consultant** providing phone and site-based technical support on Windows 95/98/ME/2000/NT/XP, Mac OS 9/10, and Linux (Debian family, Fedora family, SUSE family) systems for students, staff, and faculty. Wrote training materials.

---



(IV) Technologies
-----------------

**Systems and Languages**

* Rust (SIMD, `no_std`-adjacent binary format work)
* Python
* C/C++ (including bare-metal Atmel)
* TypeScript / JavaScript
* Java
* HTML5 + CSS3
* PHP

**Agent-Assisted Development**

* Claude Code, Claude Agent SDK, agent skills authoring
* Issue-driven, test-first (RED/GREEN) agent workflows
* Worktree-isolated parallel subagent execution
* `AGENTS.md` domain glossaries and architectural decision records (ADRs)
* Adversarial verification agents and LLM-as-judge validation
* Multi-agent orchestration for multi-criteria evaluation and ranking
* vLLM, OpenAI-compatible gateway design, Slurm-scheduled inference

**Workflow and Orchestration**

* WDL / miniwdl
* Nextflow
* Galaxy (tool development, deployment, administration)
* Slurm, Grid Engine, HPC batch systems
* AWS Step Functions, AWS Batch

**Cloud Services**

* AWS EC2
* AWS ECS
* AWS Lambda
* AWS Step Function
* AWS Batch
* AWS Neptune

**Data and Provenance**

* Dolt (versioned SQL)
* IPFS / IPLD, content-addressed distribution
* PostgreSQL, MySQL, SQLite, MSSQL, Oracle
* Neo4J, Tinkerpop
* Parquet, CBOR
* PKCS#11 hardware tokens (YubiKey, PIV/CAC)

**Development Frameworks**

* Django
* Flask
* React.js
* Gunicorn

**Packaging and DevOps**

* Docker
* Apptainer / Singularity
* Pixi, uv, Conda
* GitHub Actions
* Cookiecutter templating

---

(V) Education
-------------
Date              | Degree and Program
-----------------:|:------------------
``2009 - 2012``   |Earned **Bachelor of Science in Biochemistry**, minors in Chemistry and Mathematics, University of Nebraska - Lincoln
``1999 - 2003``   |Studied for Bachelor of Arts in English and Computer Science, Gustavus Adolphus College (on hiatus)
``Aug 1998``      |Certificate of French proficiency, Université Paris-Sorbonne

---

(VI) Projects
-------------

### Current (2025 - 2026)

**Phraya** - General-purpose pairwise sequence aligner for bacterial genomics. Pure Rust, zero binary dependencies, AVX2/NEON SIMD. Deferred-decision architecture: align once, filter repeatedly.  
**sra-rust** - Clean-room pure-Rust reader for NCBI's SRA/VDB binary format, including a production-graph evaluator for schema-computed columns.  
**Torchbase** - Reproducible microbial typing from versioned, cryptographically signed, IPFS-distributed database packages with embedded WDL workflows.  
**HFP Data Commons** - Shared validation data for surveillance bioinformatics, including an adversarial stimulus library targeting known tool failure modes and an automated NCBI case-discovery pipeline.  
**pi.science** - Terminal data science agent with Dolt-backed provenance, session branching, and adversarial claim verification.  
**tequila-mule** - OpenAI-compatible inference gateway backed by rolling vLLM reservations on Slurm HPC; transparent backend rotation under wall-time limits.  
**PeerModel** - Secure capability-based peer-to-peer ORM on OrbitDB with hardware-token signing.  
**Galaxy Pullthrough Cache** - Container cache decoupling GalaxyTrakr job launch from upstream registry availability.  
**HFP Additive Risk Prioritization** - Consulting engagement with the FDA HFP chemistry program: multi-agent orchestration that evaluates new food additives along five risk criteria and prioritizes them for formal assessment, with auditable per-criterion evidence and reasoning.  

### Prior

**GenomeTrakr** - Real-time Surveillance of Food-borne Pathogens : world's largest system for genomic biosurveillance of human pathogens. Developed key integration-layer architecture.  
**FDA-GRaSP** - Event-Driven Biosurveillance platform in the cloud.  
**GalaxyTrakr** - Hosted platform for foodborne pathogen bioinformatics.  
**PoreRefiner** - Sample annotation, sequence monitoring, and event-driven configurable disposition for Oxford Nanopore sequencers in real-time disease biosurveillance.  
**CFSAN SNP Pipeline 2** - Population-structure elucidation from genomic sequencing.  
**ShigaTyper** - Shigella genoserotyping from whole-genome sequencing.  
**GIMS** - Genomic Information Management System : a web-based LIMS and file-hosting repository combining rigorous lab activity tracking with rich sample tracking and semantic linking, with links to bioinformatics analysis systems and HPC.  
**Sra-quick-submit** - Rapid SRA submission generation for GenomeTrakr contributors. Currently in world-wide use.  
**Sif** - Sequence Information Finder : a suite of command-line utilities for quick and easy lookups in the FDA-CFSAN GenomicsDB. Named after a cat.  
**Watchos Grande** - Lightweight process-heartbeat tracking in a Flask/Gunicorn app.  
**Bootsie** - Bootstrap Analysis of RFLP : a Java-based biostatistics utility used by UNL and USDA-ARS entomologists to analyze population structure. Includes a suite of file-conversion utilities.  
**TableBlep** - Peer-to-peer distributed virtual 3D game tabletop with physics. JavaScript, IPFS/Textile, three.js, cannon.js. Also named after cats.  

---

(VII) Selected Repositories
---------------------------

https://github.com/CFSAN-Biostatistics/phraya  
https://github.com/CFSAN-Biostatistics/sra-rust  
https://github.com/CFSAN-Biostatistics/torchbase  
https://github.com/CFSAN-Biostatistics/data-commons  
https://github.com/crashfrog/pi-dot-science  
https://github.com/crashfrog/tequila-mule  
https://github.com/CFSAN-Biostatistics/porerefiner  
https://github.com/crashfrog/binfie-cookiecutter  

---

(VIII) Publications
-------------------

1. **Justin Payne**, Erica Lindroth, Kate Kneeland, Steven R. Skoda, Fatima Mustafa, Muhammad Irfan Ullah, John E. Foster. *Bootsie - Estimation of Coefficient of Variation of AFLP Data by Bootstrap Analysis.* Pak. Entomol. 36(2):79-81

1. Marc Allard, Tim Muruvanda, Errol Strain, Ruth Timme, Yan Luo, Charles Wang, Christine Keys, **Justin Payne**, Tony Cooper, Khai Luong, Yi Song, Chen-Shan Chin, Jonas Korlach, Richard Roberts, Peter Evans, Steven Musser, and Eric Brown. *A fully assembled genome sequence for Salmonella Javiana strain CFSAN001992.* Genome Announc. 2013 Mar 21;1(2):e0008113.

1. Narjol González-Escalona, Melinda McFarland, Lydia Rump, **Justin Payne**, Denis Andrzejewski, Eric Brown, Peter Evans, and Timothy Crowley. *Draft genome sequences of two O104:H21 Escherichia coli isolates causing hemorrhagic colitis during an outbreak in Montana in 1994 provide insight into their pathogenicity.* Genome Announc. 2013 Oct 3;1(5). pii: e00805-13.

1. Maria Hoffmann, Tim Muruvanda, Marc Allard, Jonas Korlach, Richard Roberts, Ruth Timme, **Justin Payne**, Patrick McDermott, Peter Evans, Jianghong Meng, Eric Brown, and Shaohua Zhao. *Complete Genome Sequence of a Multidrug-Resistant Salmonella enterica Serovar Typhimurium var. 5- Strain Isolated from Chicken Breast.* Genome Announc. 2014 Apr 3;2(2). pii: e00294-14

1. Julie Haendiges, Ruth E. Timme, Marc Allard, Robert Myers, **Justin Payne**, Eric Brown, Peter Evans, and Narjol González-Escalona. *Draft genomes of clinical Vibrio parahaemolyticus strains isolated in Maryland (2010-2013).* Genome Announc. 2014 Aug 7;2(4). pii: e00776-14.

1. Maria Hoffmann, Tim Muruvanda, Cary Pirone, Jonas Korlach, Ruth Timme, **Justin Payne**, Peter Evans, Jianghong Meng, Eric Brown, and Marc Allard. *First Fully Assembled Genome Sequence of Salmonella enterica Serovar Cubana associated with a Multistate Outbreak in the United States.* Genome Announc. October, 2014.

1. Cary Pirone-Davies, Maria Hoffmann, Richard J. Roberts, Tim Muruvanda, Ruth Timme, Errol Strain, Yan Luo, **Justin Payne**, Khai Luong, Yi Song, Yu-Chih Tsai, Matthew Boitano, Tyson Clark, Jonas Korlach, Peter Evans, Marc Allard. *Genome-wide methylation patterns in Salmonella enterica subsp. enterica serovars.* PLoS ONE 10(4): e0123639. doi:10.1371/journal.pone.0123639

1. Guojie Cao, Marc Allard, Maria Hoffmann, Steven Monday, Tim Muruvanda, Yan Luo, **Justin Payne**, Lydia Rump, Kevin Meng, Shaohua Zhao, Patrick McDermott, Eric Brown, and Jianghong Meng. *Complete Sequences of Six IncA/C Plasmids of Multidrug-Resistant Salmonella Newport.* Genome Announc. February, 2015.

1. Maria Hoffmann, **Justin Payne**, Richard Roberts, Marc Allard, Eric Brown, and James Pettengill. *Complete Genome Sequence of Salmonella enterica Serovar Agona 460004 2-1 Associated with a Multi-State Outbreak in the United States.* Genome Announc. July, 2015.

1. Hua Wang, Yi Chen, Sherry Ayers, David Melka, Anna Maounounen-Laasri, **Justin Payne**, Jie Zheng, Insook Son, Ruth Timme, George Kastanis, Thomas Hammack, Errol Strain, Marc Allard, Peter Evans, and Eric Brown. *Draft Genome Sequence of Salmonella enterica subsp. enterica Serovar Give Isolated from an Imported Chili Powder Product.* Genome Announc. July, 2015.

1. Emily Pettengill, Maria Hoffmann, Rachel Binet, Richard J. Roberts, **Justin Payne**, Marc Allard, Valeria Michelacci, Fabio Minelli and Stefano Morabito. *Complete Genome Sequence of Enteroinvasive Escherichia coli O96:H19 Associated with a Severe Food-borne Outbreak.* Genome Announc. August, 2015.

1. Steve Davis, James B Pettengill, Yan Luo, **Justin Payne**, Al Shpuntoff, Hugh Rand, and Errol Strain. *CFSAN SNP Pipeline: an automated method for constructing SNP matrices from next-generation sequence data.* [PeerJ Computer Science 1:e20](https://dx.doi.org/10.7717/peerj-cs.20), 2015.

1. Kuan Yao, Tim Muruvanda, Richard Roberts, **Justin Payne**, Marc Allard, and Maria Hoffmann. *Complete Genome and Methylome Sequences of two Salmonella enterica species.* Genome Announc. January, 2016.

1. Kuan Yao, Tim Muruvanda, Richard Roberts, **Justin Payne**, Marc Allard, and Maria Hoffmann. *Complete Genome and Methylome Sequences of Salmonella Panama ATCC 7378 and Salmonella Sloterdijk ATCC 15791.* Genome Announc. February, 2016.

1. Hua Wang, Jie Zheng, Sherry Ayers, David Melka, Phillip Curry, **Justin Payne**, Anna Maounounen-Laasri, Charles Wang, Thomas Hammack, and Eric Brown. *Draft Genome Sequences of Salmonella enterica subsp. enterica Serovar Typhimurium and Serovar Nottingham Isolated from Food Products.* Genome Announc. August, 2016.

1. Fernanda Almeida, Marta Inês Medeiros, Dália Rodrigues, **Justin Payne**, Ruth Timme, Marc Allard, and Juliana Falcão. *Draft Genome Sequences of 40 Salmonella Typhimurium isolated from humans and food in Brazil.* Genome Announc. October, 2016.

1. Yi Chen, Laurel Burall, Yan Luo, Ruth E. Timme, David Melka, Tim Muruvanda, **Justin Payne**, Charles Wang, George Kastanis, Anna Maounounen-Laasri, Antonio J. De Jesus, Phillip E. Curry, Robert Stones, Okumu Kalouch, Eileen Liu, Monique Salter, Thomas Hammack, Peter S. Evans, Mickey Parish, Marc Allard, Atin Datta, Errol Strain, and Eric W. Brown. *Listeria monocytogenes in Stone Fruits Linked to a Multistate Outbreak: Enumeration of Cells and Whole-Genome Sequencing.* Applied and Environmental Microbiology, 82(24):AEM.01486-16. December, 2016.

1. Guojie Cao, Marc Allard, Maria Hoffmann, Tim Muruvanda, Yan Luo, **Justin Payne**, Kevin Meng, Shaohua Zhao, Patrick McDermott, Eric Brown, and Jianghong Meng. *Sequence Analysis of IncA/C and IncI1 Plasmids Isolated from Multidrug-Resistant Salmonella Newport Using Single-Molecule Real-Time Sequencing.* Foodborne Pathogens and Disease, https://doi.org/10.1089/fpd.2017.2385 . April, 2018.

1. Yun Wu, Henry K. Lau, Teresa Lee, David K. Lau, **Justin Payne.** *In Silico Serotyping Based on Whole-Genome Sequencing Improves the Accuracy of Shigella Identification.* Appl Environ Microbiol. 2019 March 22.

1. John Miller, Bart Weimer, Ruth Timme, Catharina Lüdeke, James Pettengill, DJ Bandoy, Allison Weis, James Kaufman, Bihua Huang, **Justin Payne**, Errol Strain, Jessica Jones. *Phylogenetic and Biogeographic Patterns of Vibrio parahaemolyticus from North America Inferred from Whole Genome Sequence Data.* Applied and Environmental Microbiology, 2020.

1. Hugh Rand, Daniel Benisatto, **Justin Payne**, Charles Strittmatter, Jayanthi Gangiredla, Jimmy Sanders, William Wolfgang, Kevin Libuit, James Herrick, Melanie Prarat, Thomas Farrell, Errol A Strain. *GalaxyTrakr: A Distributed Analysis Tool for Public Health Whole Genome Sequence Data Accessible to Non-Bioinformaticians.* BMC Genomics, 2021.

---

(IX) Seminars and Presentations
-------------------------------

1. **Justin Payne**. *GalaxyTrakr - Bioinformatics Collaboration in the Cloud.* CDC PulseNet Asia-Pacific All-Partners Meeting. Bangkok, Thailand. Nov 2023.

1. Charles Strittmatter, Jayanthi Gangiredla, **Justin Payne**. *APHL/FDA-CFSAN/JIFSAN-IFSTL GenomeTrakr - Bioinformatics for Foodborne Pathogens using GalaxyTrakr.* (participated as bioinformatics workshop instructor.) College Park MD and online. Oct 2020.

1. Kevin Libuit, Jimmy Sanders, **Justin Payne.** *DCLS Introductory Bioinformatics Training using GalaxyTrakr.* Workshop presented by DCLS, Richmond, VA. April 2019.

1. Alden Estep, Ian Sutherland, Dominic Ladmirault, Neil Sanscrainte, James Becnel, **Justin Payne**, Erica Lindroth. *Sea Raven: Mobile Sequencing in the US Navy.* Poster presented at SFAF, Santa Fe, NM. May 2018.

1. Eric Stevens, **Justin Payne**, Ruth E. Timme, Sabina Lindley. *FDA-CFSAN/JIFSAN-IFSTL Whole Genome Sequencing Course.* (participated as bioinformatics workshop instructor.) College Park MD. (workshop) Sept 2016.

1. Eric Stevens, **Justin Payne**, Bill Klimke, James Pettengill, Ruth E. Timme, Charles Wang, Karen Jarvis, Eija Trees, Heather Carleton. *FDA-CFSAN/JIFSAN-IFSTL Whole Genome Sequencing Course.* (participated as bioinformatics workshop instructor.) College Park MD. (workshop) Sept 2015.

1. Eric Stevens, **Justin Payne**, Bill Klimke, James Pettengill, Ruth E. Timme, Magaly Toro, Marc Allard, Andrea Ottesen, James Robert White, Karen Jarvis, Eija Trees, Heather Carleton. *FDA-CFSAN/JIFSAN-IFSTL Whole Genome Sequencing Pilot Course.* (participated as bioinformatics workshop instructor.) College Park MD. (workshop) March 2015.

1. Muruvanda, T., Pirone, C., Hoffmann, M., Allard, M. W., Wang, C., Strain, E., Timme, R., Luo, Y., Keys, C. E., **Payne, J.**, Luong, K., Song, Y., Chin, C., Korlach, J., Roberts, R. J., Musser, S. M., Evans, P. & Brown, E. W. *New discoveries in Salmonella genomes closure.* 114th American Society for Microbiology Annual Meeting, Boston, MA, USA, (May, 2014). AND 4th Annual FDA Foods & Vet Medicine Science and Research Conference, White Oak, MD. July, 2014. AND Next-generation sequencing (NGS) technology, data formats standardization and promotion of interoperability protocols, Bethesda, MD, USA (September, 2014)

1. Allard, M. W., Pirone, C., Muruvanda, T., Hoffmann, M., Soler-García, A., Wang, C., Strain, E., Timme, R., **Payne, J.**, Luo, Y., Keys, C. E., Ferreira, C., Chin, C., Korlach, J., Musser, S. M., Zhao, S., Stones, R., Roberts, R. J., Evans, P., and Brown, E. W. *New discoveries from closing Salmonella genomes using Pacific Biosciences continuous long reads.* 15th Advances in Genome Biology and Technology Meeting (AGBT), Marco Island, FL, USA (2014). AND 4th Annual FDA Foods & Vet Medicine Science and Research Conference, White Oak, MD. July, 2014.

1. Marc Allard, Ruth E. Timme, Peter Evans, Marc W. Allard, Errol Strain, Charles Wang, George Kastanis, **Justin Payne**, Christine Keys, Steve Musser, Eric Brown. *Integration of NGS Desktop Sequencers to Build a Global Genomic Network for Pathogen Trace-back and Outbreak Detection.* College Park MD. June 2014.

1. Ruth E. Timme, Peter Evans, Marc W. Allard, Errol Strain, **Justin Payne**, Christine Keys, Steve Musser. *FDA GenomeTrakr: building an international public health lab network for foodborne pathogen tracking.* Sequencing, Finishing, and Analysis in the Future, Santa Fe, NM May 2014.

---

(X) Scientific and Technical Training
-------------------------------------

* **February 2012** - Next-gen Sequencing and Bioinformatics, Institute for Genome Sciences, University of Maryland, Baltimore
* **June 2013** - PacBio User Group Meeting and Bioinformatics Workshop 2013, IGS, UMD Baltimore
* **May 2014** - NGS Typing of Bacterial Pathogens, American Society for Microbiology General Meeting 2014, Boston
* **June 2014** - PacBio User Group Meeting and Bioinformatics Workshop 2014, IGS, UMD Baltimore
* **June 2015** - PacBio User Group Meeting and Bioinformatics Workshop 2015, IGS, UMD Baltimore
* **May 2019** - Building Command-Line Interfaces that Click, PyCon 2019, Cleveland

---

(XI) Honors and Awards
----------------------

* 2011 - Best Class Presentation, Protein Engineering, University of Nebraska, Lincoln
* 2014 - HHS Innovates Awards, Secretary's Pick for "Whole Genome Sequencing: Future of Food Safety"
* 2015 - NCBI Hackathon, "Genius Mole People who code in Java" recipient
* 2016 - Presidential Recognition, "Celebrating America's Federal Workforce", 2016 Honors
* 2020 - Federal Lab Consortium, Technology Transfer Interagency Partnership Award "GenomeTrakr and Pathogen Detection" (FDA/NIH/CDC/USDA)

---

(XII) Scientific Conferences and Meetings
-----------------------------------------

1. **October 2024** *GenomeTrakr Meeting*, College Park MD
1. **October 2024** *ASM-NGS*, Washington DC
1. **October 2024** *ASM NGS Hackathon*, Bethesda MD
1. **November 2023** *PulseNet Asia-Pacific All-Partners*, Bangkok, Thailand
1. **October 2022** *GenomeTrakr Meeting*, College Park MD
1. **October 2022** *ASM-NGS*, Baltimore MD
1. **November 2020** *ASM NGS Hackathon*, Zoom, Earth
1. **April 2020** *Micro Binfie Virtual Conference*, Zoom, Earth
1. **May 2019** *Sequencing, Finishing, and Analysis in the Future*, Santa Fe NM
1. **May 2019** *PyCon*, Cleveland OH
1. **May 2018** *Sequencing, Finishing, and Analysis in the Future*, Santa Fe NM
1. **September 2017** *Next Generation Sequencing Network for Food Pathogen Traceability Meeting #3*, College Park MD
1. **September 2017** *American Society for Microbiology, Next-Gen Sequencing Pipelines*, Washington DC
1. **August 2017** *Scientific Python Conference*, Austin TX
1. **June 2017** *Sequencing, Finishing, and Analysis in the Future*, Santa Fe NM
1. **June 2016** *Sequencing, Finishing, and Analysis in the Future*, Santa Fe NM
1. **September 2015** *American Society for Microbiology, Next-Gen Sequencing Pipelines (ASM-NGS)*, Washington DC
1. **September 2015** *Next Generation Sequencing Network for Food Pathogen Traceability Meeting #2*, Washington DC
1. **August 2015** *NCBI Hackathon*, Bethesda MD
1. **June 2015** *Sequencing, Finishing, and Analysis in the Future*, Santa Fe NM
1. **September 2014** *Real-Time Genome Sequencing Surveillance Multi-Agency Collaboration 2014*, Washington DC
1. **April 2014** *American Society for Microbiology General Meeting 2014*, Boston
1. **September 2013** *Next Generation Sequencing Network for Food Pathogen Traceability Meeting #1*, Baltimore MD

---

(XIII) References
-----------------

* Dr. Errol Strain - Senior Science Advisor, FDA-HFP, Laurel MD, (240) 402-2815 *errol.strain@fda.hhs.gov*
* Dr. Marc W. Allard - Research Microbiologist, FDA-HFP, College Park MD, (240) 402-2941 *marc.allard@fda.hhs.gov*
* Dr. M. Scott Doerrie - Senior Staff in Formal Methods, JHU Applied Physics Lab, Baltimore, MD (240) 592-0331 *doerrie@gmail.com*
* Ben Follis - Principal Architect, Adobe Inc., *ben@follis.net*
