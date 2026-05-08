#!/usr/bin/env perl

# t/types/02_coercion_contract.t
#
# Pins the contract for Paws's documented coercions/decoders, such
# that PR12/PR13 (Moo + Type::Tiny migration) must keep them working.
#
# Today these are implemented via Moose attribute traits in
# lib/Paws/API/. Under Type::Tiny they will be implemented via
# Type::Coercion. The user-visible contract is unchanged:
#
#   - $obj->Field returns the raw stored value,
#   - $obj->FieldAlias (or named accessor) returns the decoded value,
#   - decoders are: Base64 (MIME::Base64), JSON (JSON::MaybeXS),
#     URLJSON (url-decode then JSON).

use strict;
use warnings;
use v5.10;

use Test::More;
use Test::Exception;

use MIME::Base64 qw(encode_base64);
use JSON::MaybeXS qw(encode_json);
use URL::Encode qw(url_encode);

# --- Base64Attribute ---------------------------------------------------
#
# Base64Attribute installs an `around` modifier on an *existing*
# accessor: the trait's `method` argument names the accessor to wrap.
# The around takes the raw value (the encoded form) and returns the
# decoded form. So $obj->Body returns decoded; the encoded form is no
# longer reachable through the public reader. This matches the
# generator's templates (templates/EC2/object.tt etc.), which set
# `method => '[% encoder.alias %]'`.

package Paws::Test::Base64 {
    use Moose;
    use Paws::API::Base64Attribute;

    has Body => (
        is     => 'ro',
        isa    => 'Str',
        traits => ['Base64Attribute'],
        method => 'Body',
        decode_as => 'Base64',
    );
}

subtest 'Base64Attribute wraps the accessor with a Base64 decoder' => sub {
    my $payload = "hello, world\n";
    my $b64     = encode_base64($payload, '');
    my $obj     = Paws::Test::Base64->new(Body => $b64);

    is($obj->Body, $payload, 'public accessor returns the decoded form');
};

subtest 'Base64Attribute is consistent across calls' => sub {
    my $b64 = encode_base64('twice', '');
    my $obj = Paws::Test::Base64->new(Body => $b64);
    is($obj->Body, 'twice', 'first call returns decoded');
    is($obj->Body, 'twice', 'second call returns decoded');
};

# --- JSONAttribute (JSON) ----------------------------------------------

package Paws::Test::Json {
    use Moose;
    use Paws::API::JSONAttribute;

    has Payload => (
        is     => 'ro',
        isa    => 'Str',
        traits => ['JSONAttribute'],
        method => 'PayloadDecoded',
        decode_as => 'JSON',
    );
}

subtest 'JSONAttribute decodes JSON via the named accessor' => sub {
    my $struct = { a => 1, b => [qw(x y)] };
    my $json   = encode_json($struct);
    my $obj    = Paws::Test::Json->new(Payload => $json);

    is($obj->Payload, $json, 'raw accessor returns the JSON string');
    is_deeply($obj->PayloadDecoded, $struct, 'named accessor returns the decoded structure');
};

subtest 'JSONAttribute throws on invalid JSON' => sub {
    my $obj = Paws::Test::Json->new(Payload => '{not valid');
    dies_ok { $obj->PayloadDecoded } 'invalid JSON dies on decode';
};

# --- JSONAttribute (URLJSON) -------------------------------------------

package Paws::Test::UrlJson {
    use Moose;
    use Paws::API::JSONAttribute;

    has Payload => (
        is     => 'ro',
        isa    => 'Str',
        traits => ['JSONAttribute'],
        method => 'PayloadDecoded',
        decode_as => 'URLJSON',
    );
}

subtest 'JSONAttribute(URLJSON) url-decodes then JSON-decodes' => sub {
    my $struct  = { key => 'value with spaces' };
    my $encoded = url_encode(encode_json($struct));
    my $obj     = Paws::Test::UrlJson->new(Payload => $encoded);

    is_deeply($obj->PayloadDecoded, $struct, 'returns decoded structure');
};

# --- Unrecognized decode_as is rejected at class-build time ------------

subtest 'Unrecognized decode_as value is rejected' => sub {
    dies_ok {
        package Paws::Test::Bogus;
        Moose->import;
        eval q{
            use Paws::API::JSONAttribute;
            has X => (
                is     => 'ro',
                isa    => 'Str',
                traits => ['JSONAttribute'],
                method => 'XDec',
                decode_as => 'NotARealEncoding',
            );
            __PACKAGE__->new(X => '"x"')->XDec;
        };
        die $@ if $@;
    } 'invalid decode_as causes a failure on use';
};

done_testing;
