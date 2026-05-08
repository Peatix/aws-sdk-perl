#!/usr/bin/env perl

# t/types/01_validation_contract.t
#
# Pins the type-validation contract that Paws shape attributes must
# satisfy, *independent of which OO/type system implements it*.
#
# Today this contract is implemented by Moose. PR12/PR13 swap to
# Moo + Type::Tiny. Type::Tiny error messages differ from Moose's
# (different wording, different exception classes), so this test
# avoids matching on message text. It only asserts:
#
#   - valid values construct,
#   - invalid values throw,
#   - the right defaults apply,
#   - required attributes are required,
#
# The test classes are built inline so no dependence on auto-lib/.

use strict;
use warnings;
use v5.10;

use lib 't/lib';

use Test::More;
use Test::Exception;

package Paws::Test::Types {
    use Moose;
    has Str       => (is => 'ro', isa => 'Str');
    has StrUndef  => (is => 'ro', isa => 'Str|Undef');
    has Integer   => (is => 'ro', isa => 'Int');
    has Number    => (is => 'ro', isa => 'Num');
    has Boolean   => (is => 'ro', isa => 'Bool');
    has ArrayStr  => (is => 'ro', isa => 'ArrayRef[Str]');
    has ArrayInt  => (is => 'ro', isa => 'ArrayRef[Int]');
    has Map       => (is => 'ro', isa => 'HashRef[Str]');
    has MaybeStr  => (is => 'ro', isa => 'Maybe[Str]');
    has Required  => (is => 'ro', isa => 'Str', required => 1);
    has Default   => (is => 'ro', isa => 'Str', default => 'fallback');
}

package Paws::Test::Inner {
    use Moose;
    has value => (is => 'ro', isa => 'Str');
    __PACKAGE__->meta->make_immutable;
}

# Register Paws::Test::Inner as a class type so Moose doesn't emit
# "is this a class or a type?" diagnostics from the next class's
# `isa => 'Paws::Test::Inner'`.
Moose::Util::TypeConstraints::class_type('Paws::Test::Inner');

package Paws::Test::Outer {
    use Moose;
    has inner => (is => 'ro', isa => 'Paws::Test::Inner');
    has list  => (is => 'ro', isa => 'ArrayRef[Paws::Test::Inner]');
    __PACKAGE__->meta->make_immutable;
}

package main;

sub ctor {
    my ($class, %args) = @_;
    return $class->new(Required => 'r', %args);
}

# --- Str -----------------------------------------------------------------

subtest 'Str accepts strings' => sub {
    my $obj;
    lives_ok { $obj = ctor('Paws::Test::Types', Str => 'hello') } 'string ok';
    is($obj->Str, 'hello', 'roundtrips');

    lives_ok { ctor('Paws::Test::Types', Str => '') } 'empty string ok';
    lives_ok { ctor('Paws::Test::Types', Str => 0)  } '0 ok (treated as string)';
};

subtest 'Str rejects refs' => sub {
    dies_ok { ctor('Paws::Test::Types', Str => [])  } 'arrayref rejected';
    dies_ok { ctor('Paws::Test::Types', Str => {})  } 'hashref rejected';
    dies_ok { ctor('Paws::Test::Types', Str => sub {}) } 'coderef rejected';
};

# --- Str|Undef ----------------------------------------------------------

subtest 'Str|Undef accepts undef and strings' => sub {
    lives_ok { ctor('Paws::Test::Types', StrUndef => undef) } 'undef ok';
    lives_ok { ctor('Paws::Test::Types', StrUndef => 'x')   } 'string ok';
    dies_ok  { ctor('Paws::Test::Types', StrUndef => [])    } 'arrayref rejected';
};

# --- Int ----------------------------------------------------------------

subtest 'Int accepts integers' => sub {
    my $obj;
    lives_ok { $obj = ctor('Paws::Test::Types', Integer => 42) } 'integer ok';
    is($obj->Integer, 42, 'roundtrips');

    lives_ok { ctor('Paws::Test::Types', Integer => 0)   } 'zero ok';
    lives_ok { ctor('Paws::Test::Types', Integer => -1)  } 'negative ok';
    lives_ok { ctor('Paws::Test::Types', Integer => '7') } 'numeric string ok (Perl numeric coercion)';
};

subtest 'Int rejects non-integers' => sub {
    dies_ok { ctor('Paws::Test::Types', Integer => 'abc') } 'letters rejected';
    dies_ok { ctor('Paws::Test::Types', Integer => '1.5') } 'float-string rejected';
    dies_ok { ctor('Paws::Test::Types', Integer => [])    } 'arrayref rejected';
};

# --- Num ----------------------------------------------------------------

