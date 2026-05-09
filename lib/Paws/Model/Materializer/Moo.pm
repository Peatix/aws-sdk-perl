package Paws::Model::Materializer::Moo;

# Moo + Type::Tiny backend for Paws::Model::Materializer.
#
# Same interface as Paws::Model::Materializer (the Moose backend), but builds
# Moo classes with Type::Tiny type constraints instead of Moose
# classes with Moose stringy types.
#
# Why a separate module rather than a backend hook in
# Paws::Model::Materializer? Two reasons:
#
#   1. The two backends use different OO systems entirely (Moo can't
#      compose Moose roles, and vice-versa). A shared facade would
#      have to fork on backend at every step.
#
#   2. PR12's contract is: opt-in via PAWS_OO_BACKEND=Moo, default
#      remains Moose for at least one release. Two parallel modules
#      make the choice explicit at use-time.
#
# Both backends populate Paws::SerDes directly via
# Paws::SerDes->register, so the wire layer (PR11) never has to
# inflate Moo classes to Moose for introspection.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);

use Paws::SerDes;

# We do NOT 'use Moose' here - the materialiser itself is a plain
# package. The materialised classes are Moo, the materialiser isn't.

sub new {
    my ($class, %args) = @_;
    return bless { %args, _materialised => {} }, $class;
}

sub loader { $_[0]->{loader} }
sub _materialised_classes { $_[0]->{_materialised} }

# Mapping from botocore protocol to the Paws::Net role.
my %PROTOCOL_TO_CALLER_ROLE = (
    'json'      => 'Paws::Net::JsonCaller',
    'rest-json' => 'Paws::Net::RestJsonCaller',
    'query'     => 'Paws::Net::QueryCaller',
    'rest-xml'  => 'Paws::Net::RestXmlCaller',
    'ec2'       => 'Paws::Net::EC2Caller',
);

# Map an IR Service to the Paws::Net::*Signature role. Mirrors the
# AOT generator's $c->signature_role and the Moose materialiser's
# _signature_role_for so the three paths agree on which signer a
# given service composes. See Paws::Model::Materializer for details.
sub _signature_role_for {
    my ($service_ir) = @_;
    my $sv = $service_ir->signature_version;
    return 'Paws::Net::V4Signature' if !defined $sv || $sv eq '';
    my $role = sprintf 'Paws::Net::%sSignature', uc $sv;
    my $path = $role; $path =~ s{::}{/}g; $path .= '.pm';
    eval { require $path; 1 } or do {
        croak sprintf(
            "materialize_service: signature role %s for signatureVersion=%s is missing: %s",
            $role, $sv, $@,
        );
    };
    return $role;
}

# Mapping from botocore primitive type to the Type::Tiny constructor
# expression we'll string-eval into the materialised class.
my %PRIMITIVE_TO_TYPE_EXPR = (
    string    => 'Str',
    integer   => 'Int',
    long      => 'Int',
    double    => 'Num',
    float     => 'Num',
    boolean   => 'Bool',
    timestamp => 'Str',
    blob      => 'Str',
);

