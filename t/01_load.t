#!/usr/bin/env perl

# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

use strict;
use warnings;
use v5.10;

use lib qw(t/lib);
use Paws::Test::MaterialiseServices;

use Test::More;
use Paws;
use Paws::Credential::Explicit;
use Paws::Model::Loader::Resolver;

my $resolver = Paws::Model::Loader::Resolver->new;
my @services = @ARGV > 0
    ? @ARGV
    : $resolver->all_known_services;

my $creds = Paws::Credential::Explicit->new(
    access_key => 'AKIAIOSFODNN7EXAMPLE',
    secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
);

for my $service (sort @services) {
    my $obj = eval {
        Paws->service($service, region => 'us-east-1', credentials => $creds);
    };
    if ($obj) {
        pass("materialise and construct $service");
    } else {
        fail("materialise and construct $service");
        diag($@);
    }
}

done_testing;
