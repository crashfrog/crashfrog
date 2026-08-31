Justin Payne
============

> A scientific toolmaker who deploys into the customer's world.
>
> Distributed Systems · Systems Programming · Agent-Assisted Development · Scientific Computing at Scale

*crashfrog@gmail.com* · +1 240-899-5786 · San Antonio, TX (remote) · [github.com/crashfrog](https://github.com/crashfrog)

---

Professional Summary
---------------------

I build the software that public health laboratories actually run. For a decade at the FDA I've been one of the primary developers of **GenomeTrakr**, the world's largest genomic biosurveillance network — the integration-layer architecture I authored has moved more than 1.8 million sequenced isolate genomes into public databases, where they're still used to trace foodborne outbreaks back to their source. The rest of the time I write systems software for problems the existing tools don't cover, and increasingly I do both issue-driven and test-first, with agents doing the typing.

---

Experience
----------

|Date                   | Employer                                                |
|:----------------------|---------------------------------------------------------:|
|Aug 2018 – Current      | **FDA Human Foods Program** — Computer Scientist (GS-1550-13), Laurel MD |

Primary architect of **FDA-GRaSP**, an event-driven, high-throughput NGS biosurveillance platform on AWS Serverless, and primary applications scientist for **GalaxyTrakr**, a free elastic-AWS bioinformatics environment used by state, federal, and international public health partners — landing in someone else's environment, making the pipeline work there, and teaching their scientists to run it themselves, in Maryland, Virginia, and Bangkok. Consults for FDA HFP chemistry on an agentic multi-criteria risk-prioritization system for food additives. Author of **phraya** (zero-dependency Rust pairwise aligner), **sra-rust** (clean-room reader for NCBI's undocumented SRA/VDB format, verified byte-for-byte against the reference implementation), **Torchbase**, **HFP Data Commons**, **pi.science**, and **tequila-mule**. Serving member of the FDA-HFP Scientific Computing Board.

|Date                   | Employer                                                |
|:----------------------|---------------------------------------------------------:|
|Oct 2012 – Aug 2018     | **FDA-CFSAN**, Silver Spring/College Park MD — Bioinformatician in Microbiology |

Primary software specifications analyst, author, and maintainer of the FDA-hosted codebase for the joint FDA/State GenomeTrakr Network, FDA/CDC Real-Time Listeria Genomic Surveillance Project, and FDA-CFSAN/MN/WA/NY Real-Time Salmonella Enteritidis Project — laying the integration-layer foundation that has since grown to move more than 1.8 million sequenced isolate genomes into public databases. Authored high-performance analysis tools (C/C++, Python, Java) across the Illumina, PacBio, Ion Torrent, Roche 454, and Oxford Nanopore sequencing platforms. Built the GenomicsDB (MS SQL Server) for isolate metadata and high-throughput NCBI GenBank/SRA submission, and developed **sra-quick-submit**, still used worldwide by GenomeTrakr contributors.

---

Selected Projects
------------------

- **[phraya](https://github.com/CFSAN-Biostatistics/phraya)** — general-purpose pairwise sequence aligner in pure Rust. Zero binary dependencies, AVX2/NEON SIMD, deferred-decision architecture.
- **[sra-rust](https://github.com/CFSAN-Biostatistics/sra-rust)** — clean-room reader for NCBI's undocumented SRA/VDB binary format, verified byte-for-byte against the reference implementation.
- **[torchbase](https://github.com/CFSAN-Biostatistics/torchbase)** — reproducible microbial typing from versioned, cryptographically signed database packages distributed over IPFS.
- **[data-commons](https://github.com/CFSAN-Biostatistics/data-commons)** — shared validation data for surveillance bioinformatics, including an adversarial stimulus library targeting ~150 catalogued tool failure modes.
- **[pi.science](https://github.com/crashfrog/pi-dot-science)** — terminal data science agent with Dolt-backed dataframe lineage and an adversarial subagent that disproves a claim before you see it.
- **[tequila-mule](https://github.com/crashfrog/tequila-mule)** — OpenAI-compatible inference endpoint that stays up on HPC clusters with hard job wall-time limits by rotating overlapping vLLM reservations.

---

Technologies
------------

- **Languages:** Rust · Python · C/C++ · TypeScript/JavaScript · Java
- **Cloud & Orchestration:** AWS (Lambda, Batch, Step Functions, ECS) · WDL/miniwdl · Nextflow · Galaxy · Slurm
- **Data & Provenance:** Dolt · IPFS/IPLD · PostgreSQL/MySQL/MSSQL/Oracle · Neo4J
- **Agent-Assisted Development:** Claude Code, Claude Agent SDK · issue-driven/test-first workflows · adversarial verification agents
- **Packaging & DevOps:** Docker · Apptainer/Singularity · Pixi/uv/Conda · GitHub Actions

---

Education
---------

|Date        | Degree                                                                                   |
|:-----------|------------------------------------------------------------------------------------------:|
|2009 – 2012  | **B.S., Biochemistry** (minors: Chemistry, Mathematics), University of Nebraska–Lincoln |

---

Full CV: **[cv.md](cv.md)** · [PDF](cv.pdf)
