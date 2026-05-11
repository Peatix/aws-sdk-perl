package Paws::Model::Loader;

# Abstract role for loading an AWS service description from some
# on-disk representation into the source-format-independent IR
# (see Paws::Model::IR).
#
#
# Concrete loader:
#   - Paws::Model::Loader::Smithy      (smithy AST JSON)
#
# All loaders MUST return a Paws::Model::IR::Service.

use strict;
use warnings;
use v5.10;

use Moose::Role;

requires 'load';
    # ($self, $path_or_id) -> Paws::Model::IR::Service
    #
    # Smithy takes a path to a smithy-build AST JSON file.
    # The return contract is shared: always a Paws::Model::IR::Service.

requires 'name';
    # ($class) -> Str
    # Stable short identifier ('smithy', ...) used in diagnostics.

1;
