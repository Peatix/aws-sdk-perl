package Paws::Test::SkipNoServiceClasses;

# Service classes (Paws::EC2, Paws::S3, etc.) are shipped in per-service
# sub-distributions (Paws-EC2, Paws-S3, ...) and are not available in the
# Paws::Core test suite without installing them separately. Tests that
# instantiate a real service class via Paws->service('S3'),
# Paws->load_class('Paws::EC2'), etc., need either:
#
#   1. The per-service sub-dist installed, or
#   2. A mock/synthetic service class registered via t/lib/.
#
# Tests that don't have a mock-based alternative skip via:
#
#   use Paws::Test::SkipNoServiceClasses;
#
# at the top. Per-service test coverage lives in the respective
# Paws-<Service> sub-dist t/ trees.

use strict;
use warnings;
use Test::More;

sub import {
    plan skip_all =>
        "Service classes not available in Paws::Core test suite; "
      . "install per-service sub-dists or run from a sub-dist tree.";
}

1;