# Public entry: materialise a service by name. Returns the service
# package name. Idempotent.
sub materialize_service {
    my ($self, $service_ir) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;

    return $service_pkg if $self->_materialised_classes->{$service_pkg};

    my $caller_role = $PROTOCOL_TO_CALLER_ROLE{ $service_ir->protocol }
        // croak sprintf('materialize_service: unknown protocol=%s service=%s',
                         $service_ir->protocol, $service_ir->name);

    my $signature_role = _signature_role_for($service_ir);

    # Build via string-eval. Simplest reliable way to construct a Moo
    # package programmatically; matches what Moo's own internals do.
    my $svc_name      = _q($service_ir->endpoint_prefix);
    my $svc_signing   = _q($service_ir->signing_name // $service_ir->endpoint_prefix);
    my $svc_version   = _q($service_ir->api_version);
    my $svc_target    = $service_ir->target_prefix
                          ? "sub target_prefix { '" . _esc($service_ir->target_prefix) . "' }"
                          : '';
    my $svc_jsonver   = $service_ir->json_version
                          ? "sub json_version { '" . _esc($service_ir->json_version) . "' }"
                          : '';
    my $svc_flattened = _service_flattened_arrays($service_ir);

    my @op_names = $service_ir->operation_names;
    my $op_names_q = join(' ', @op_names);

    my @op_methods;
    for my $op_name (@op_names) {
        my $op_pkg = $service_pkg . '::' . $op_name;
        push @op_methods, qq{
            sub $op_name {
                my \$self = shift;
                my \$call = \$self->new_with_coercions('$op_pkg', \@_);
                return \$self->caller->do_call(\$self, \$call);
            }
        };
    }

    my $src = qq{
        package $service_pkg;
        use Moo;

        sub service          { $svc_name }
        sub signing_name     { $svc_signing }
        sub version          { $svc_version }
        sub flattened_arrays { $svc_flattened }
        $svc_target
        $svc_jsonver

        has max_attempts => (is => 'ro', default => sub { 5 });
        has retry        => (is => 'ro', default => sub {
            { base => 'rand', type => 'exponential', growth_factor => 2 }
        });
        has retriables   => (is => 'ro', default => sub { [] });

        with 'Paws::API::Caller',
             'Paws::API::EndpointResolver',
             '$signature_role',
             '$caller_role';

        @{[ join("\n", @op_methods) ]}

        sub operations { qw/$op_names_q/ }

        1;
    };

    {
        no warnings 'redefine';
        local $@;
        eval $src;
        croak "materialize_service($service_pkg): eval error: $@\nSOURCE:\n$src" if $@;
    }

    $self->_materialised_classes->{$service_pkg} = 1;

    # Eagerly materialise operations + shapes.
    for my $op_name (@op_names) {
        $self->materialize_operation($service_ir, $op_name);
    }

    return $service_pkg;
}

sub materialize_operation {
    my ($self, $service_ir, $op_name) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;
    my $op_pkg      = $service_pkg . '::' . $op_name;

    return $op_pkg if $self->_materialised_classes->{$op_pkg};

    my $op = $service_ir->operation($op_name)
        // croak "no such operation: $op_name";

    # Plain Moo class; attribute decls below.
    my @attr_lines;
    my @serdes_records;

    if (my $input_name = $op->input_shape) {
        my $input_shape = $service_ir->shape($input_name)
            // croak "input shape $input_name missing for op $op_name";
        ($self->_install_structure_members($input_shape, $service_ir,
                                           \@attr_lines, \@serdes_records));
    }

    my $api_call    = _esc($op_name);
    my $api_method  = _esc($op->http_method);
    my $api_uri     = _esc($op->http_uri);
    my $returns_pkg = $op->output_shape
        ? "Paws::" . $service_ir->name . '::' . $op->output_shape
        : '';
    my $returns_method = $returns_pkg
        ? "sub _returns { '$returns_pkg' }"
        : "sub _returns { undef }";

    # Mirror templates/query/callargs_class.tt: awsQuery responses
    # carry a wrapper element named `<OpName>Result` between the
    # outer response envelope and the actual fields. The XML response
    # decoder uses _result_key to unwrap. Other protocols leave it
    # undef (their decoders don't need the unwrap).
    my $result_key_method =
        ($service_ir->protocol eq 'query' && $op->output_shape)
            ? "sub _result_key  { '${op_name}Result' }"
            : "sub _result_key  { undef }";

    my $src = qq{
        package $op_pkg;
        use Moo;
        use Types::Standard qw(Str Int Bool Num ArrayRef HashRef Maybe InstanceOf);

@{[ join("\n", @attr_lines) ]}

        sub _api_call    { '$api_call' }
        sub _api_method  { '$api_method' }
        sub _api_uri     { '$api_uri' }
        $returns_method
        $result_key_method

        1;
    };

    {
        no warnings 'redefine';
        local $@;
        eval $src;
        croak "materialize_operation($op_pkg): eval error: $@\nSOURCE:\n$src" if $@;
    }

    # Install the SerDes side-table directly. Mirrors what
    # Paws::SerDes->_build_from_meta would have produced from the
    # Moose backend's class.
    Paws::SerDes->register($op_pkg, \@serdes_records);

    if ($op->output_shape) {
        $self->_materialise_shape_class($service_ir, $op->output_shape);
    }

    $self->_materialised_classes->{$op_pkg} = 1;
    return $op_pkg;
}

