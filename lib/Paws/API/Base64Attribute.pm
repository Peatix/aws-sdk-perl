# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::Base64Attribute;

# Under Moose, this was an attribute trait role that used
# `after 'install_accessors'` to wrap attribute readers with a
# MIME::Base64 decoder. Under Moo, attribute traits don't exist.
#
# Instead, this module hooks into the importing class: when a class
# `use Paws::API::Base64Attribute`, the module installs an `around`
# modifier on any accessor that carries the `decode_as => 'Base64'`
# metadata (passed via Paws::SerDes registration or directly through
# the `paws_base64` helper).
#
# For classes built by the materialiser, the decoding is handled at
# build time (the materialiser emits the `around` directly). This
# module provides the mechanism for hand-written classes and tests.

use strict;
use warnings;

sub import {
    my ($class) = @_;
    my $caller = caller;

    # Install a helper into the calling package that registers a
    # base64-decoded around modifier on a named accessor.
    no strict 'refs';
    *{"${caller}::paws_base64"} = sub {
        my (%args) = @_;
        my $method    = $args{method}    or die "paws_base64: 'method' is required";
        my $decode_as = $args{decode_as} or die "paws_base64: 'decode_as' is required";

        if ($decode_as eq 'Base64') {
            require MIME::Base64;
            require Class::Method::Modifiers;
            Class::Method::Modifiers::install_modifier(
                $caller, 'around', $method => sub {
                    my ($orig, $self) = @_;
                    return MIME::Base64::decode($self->$orig());
                },
            );
        } else {
            die "Unrecognized Base64Attribute decode_as: $decode_as";
        }
    };
}

1;
