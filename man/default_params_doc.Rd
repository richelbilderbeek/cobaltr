% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/default_params_doc.R
\name{default_params_doc}
\alias{default_params_doc}
\title{Documentation of general function arguments.
This function does nothing.
It is intended to inherit function argument documentation.}
\usage{
default_params_doc(
  cobalt_folder,
  cobalt_options,
  conserved_domain_threshold,
  conservation_score_threshold,
  conserved_block_filename,
  dfb_added_weight,
  destination_filename,
  do_dry_run,
  domain_database_filename,
  fasta_filename,
  ffb_added_weight,
  filler_threshold,
  middle_extend_gap_penalty,
  no_rps,
  open_gap_in_middle_penalty,
  pac_filename,
  pseudocount_constant,
  residue_frequencies_filename,
  score_matrix_name,
  search_around_ccs,
  search_pattern_filename,
  terminal_extend_gap_penalty,
  terminal_open_gap_penalty,
  use_fastme,
  verbose
)
}
\arguments{
\item{cobalt_folder}{the folder where COBALT is installed in.
Use \link{get_default_cobalt_folder} to get the default COBALT folder}

\item{cobalt_options}{a set of COBALT options,
as can be created by \link{create_cobalt_options}}

\item{conserved_domain_threshold}{the threshold of the E-value
for selecting conserved domains.
The COBALT \code{-evalue} flag}

\item{conservation_score_threshold}{the minimum average score needed
for a multiple alignment column to be considered as conserved.
The COBALT \code{-ccc} flag}

\item{conserved_block_filename}{filename containing conserved blocks,
the COBALT \code{-b} option}

\item{dfb_added_weight}{the amount of extra weight (0..1)
to give the actual sequence letter at that position,
The COBALT \code{-dfb} flag}

\item{destination_filename}{filename for destination text seqalign
the COBALT \code{-seqalign} option}

\item{do_dry_run}{Do a dry run, that is, only test all preconditions
The COBALT \code{-dryrun} flag}

\item{domain_database_filename}{domain database filename,
the COBALT \code{-db} option}

\item{fasta_filename}{name of a FASTA file}

\item{ffb_added_weight}{the amount of extra weight
(0..1) to give the actual sequence letter at that position
when assigning filler residue frequencies.
The COBALT \code{-ffb} flag}

\item{filler_threshold}{the threshold of the E-value
for aligning filler segments.
The COBALT \code{-evalue2} flag}

\item{middle_extend_gap_penalty}{The COBALT \code{-e1} flag}

\item{no_rps}{do not perform initial RPS blast search
The COBALT \code{-norps} flag}

\item{open_gap_in_middle_penalty}{The COBALT \code{-g1} flag}

\item{pac_filename}{name of the file
containing pairwise alignment constraints, one per line,
each of the following form:
\code{seq1_idx seq1_start seq1_end seq2_idx seq2_start seq2_end}.
The COBALT \code{-c} flag}

\item{pseudocount_constant}{the pseudocount constant
The COBALT \code{-pseudo} flag}

\item{residue_frequencies_filename}{filename containing residue frequencies,
the COBALT \code{-f} option}

\item{score_matrix_name}{name of the COBALT score matrix.
Use \link{get_matrix_names} to get a list of all possible matrix names}

\item{search_around_ccs}{look for conserved columns
and iterate if any are found.
The COBALT \code{-iter} flag}

\item{search_pattern_filename}{filename containing search patterns,
the COBALT \code{-p} option}

\item{terminal_extend_gap_penalty}{The COBALT \code{-e0} flag}

\item{terminal_open_gap_penalty}{the gap open penalty
for initial/terminal gaps.
The COBALT \code{-g0} flag}

\item{use_fastme}{use FastME tree generation algorithm (instead
of neighbor joining).
The COBALT \code{-fastme} flag}

\item{verbose}{verbose output
the COBALT \code{-v} option}
}
\description{
Documentation of general function arguments.
This function does nothing.
It is intended to inherit function argument documentation.
}
\note{
This is an internal function, so it should be marked with
\code{@export}. This is not done, as this will disallow all
functions to find the documentation parameters
}
\author{
Richèl J.C. Bilderbeek
}