sub _materialise_shape_class {
    my ($self, $service_ir, $shape_name) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;
    my $pkg         = $service_pkg . '::' . $shape_name;

    return $pkg if $self->_materialised_classes->{$pkg};

    my $shape = $service_ir->shape($shape_name)
        // croak "shape $shape_name missing in service " . $service_ir->name;

    return $pkg if !$shape->is_structure;

    # Claim the dedup slot BEFORE recursing into structure members.
    # Several services (DynamoDB.AttributeValue, S3 list pagination,
    # Glue partition descriptors, ...) have self-referential shapes,
    # so without this claim _install_structure_members re-enters
    # _materialise_shape_class for the same $pkg and recurses
    # indefinitely. Setting the flag eagerly is safe: the eval $src
    # below either succeeds (in which case the package is fully
    # built) or croaks (in which case the whole materialise call
    # fails and the dedup is moot).
    $self->_materialised_classes->{$pkg} = 1;

    my @attr_lines;
    my @serdes_records;
    $self->_install_structure_members($shape, $service_ir,
                                      \@attr_lines, \@serdes_records);

    # `use Moo` injects `before`, `after`, `around`, `extends`,
    # `with`, `has` into the package as method modifiers. If the
    # botocore shape has an attribute with one of those names
    # (e.g. ECS::CreatedAt has `after` / `before`; several services
    # have an `extends` member), Method::Generate::Accessor::install
    # dies with "You cannot overwrite a locally defined method
    # (X) with a reader". Stash-delete those names AFTER `use Moo`
    # but BEFORE the `has` calls so the accessor install doesn't
    # see a collision; the user's data still flows through the
    # accessor we end up installing.
    my @attr_names = map {
        $_ =~ /^\s+has\s+(\w+)\s/ ? ($1) : ()
    } @attr_lines;
    my %attr_set = map { $_ => 1 } @attr_names;
    my @reserved = grep { $attr_set{$_} } qw(before after around extends with has);
    my @clear_lines;
    if (@reserved) {
        push @clear_lines, "        no strict 'refs';";
        push @clear_lines, map {
            "        delete \${'${pkg}::'}{'$_'};"
        } @reserved;
        push @clear_lines, "        use strict 'refs';";
    }

    my $src = qq{
        package $pkg;
        use Moo;
        use Types::Standard qw(Str Int Bool Num ArrayRef HashRef Maybe InstanceOf);

@{[ join("\n", @clear_lines) ]}

@{[ join("\n", @attr_lines) ]}

        has _request_id => (is => 'ro');

        1;
    };

    {
        no warnings 'redefine';
        local $@;
        eval $src;
        croak "materialise_shape_class($pkg): eval error: $@\nSOURCE:\n$src" if $@;
    }

    Paws::SerDes->register($pkg, \@serdes_records);

    $self->_materialised_classes->{$pkg} = 1;
    return $pkg;
}

