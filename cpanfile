# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

requires 'perl' => '5.012001';
requires 'Moose';
requires 'MooseX::ClassAttribute';

# Moo + Type::Tiny stack: opt-in OO backend (PR12). Required because
# the materialiser's Moo backend is shipped in lib/. Moose remains
# the default backend; switch via PAWS_OO_BACKEND=Moo (PR13 will
# flip the default).
requires 'Moo';
requires 'MooX::ClassAttribute';
requires 'Type::Tiny';
requires 'Types::Standard';

# PR 18 (stack18): the materialiser caches IR via Sereal so repeated
# Paws->service('X') calls in the same process don't re-parse JSON.
requires 'Sereal::Encoder', '>= 5.000';
requires 'Sereal::Decoder', '>= 5.000';
# Resolves the dist's installed share/ directory at runtime so the
# materialiser can find vendored Smithy / botocore IR after a plain
# `cpanm Paws` install. Issue #80; see Paws::Model::Loader::Resolver.
requires 'File::ShareDir';
requires 'HTTP::Tiny', '>= 0.083';
requires 'HTTP::Message';
requires 'HTTP::Date';
requires 'Throwable::Error';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V4';
# CryptX provides Crypt::PK::ECC, Crypt::Mac::HMAC, and
# Crypt::Digest::SHA256, used by Paws::Net::V4ASignature for ECDSA
# P-256 signing. Pinning the distribution rather than its sub-modules
# so a single dependency line covers all three.
requires 'CryptX', '>= 0.087';
requires 'JSON::MaybeXS';
requires 'XML::Simple' => '2.25';
requires 'IO::Socket::SSL' => '>2.009';
requires 'DateTime';
requires 'DateTime::Format::ISO8601';
requires 'URL::Encode';
requires 'URL::Encode::XS';
requires 'URI::Template' => '0.23';
requires 'Config::AWS';
requires 'Digest::SHA';
# For the paws CLI
requires 'DataStruct::Flat';
requires 'MooseX::Getopt';
requires 'ARGV::Struct';
requires 'Module::Find';
requires 'Getopt::Long';
recommends 'Browser::Open';
requires 'File::HomeDir';
requires 'String::CRC32';
requires 'Path::Tiny' => '0.017';
# Paws::Net::DebugCaller serialises request/response captures to YAML.
requires 'YAML', '>= 1.28';
suggests "Future::Mojo";

on 'develop' => sub {
  requires 'Template';
  requires 'Pod::HTML2Pod';
  requires 'Perl::Tidy';
  requires 'Carp::Always';
  requires 'Devel::Cover';
  requires 'Data::Printer';
  requires 'Carp::Always';
  requires 'Test::Pod';
  requires 'Devel::CoverReport';
  # For developing / testing the pluggable callers
  requires 'Mojolicious';
  requires 'Future::Mojo', '>= 0.003';
  requires 'Mojo::Promise::Role::Futurify';
  requires 'EV';
  requires 'LWP::UserAgent';
  requires 'Furl';
  requires 'Pod::Checker';
  requires 'Pod::Escapes';
  requires 'Data::Munge';
  requires 'Parallel::ForkManager';

  requires 'Clone';
};

on 'test' => sub {
  requires 'Path::Class';
  requires 'YAML';
  requires 'Test::More';
  requires 'Test::Timer';
  requires 'Test::Exception';
  requires 'Test::Warnings';
  requires 'Class::Unload';
  requires 'File::Slurper';
};
