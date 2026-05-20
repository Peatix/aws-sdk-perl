# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::JSONAttribute;

# Under Moose, this was an attribute trait role that used
# `after 'install_accessors'` to add a named method that decodes
# the raw stored JSON (or URL-encoded JSON) value. Under Moo,
# attribute traits don't exist.
#
# Instead, this module installs a helper `paws_json` into the
# importing class. Call it after `has` to install the decoded accessor.

use strict;
use warnings;

use JSON::MaybeXS;
use URL::Encode;

sub import {
    my ($class) = @_;
    my $caller = caller;

    no strict 'refs';
    *{"${caller}::paws_json"} = sub {
        my (%args) = @_;
        my $source    = $args{source}    or die "paws_json: 'source' is required";
        my $method    = $args{method}    or die "paws_json: 'method' is required";
        my $decode_as = $args{decode_as} or die "paws_json: 'decode_as' is required";

        my $coderef;
        if ($decode_as eq 'JSON') {
            $coderef = sub {
                my $self = shift;
                return decode_json($self->$source());
            };
        } elsif ($decode_as eq 'URLJSON') {
            $coderef = sub {
                my $self = shift;
                return decode_json(URL::Encode::url_decode($self->$source()));
            };
        } else {
            die "Unrecognized JSONAttribute decode_as: $decode_as";
        }

        no strict 'refs';
        *{"${caller}::${method}"} = $coderef;
    };
}

1;
