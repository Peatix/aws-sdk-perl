#!/usr/bin/env perl
# t/37_idempotency_token.t
#
# Smithy @idempotencyToken members are auto-filled with a generated
# UUIDv4 when the caller omits them (matching the official AWS SDKs).
# Without this, services like SecretsManager CreateSecret reject the
# request ("You must provide a ClientRequestToken value").
#
# Exercises the whole path against the real SecretsManager model
# (materialised on demand): loader lifts the trait -> materialiser
# records it -> Paws::SerDes exposes is_idempotency_token ->
# Paws->new_with_coercions fills it.

use strict;
use warnings;
use lib 't/lib';

use Test::More;
use Paws::Test::MaterialiseServices;
use Paws;
use Paws::SerDes;
use Paws::Credential::Explicit;

my $uuid_re =
    qr/^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/;

# The generator itself.
like(Paws::_idempotency_token(), $uuid_re, '_idempotency_token is a UUIDv4');
isnt(Paws::_idempotency_token(), Paws::_idempotency_token(),
    'successive tokens differ');

my $aws = Paws->new(config => {
    credentials => Paws::Credential::Explicit->new(
        access_key => 'a', secret_key => 'b',
    ),
});
my $sm = $aws->service('SecretsManager', region => 'us-east-1');

ok(Paws::SerDes->for('Paws::SecretsManager::CreateSecret')
        ->is_idempotency_token('ClientRequestToken'),
    'idempotencyToken trait lifted to the SerDes side-table');

# Omitted -> auto-filled.
my $call = Paws->new_with_coercions(
    'Paws::SecretsManager::CreateSecret',
    Name => 'n', SecretString => 's',
);
like($call->ClientRequestToken, $uuid_re,
    'omitted ClientRequestToken is auto-filled with a UUIDv4');

# Provided -> preserved.
my $call2 = Paws->new_with_coercions(
    'Paws::SecretsManager::CreateSecret',
    Name => 'n', SecretString => 's',
    ClientRequestToken => 'caller-supplied-token',
);
is($call2->ClientRequestToken, 'caller-supplied-token',
    'caller-supplied ClientRequestToken is preserved');

# A non-idempotency member is not invented.
ok(!defined $call->Description, 'unrelated optional members stay undef');

done_testing;
