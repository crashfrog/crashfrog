Justin Payne
============

> A scientific toolmaker who deploys into the customer's world.
>
> Distributed Systems · Systems Programming · Agent-Assisted Development · Scientific Computing at Scale

I build the software that public health laboratories actually run. For a decade at the FDA I've been one of the primary developers of **GenomeTrakr**, the world's largest genomic biosurveillance network — the integration-layer architecture I authored has moved more than 1.8 million sequenced isolate genomes into public databases, where they're still used to trace foodborne outbreaks back to their source. I'm also an applications scientist and admin on **GalaxyTrakr**, the free hosted analysis platform used by state, federal, and international partner labs, which means a lot of my job has been landing in someone else's environment, making the pipeline work there, and teaching their scientists to run it themselves — in Maryland, in Virginia, in Bangkok.

The rest of the time I write systems software for problems the existing tools don't cover.

**What I've been building lately**

- **[phraya](https://github.com/CFSAN-Biostatistics/phraya)** — a general-purpose pairwise sequence aligner in pure Rust. Zero binary dependencies, AVX2/NEON SIMD, and a deferred-decision architecture: align once with full multi-mapping and provenance metadata retained, then re-filter as many times as you like without touching the aligner again.
- **[sra-rust](https://github.com/CFSAN-Biostatistics/sra-rust)** — a clean-room reader for NCBI's undocumented SRA/VDB binary format, including a production-graph evaluator for the computed columns the format never actually stores. Verified byte-for-byte against the reference implementation.
- **[torchbase](https://github.com/CFSAN-Biostatistics/torchbase)** — reproducible microbial typing from versioned, cryptographically signed database packages distributed over IPFS, because typing databases that mutate silently under their users are a reproducibility problem nobody was solving.
- **[data-commons](https://github.com/CFSAN-Biostatistics/data-commons)** — shared validation data for surveillance bioinformatics, including an adversarial stimulus library of engineered datasets built to trigger ~150 catalogued tool failure modes.
- **[pi.science](https://github.com/crashfrog/pi-dot-science)** — a terminal data science agent that acts as a statistician's research assistant rather than an oracle: full dataframe lineage in a Dolt-backed store with session branching, and an adversarial subagent whose job is to disprove a claim before you ever see it.
- **[tequila-mule](https://github.com/crashfrog/tequila-mule)** — an OpenAI-compatible inference endpoint that stays up on HPC clusters with hard job wall-time limits, by rotating overlapping vLLM reservations out from under the scheduler before it can kill them.

All of it built issue-driven and test-first, with agents doing the typing and ADRs governing the algorithm changes.

**Tools:** Rust · Python · C/C++ · TypeScript · WDL · Nextflow · Galaxy · Slurm · AWS (Lambda, Batch, Step Functions, ECS) · Docker/Apptainer · Dolt · IPFS/IPLD · Claude Code and the Agent SDK

Full CV: **[cv.md](cv.md)** · [PDF](cv.pdf)

Recently rated "alright" by one of two cats who live in my condo.
