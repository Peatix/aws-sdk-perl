#!/usr/bin/env perl

# t/types/03_edge_cases.t
#
# Edge cases that have bitten Paws or its users in the past, pinned
# down so PR12/PR13 (Moo + Type::Tiny migration) cannot regress them.
#
# Topics:
#   - undef vs missing attribute,
#   - empty array vs undef,
#   - deeply nested round-trip,
#   - shape-of-shape construction.

use strict;
use warnings;
use v5.10;

use Test::More;
use Test::Exception;

package Paws::Test::Edge {
    use Moose;
    has S        => (is => 'ro', isa => 'Str');
    has SU       => (is => 'ro', isa => 'Str|Undef');
    has Maybe    => (is => 'ro', isa => 'Maybe[Str]');
    has Predicate => (is => 'ro', isa => 'Str', predicate => 'has_predicate');
    has List     => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Paws::Test::Inner {
    use Moose;
    has Name  => (is => 'ro', isa => 'Str');
    has Value => (is => 'ro', isa => 'Int');
    __PACKAGE__->meta->make_immutable;
}

Moose::Util::TypeConstraints::class_type('Paws::Test::Inner');

package Paws::Test::Mid {
    use Moose;
    has Inners => (is => 'ro', isa => 'ArrayRef[Paws::Test::Inner]');
    has Solo   => (is => 'ro', isa => 'Paws::Test::Inner');
    __PACKAGE__->meta->make_immutable;
}

Moose::Util::TypeConstraints::class_type('Paws::Test::Mid');

package Paws::Test::Outer {
    use Moose;
    has Mid => (is => 'ro', isa => 'Paws::Test::Mid');
    __PACKAGE__->meta->make_immutable;
}

package main;

subtest 'undef vs missing for plain Str' => sub {
    # Moose 'Str' rejects undef (Str is "defined string"). Undef
    # value is invalid; missing attribute is fine. Type::Tiny `Str`
    # behaves the same way.
    my $obj;
    lives_ok { $obj = Paws::Test::Edge->new() } 'missing optional attribute ok';
    ok(!defined $obj->S, 'reader returns undef when not set');

    dies_ok { Paws::Test::Edge->new(S => undef) } 'explicit undef rejected by Str';
};

subtest 'undef vs missing for Str|Undef' => sub {
    my $missing = Paws::Test::Edge->new();
    my $explicit_undef = Paws::Test::Edge->new(SU => undef);

    ok(!defined $missing->SU, 'missing -> undef');
    ok(!defined $explicit_undef->SU, 'explicit undef -> undef');
};

subtest 'undef vs missing for Maybe[Str]' => sub {
    my $missing = Paws::Test::Edge->new();
    my $explicit = Paws::Test::Edge->new(Maybe => undef);
    ok(!defined $missing->Maybe);
    ok(!defined $explicit->Maybe);

    my $set = Paws::Test::Edge->new(Maybe => 'x');
    is($set->Maybe, 'x');
};

subtest 'predicate distinguishes set from unset' => sub {
    my $unset = Paws::Test::Edge->new();
    my $set   = Paws::Test::Edge->new(Predicate => 'x');

    ok(!$unset->has_predicate, 'predicate false when unset');
    ok($set->has_predicate,    'predicate true when set');
};

subtest 'empty arrayref vs undef list' => sub {
    my $empty = Paws::Test::Edge->new(List => []);
    my $miss  = Paws::Test::Edge->new();
    is_deeply($empty->List, [], 'empty arrayref roundtrips');
    ok(!defined $miss->List, 'missing list -> undef (not auto-defaulted)');
};

subtest 'deeply nested round-trip' => sub {
    my $i1 = Paws::Test::Inner->new(Name => 'a', Value => 1);
    my $i2 = Paws::Test::Inner->new(Name => 'b', Value => 2);
    my $mid = Paws::Test::Mid->new(Inners => [$i1, $i2], Solo => $i1);
    my $outer = Paws::Test::Outer->new(Mid => $mid);

    is($outer->Mid->Solo->Name, 'a', 'reach leaf via several layers');
    is_deeply([map { $_->Value } @{ $outer->Mid->Inners }], [1, 2], 'list members reachable');
};

subtest 'wrong nested type is rejected' => sub {
    my $i = Paws::Test::Inner->new(Name => 'a', Value => 1);
    dies_ok { Paws::Test::Mid->new(Solo => 'a string instead of object') }
        'string where structure expected dies';
    dies_ok { Paws::Test::Mid->new(Inners => $i) }
        'single object where ArrayRef expected dies';
    dies_ok { Paws::Test::Outer->new(Mid => {}) }
        'plain hashref where Paws::Test::Mid expected dies';
};

subtest 'list mutation does not leak across instances' => sub {
    my $a = Paws::Test::Edge->new(List => [qw(x y)]);
    my $b = Paws::Test::Edge->new(List => [qw(p q)]);
    is_deeply($a->List, [qw(x y)]);
    is_deeply($b->List, [qw(p q)]);
    push @{ $a->List }, 'z';
    is_deeply($a->List, [qw(x y z)], 'a was mutated');
    is_deeply($b->List, [qw(p q)],   'b unaffected (separate arrayref)');
};

done_testing;