subtest 'Num accepts numerics' => sub {
    lives_ok { ctor('Paws::Test::Types', Number => 1.5)   } 'float ok';
    lives_ok { ctor('Paws::Test::Types', Number => 42)    } 'integer ok';
    lives_ok { ctor('Paws::Test::Types', Number => '3.14')} 'numeric string ok';
    dies_ok  { ctor('Paws::Test::Types', Number => 'abc') } 'letters rejected';
    dies_ok  { ctor('Paws::Test::Types', Number => [])    } 'arrayref rejected';
};

# --- Bool ---------------------------------------------------------------

subtest 'Bool accepts truthy/falsy scalars' => sub {
    # Moose Bool accepts undef, 0, 1, '', and other scalars. Documenting
    # the lenient contract so PR12/PR13 must keep it lenient too.
    lives_ok { ctor('Paws::Test::Types', Boolean => 1)     } '1 ok';
    lives_ok { ctor('Paws::Test::Types', Boolean => 0)     } '0 ok';
    lives_ok { ctor('Paws::Test::Types', Boolean => '')    } 'empty string ok';
    lives_ok { ctor('Paws::Test::Types', Boolean => undef) } 'undef ok';
};

# --- ArrayRef[X] --------------------------------------------------------

subtest 'ArrayRef[Str] accepts arrayrefs of strings' => sub {
    my $obj;
    lives_ok { $obj = ctor('Paws::Test::Types', ArrayStr => [qw(a b c)]) } 'arrayref of strings ok';
    is_deeply($obj->ArrayStr, [qw(a b c)], 'roundtrips');

    lives_ok { ctor('Paws::Test::Types', ArrayStr => []) } 'empty arrayref ok';
};

subtest 'ArrayRef[Str] rejects bad shape' => sub {
    dies_ok { ctor('Paws::Test::Types', ArrayStr => 'a')        } 'scalar rejected';
    dies_ok { ctor('Paws::Test::Types', ArrayStr => {})         } 'hashref rejected';
    dies_ok { ctor('Paws::Test::Types', ArrayStr => [{}, []])   } 'arrayref of refs rejected';
};

subtest 'ArrayRef[Int] checks element type' => sub {
    lives_ok { ctor('Paws::Test::Types', ArrayInt => [1, 2, 3]) } 'integers ok';
    dies_ok  { ctor('Paws::Test::Types', ArrayInt => ['a'])     } 'non-integer element rejected';
};

# --- HashRef[X] ---------------------------------------------------------

subtest 'HashRef[Str] accepts hashrefs of strings' => sub {
    lives_ok { ctor('Paws::Test::Types', Map => { a => 'x', b => 'y' }) } 'hashref of strings ok';
    dies_ok  { ctor('Paws::Test::Types', Map => { a => [] })            } 'non-string value rejected';
    dies_ok  { ctor('Paws::Test::Types', Map => 'a')                    } 'scalar rejected';
};

# --- Maybe[X] -----------------------------------------------------------

subtest 'Maybe[Str] accepts undef or string' => sub {
    lives_ok { ctor('Paws::Test::Types', MaybeStr => undef) } 'undef ok';
    lives_ok { ctor('Paws::Test::Types', MaybeStr => 'x')   } 'string ok';
    dies_ok  { ctor('Paws::Test::Types', MaybeStr => [])    } 'arrayref rejected';
};

# --- required => 1 ------------------------------------------------------

subtest 'required attributes are enforced' => sub {
    dies_ok  { Paws::Test::Types->new() }              'missing required throws';
    lives_ok { Paws::Test::Types->new(Required => 'x') } 'present required ok';
};

# --- default ------------------------------------------------------------

subtest 'default applies when attribute is absent' => sub {
    my $obj = ctor('Paws::Test::Types');
    is($obj->Default, 'fallback', 'default value applied');

    my $explicit = ctor('Paws::Test::Types', Default => 'explicit');
    is($explicit->Default, 'explicit', 'explicit value wins over default');
};

# --- nested instance types ---------------------------------------------

subtest 'instance-of types accept correct class' => sub {
    my $inner = Paws::Test::Inner->new(value => 'v');
    lives_ok { Paws::Test::Outer->new(inner => $inner) } 'correct class ok';
    dies_ok  { Paws::Test::Outer->new(inner => {})     } 'plain hashref rejected';
    dies_ok  { Paws::Test::Outer->new(inner => 'foo')  } 'string rejected';
};

subtest 'ArrayRef[InstanceOf] enforces element class' => sub {
    my $inner = Paws::Test::Inner->new(value => 'v');
    lives_ok { Paws::Test::Outer->new(list => [$inner])      } 'arrayref of correct class ok';
    lives_ok { Paws::Test::Outer->new(list => [])            } 'empty list ok';
    dies_ok  { Paws::Test::Outer->new(list => [{value=>'v'}])} 'arrayref of plain hash rejected';
    dies_ok  { Paws::Test::Outer->new(list => $inner)        } 'single instance (not in array) rejected';
};

done_testing;