sub _install_structure_members {
    my ($self, $shape, $service_ir, $attr_lines, $serdes_records) = @_;

    my %required = map { $_ => 1 } @{ $shape->required_members };

    for my $mname_orig (sort keys %{ $shape->members }) {
        my $m           = $shape->members->{$mname_orig};
        my $mname       = _paws_member_name($mname_orig);
        my $type_expr   = $self->_type_expr($service_ir, $m->shape);
        my $type_string = $self->_type_string($service_ir, $m->shape);

        # Wire-key precedence (mirrors Paws::API::Builder::capitalize_shape
        # in the AOT path):
        #   1. explicit locationName from botocore;
        #   2. original member name (preserves a lowercase name when the
        #      Paws-side rename to TitleCase changed it).
        my $wire_key = $m->locationName // $mname_orig;

        # Derive trait info for the SerDes side-table.
        my %record = (
            name          => $mname,
            type          => $type_string,
            wire_key      => $wire_key,
            location      => 'body',
            location_name => undef,
            traits        => {},
            is_list       => ($type_string =~ /^ArrayRef\[/  ? 1 : 0),
            is_map        => ($type_string =~ /^HashRef\[/   ? 1 : 0),
        );

        # Surface map shape metadata so the wire layer can reproduce the
        # per-protocol "entry.N.key/value" / "N.Name/Value" / etc.
        # serialisation that the AOT path used to drive from the auto-
        # generated map parser classes (Paws::*::SomethingMap with
        # str-to-{native,obj}-map roles). These keys are only set on
        # records whose type is HashRef[X].
        if ($record{is_map}) {
            my $map_shape = $service_ir->shape($m->shape);
            if ($map_shape && $map_shape->is_map) {
                $record{map_key_locationName}   = $map_shape->map_key_locationName;
                $record{map_value_locationName} = $map_shape->map_value_locationName;
                $record{map_flattened}          = $map_shape->flattened ? 1 : 0;
            }
        }

        if (defined(my $loc = $m->location)) {
            if ($loc eq 'header') {
                $record{traits}{ParamInHeader} = 1;
                $record{location} = 'header';
                $record{location_name} = $wire_key;
            } elsif ($loc eq 'headers') {
                $record{traits}{ParamInHeaders} = 1;
                $record{location} = 'headers';
                $record{location_name} = $wire_key;
            } elsif ($loc eq 'querystring') {
                $record{traits}{ParamInQuery} = 1;
                $record{location} = 'querystring';
                $record{location_name} = $wire_key;
            } elsif ($loc eq 'uri') {
                $record{traits}{ParamInURI} = 1;
                $record{location} = 'uri';
                $record{location_name} = $wire_key;
            }
        } elsif (defined $m->locationName && $m->locationName ne $mname) {
            $record{traits}{NameInRequest} = 1;
            $record{location_name} = $m->locationName;
        } elsif ($mname ne $mname_orig) {
            # Pure capitalisation rename: the wire still wants the
            # original lowercase name; record the body-position trait so
            # the wire layer reads/writes under that key.
            $record{traits}{NameInRequest} = 1;
            $record{location_name} = $mname_orig;
        }
        if (defined $shape->payload && $shape->payload eq $mname_orig) {
            $record{traits}{ParamInBody} = 1;
        }

        push @$serdes_records, \%record;

        my $required_part = $required{$mname_orig} ? ', required => 1' : '';
        push @$attr_lines,
            "        has $mname => (is => 'ro', isa => $type_expr$required_part);";

        # If the member targets a structure, materialise that structure.
        my $target = $service_ir->shape($m->shape);
        if ($target && $target->is_structure) {
            $self->_materialise_shape_class($service_ir, $m->shape);
        }
        if ($target && $target->is_list) {
            my $inner = $service_ir->shape($target->list_member_shape);
            if ($inner && $inner->is_structure) {
                $self->_materialise_shape_class($service_ir, $target->list_member_shape);
            }
        }
        if ($target && $target->is_map) {
            my $inner = $service_ir->shape($target->map_value_shape);
            if ($inner && $inner->is_structure) {
                $self->_materialise_shape_class($service_ir, $target->map_value_shape);
            }
        }
    }

    return;
}

# Apply the Paws SDK Pascal-case naming convention to a structure
# member name. Mirrors Paws::API::Builder::capitalize_shape in the AOT
# generator: lowercase-first-letter members get an uppercase first
# letter, but anything already starting with an uppercase letter (or
# underscore) is left alone.
sub _paws_member_name {
    my ($name) = @_;
    return $name if $name =~ /^[A-Z_]/;
    substr($name, 0, 1) = uc(substr($name, 0, 1));
    return $name;
}

# True iff the service's Paws::Net::*Caller should serialise lists in
# the flattened "key.N" form (rather than the wrapped "key.member.N"
# form). Matches the AOT path's heuristic in Paws::API::Builder:
#
#   - protocol "ec2" services always flatten (the EC2 query wire
#     format never emits .member. infixes; Paws::API::Builder::EC2
#     hardcodes flattened_arrays => 1);
#   - other services flatten iff at least one list shape carries
#     `"flattened": true` in botocore data (so e.g. S3's many
#     flattened lists flip the whole service to flattened, matching
#     master's `sub flattened_arrays { 1 }` for Paws::S3).
sub _service_flattened_arrays {
    my ($service_ir) = @_;
    return 1 if $service_ir->protocol eq 'ec2';
    for my $shape_name ($service_ir->shape_names) {
        my $shape = $service_ir->shape($shape_name);
        return 1 if $shape->is_list && $shape->flattened;
    }
    return 0;
}

# Returns a Type::Tiny *expression* that will be eval'd inside the
# materialised package. Names like Str, Int come from
# `use Types::Standard ...` at the top of the eval'd source.
sub _type_expr {
    my ($self, $service_ir, $shape_name) = @_;

    my $shape = $service_ir->shape($shape_name)
        // croak "type expr: shape $shape_name missing";

    if (my $prim = $PRIMITIVE_TO_TYPE_EXPR{ $shape->type }) {
        return $prim;
    }

    if ($shape->is_structure) {
        my $pkg = 'Paws::' . $service_ir->name . '::' . $shape_name;
        return "InstanceOf['" . _esc($pkg) . "']";
    }

    if ($shape->is_list) {
        my $inner = $self->_type_expr($service_ir, $shape->list_member_shape);
        return "ArrayRef[$inner]";
    }

    if ($shape->is_map) {
        my $inner = $self->_type_expr($service_ir, $shape->map_value_shape);
        return "HashRef[$inner]";
    }

    croak "type expr: don't know how to map shape=$shape_name type=" . $shape->type;
}

# Returns the *string form* of the Type::Tiny type, used for
# Paws::SerDes records (the wire layer compares against these strings:
# 'Str', 'Int', 'ArrayRef[X]', etc., matching the Moose form).
sub _type_string {
    my ($self, $service_ir, $shape_name) = @_;

    my $shape = $service_ir->shape($shape_name)
        // croak "type string: shape $shape_name missing";

    if (my $prim = $PRIMITIVE_TO_TYPE_EXPR{ $shape->type }) {
        return $prim;
    }
    if ($shape->is_structure) {
        return 'Paws::' . $service_ir->name . '::' . $shape_name;
    }
    if ($shape->is_list) {
        return 'ArrayRef[' . $self->_type_string($service_ir, $shape->list_member_shape) . ']';
    }
    if ($shape->is_map) {
        return 'HashRef[' . $self->_type_string($service_ir, $shape->map_value_shape) . ']';
    }
    croak "type string: unknown shape=$shape_name type=" . $shape->type;
}

# Quote a value for inlining as a Perl string literal.
sub _q   { defined $_[0] ? "'" . _esc($_[0]) . "'" : 'undef' }
sub _esc { my $s = $_[0] // ''; $s =~ s/(['\\])/\\$1/g; $s }

1;

__END__

=head1 NAME

Paws::Model::Materializer::Moo - Moo + Type::Tiny backend for the materialiser

=head1 STATUS

PR12 lands the Moo backend as opt-in. Construct directly:

    use Paws::Model::Materializer::Moo;
    my $mat = Paws::Model::Materializer::Moo->new(loader => $loader);
    my $pkg = $mat->materialize_service($ir);

PR13 will switch the default backend selection (in
Paws::Model::Materializer's facade or in the Paws.pm hook) to Moo when
PAWS_OO_BACKEND=Moo is unset, with PAWS_OO_BACKEND=Moose as the
escape hatch.

=cut
