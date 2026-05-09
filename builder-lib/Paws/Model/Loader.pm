package Paws::Model::Loader;

# Abstract role for loading an AWS service description from some
# on-disk representation into the source-format-independent IR
# (see Paws::Model::IR).
#
# Concrete loaders today:
#   - Paws::Model::Loader::Botocore    (botocore service-2.json)
#
# Concrete loaders coming in PR14:
#   - Paws::Model::Loader::Smithy      (smithy AST JSON)
#
# All loaders MUST return a Paws::Model::IR::Service. Any loader-specific
# information that doesn't fit the IR is silently dropped or reported
# via the loader's own diagnostic interface; the consumers
# (Paws::API::Builder, Paws::Model::Materializer) only ever see IR.

use strict;
use warnings;
use v5.10;

use Moose::Role;

requires 'load';
    # ($self, $path_or_id) -> Paws::Model::IR::Service
    #
    # Loaders may accept different argument shapes:
    #   - Botocore takes a path to service-2.json plus optional
    #     companion-file paths.
    #   - Smithy takes a path to a smithy-build AST JSON file.
    #
    # The argument contract is per-loader; the return contract is shared.

requires 'name';
    # ($class) -> Str
    # Stable short identifier ('botocore', 'smithy', ...) used by the
    # loader resolution order in PR15 and in diagnostics.

1;
