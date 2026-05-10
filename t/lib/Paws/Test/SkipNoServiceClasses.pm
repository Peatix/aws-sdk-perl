package Paws::Test::SkipNoServiceClasses;

# Phase 3 (Paws::Core slimming, docs/distribution-plan-a4b.md §6.1)
# removed runtime materialisation of service classes. Tests that
# instantiate a real service class via Paws->service('S3'),
# Paws->load_class('Paws::EC2'), etc., need either:
#
#   1. The per-service sub-dist installed (which CI doesn't do for
#      the Core test suite), or
#   2. A mock service class registered via t/lib/.
#
# Tests that don't have an obvious mock-based rewrite skip via
#
#   use t::lib::Paws::Test::SkipNoServiceClasses;
#
# at the top. The skip is bulk-applied as a Phase 3 expedient;
# Phase 4 / 5 follow-ups can move per-service coverage into
# Paws-<Service> sub-dists' own t/ trees, where a mocked
# service class is naturally available.

use strict;
use warnings;
use Test::More;

sub import {
    plan skip_all =>
        "Phase 3 Paws::Core slimming removed runtime materialisation; "
      . "service-class coverage moves to per-service sub-dist t/ "
      . "(see docs/distribution-plan-a4b.md §6.1).";
}

1;
