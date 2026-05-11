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

# emit_callback (optional, A4-B build-pipeline hook): when set to a
# coderef, the three eval-$src sites below call
#   $self->{emit_callback}->($pkg_name, $src)
# instead of compiling the source into the running interpreter. This
# lets `script/build-modular-dist` (per docs/distribution-plan-a4b.md
# §3.1) write the materialised source to per-class .pm files in a
# temporary build tree without polluting the build host's symbol
# table.
#
# When emit_callback is set, the dedup hash is still updated, the
# SerDes->register side-table call still runs, and recursive
# materialise_operation / _materialise_shape_class calls still
# happen. Only the eval is suppressed.
sub _emit_or_eval {
    my ($self, $pkg, $src) = @_;
    if (my $cb = $self->{emit_callback}) {
        $cb->($pkg, $src);
        return;
    }
    no warnings 'redefine';
    local $@;
    eval $src;
    croak "_emit_or_eval($pkg): eval error: $@\nSOURCE:\n$src" if $@;
    return;
}

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
        sub flattened_arrays { 0 }
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

    $self->_emit_or_eval($service_pkg, $src);

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

    my $input_shape;
    if (my $input_name = $op->input_shape) {
        $input_shape = $service_ir->shape($input_name)
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

    # REST-XML body wrapping. Two cases, both rendered as class
    # methods that `Paws::Net::RestXmlCaller::_to_xml_body` consults.
    #
    #   (a) The input shape has a `payload` member targeting a
    #       structure. The wire body is *only* that member's value,
    #       wrapped in <PayloadElement xmlns="...">...</PayloadElement>.
    #       Element name comes from the payload member's locationName
    #       (falling back to the member name); namespace from the
    #       payload-target shape's xml_namespace, falling back to the
    #       service xml_namespace. Streaming payloads (httpPayload on
    #       a blob/string with smithy.api#streaming) are excluded
    #       here — they're handled by _stream_param.
    #
    #   (b) The input shape has no payload member but the service
    #       carries a default xml_namespace. The wire body is every
    #       body member iterated, wrapped in
    #       <InputShape xmlns="...">...</InputShape>. SelectObjectContent
    #       is the canonical example: input shape
    #       SelectObjectContentRequest gets wrapped with the S3
    #       service's xmlns.
    #
    # Anything else (input has no payload, service has no xml_namespace)
    # gets no wrapper — the existing iterate-each-attribute path in
    # the wire layer handles it as before.
    my @xml_class_methods;
    if ($service_ir->protocol eq 'rest-xml' && $input_shape) {
        my $payload_name = $input_shape->payload;
        my $payload_target;
        my $payload_streaming = 0;
        if (defined $payload_name) {
            my $member = $input_shape->members->{$payload_name};
            $payload_target   = $member ? $service_ir->shape($member->shape) : undef;
            $payload_streaming = $member && $member->streaming ? 1 : 0;
        }

        if (   defined $payload_name
            && $payload_target
            && $payload_target->is_structure
            && !$payload_streaming
        ) {
            my $member  = $input_shape->members->{$payload_name};
            my $element = $member->locationName // $payload_name;
            my $ns      = $payload_target->xml_namespace
                       // $service_ir->xml_namespace;
            if (defined $ns) {
                push @xml_class_methods,
                    "sub _payload_member    { '" . _esc($payload_name) . "' }",
                    "sub _payload_element   { '" . _esc($element) . "' }",
                    "sub _payload_namespace { '" . _esc($ns) . "' }";
            }
        }
        elsif (!defined $payload_name) {
            my $ns      = $input_shape->xml_namespace
                       // $service_ir->xml_namespace;
            my $element = $input_shape->xml_name
                       // $input_shape->name;
            # Only emit when there's something for the wire layer to
            # do. A wrapper around zero body members produces empty
            # `<ShapeName xmlns="ns"></ShapeName>` envelopes that
            # AWS doesn't expect on no-body requests; gate on
            # whether the input shape has at least one body member
            # by checking that there's something non-located.
            my $has_body_member = 0;
            for my $mname (keys %{ $input_shape->members }) {
                my $loc = $input_shape->members->{$mname}->location;
                next if defined $loc && $loc ne '';
                $has_body_member = 1;
                last;
            }
            if (defined $ns && $has_body_member) {
                push @xml_class_methods,
                    "sub _top_level_element   { '" . _esc($element) . "' }",
                    "sub _top_level_namespace { '" . _esc($ns) . "' }";
            }
        }
    }

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

@{[ join("\n", @xml_class_methods) ]}

        1;
    };

    $self->_emit_or_eval($op_pkg, $src);

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

    $self->_emit_or_eval($pkg, $src);

    Paws::SerDes->register($pkg, \@serdes_records);

    $self->_materialised_classes->{$pkg} = 1;
    return $pkg;
}

sub _install_structure_members {
    my ($self, $shape, $service_ir, $attr_lines, $serdes_records) = @_;

    my %required = map { $_ => 1 } @{ $shape->required_members };

    for my $mname (sort keys %{ $shape->members }) {
        my $m = $shape->members->{$mname};
        my $type_expr   = $self->_type_expr($service_ir, $m->shape);
        my $type_string = $self->_type_string($service_ir, $m->shape);

        # Derive trait info for the SerDes side-table. The
        # `flattened` flag is true if EITHER the target list shape
        # carries `xmlFlattened` (Shape->flattened) or the member
        # itself does (Member->flattened); the wire layer treats
        # both as equivalent. S3 hits both forms across its model.
        my $target_shape   = $service_ir->shape($m->shape);
        my $shape_flatten  = $target_shape && $target_shape->is_list && $target_shape->flattened ? 1 : 0;
        my $member_flatten = $m->flattened ? 1 : 0;

        my %record = (
            name          => $mname,
            type          => $type_string,
            wire_key      => $mname,
            location      => 'body',
            location_name => undef,
            traits        => {},
            is_list       => ($type_string =~ /^ArrayRef\[/  ? 1 : 0),
            is_map        => ($type_string =~ /^HashRef\[/   ? 1 : 0),
            flattened     => ($shape_flatten || $member_flatten ? 1 : 0),
        );
        if (defined(my $loc = $m->location)) {
            if ($loc eq 'header') {
                $record{traits}{ParamInHeader} = 1;
                $record{location} = 'header';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'headers') {
                $record{traits}{ParamInHeaders} = 1;
                $record{location} = 'headers';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'querystring') {
                $record{traits}{ParamInQuery} = 1;
                $record{location} = 'querystring';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'uri') {
                $record{traits}{ParamInURI} = 1;
                $record{location} = 'uri';
                $record{location_name} = $m->locationName;
            }
        } elsif (defined $m->locationName && $m->locationName ne $mname) {
            $record{traits}{NameInRequest} = 1;
            $record{location_name} = $m->locationName;
            $record{wire_key}      = $m->locationName;
        }
        if (defined $shape->payload && $shape->payload eq $mname) {
            $record{traits}{ParamInBody} = 1;
        }

        push @$serdes_records, \%record;

        my $required_part = $required{$mname} ? ', required => 1' : '';
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

# ===========================================================================
# POD emission (A4-B Phase 1.5: docs companion sub-dist generation)
# ---------------------------------------------------------------------------
# The build pipeline (script/build-modular-docs-dist) calls
# generate_pod_for_service($ir) and writes each entry of the returned
# hashref to lib/Paws/<Service>/<Op|Shape>.pod in the docs sub-dist.
# Entirely separate from the materialise / emit_callback machinery
# above; walks the IR independently. POD-only output, no Perl source.
#
# Quality bar (per docs/distribution-plan-a4b.md §3.1 step 4):
#  - Each operation: NAME, DESCRIPTION (from IR documentation),
#    SYNOPSIS, ATTRIBUTES, SEE ALSO
#  - Each structure shape: NAME, DESCRIPTION, ATTRIBUTES
#  - Top-level service: NAME, DESCRIPTION, OPERATIONS list
#
# Smithy `documentation` traits often embed HTML; this implementation
# does a minimal sanitisation (drop tags, decode named entities,
# preserve C<...> for inline-code and L<...> for hrefs) rather than a
# full HTML→POD translator. Production-quality formatting is
# post-1.0.0.
# ===========================================================================

sub generate_pod_for_service {
    my ($self, $service_ir) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;

    my %pod;
    $pod{$service_pkg} = $self->_pod_for_service($service_ir);

    for my $op_name ($service_ir->operation_names) {
        my $op_pkg = "${service_pkg}::${op_name}";
        $pod{$op_pkg} = $self->_pod_for_operation($service_ir, $op_name);

        # Output shape gets its own .pod entry too. Some services
        # name the output shape after the operation (e.g.
        # CreateBucketOutput); some return shared shapes.
        my $op = $service_ir->operation($op_name);
        if ($op && $op->output_shape) {
            my $out_pkg = "${service_pkg}::" . $op->output_shape;
            if (!exists $pod{$out_pkg}) {
                my $shape = $service_ir->shape($op->output_shape);
                if ($shape && $shape->is_structure) {
                    $pod{$out_pkg} = $self->_pod_for_shape(
                        $service_ir, $op->output_shape,
                    );
                }
            }
        }
    }

    # Every structure shape that the materialiser would build also
    # gets a .pod entry. Walk the IR's shapes list directly so we
    # cover shapes referenced indirectly through other shapes (e.g.
    # nested under list-of-struct members).
    for my $shape_name ($service_ir->shape_names) {
        my $shape = $service_ir->shape($shape_name);
        next if !$shape || !$shape->is_structure;
        my $pkg = "${service_pkg}::${shape_name}";
        next if exists $pod{$pkg};
        $pod{$pkg} = $self->_pod_for_shape($service_ir, $shape_name);
    }

    return \%pod;
}

# Service-level POD: NAME, DESCRIPTION, OPERATIONS (list of method
# links), SEE ALSO.
sub _pod_for_service {
    my ($self, $service_ir) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;

    my $desc = _pod_clean_text($service_ir->documentation)
        // "AWS " . $service_ir->name . " client.";

    my @ops = sort $service_ir->operation_names;
    my @op_lines;
    for my $op (@ops) {
        push @op_lines, "=item L<${service_pkg}::${op}>", "",
                        "C<< \$svc->${op}(...) >>", "";
    }

    my $aws_url = _pod_aws_docs_url($service_ir);

    return _join_pod_lines(
        '=encoding utf-8', '',
        '=head1 NAME', '',
        "${service_pkg} - " . _short_summary($service_ir->name),
        '',
        '=head1 DESCRIPTION', '',
        $desc, '',
        '=head1 OPERATIONS', '',
        '=over 4', '',
        @op_lines,
        '=back', '',
        '=head1 SEE ALSO', '',
        "L<${service_pkg}::*> - per-operation documentation companions.",
        '',
        "L<$aws_url> - canonical AWS service reference.",
        '',
        '=cut',
    );
}

# Operation-level POD: NAME, DESCRIPTION, SYNOPSIS, ATTRIBUTES, SEE ALSO.
sub _pod_for_operation {
    my ($self, $service_ir, $op_name) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;
    my $op_pkg      = "${service_pkg}::${op_name}";

    my $op = $service_ir->operation($op_name)
        // croak "no such operation: $op_name";

    my $desc = _pod_clean_text($op->documentation)
        // "AWS $op_name operation on " . $service_ir->name . ".";

    my $synopsis = "    my \$result = \$svc->${op_name}(\n";
    my @attr_pod;
    if (my $input_name = $op->input_shape) {
        my $input_shape = $service_ir->shape($input_name);
        if ($input_shape && $input_shape->is_structure) {
            my %required = map { $_ => 1 } @{ $input_shape->required_members };
            for my $mname (sort keys %{ $input_shape->members }) {
                my $m = $input_shape->members->{$mname};
                my $type_string = $self->_type_string($service_ir, $m->shape);
                $synopsis .= "        ${mname} => \$$mname,\n";
                my $body = _pod_clean_text($m->documentation)
                    // "($mname member of $op_name input)";
                my $req = $required{$mname} ? ' (required)' : '';
                push @attr_pod,
                    "=head2 ${mname} => ${type_string}${req}", "",
                    $body, "";
            }
        }
    }
    $synopsis .= "    );";
    if (!@attr_pod) {
        push @attr_pod, "(no input attributes)", "";
    }

    my $output_section = '';
    if (my $output_name = $op->output_shape) {
        $output_section = "Returns: L<${service_pkg}::${output_name}>.";
    } else {
        $output_section = "Returns: nothing.";
    }

    my $aws_url = _pod_aws_docs_url($service_ir);

    return _join_pod_lines(
        '=encoding utf-8', '',
        '=head1 NAME', '',
        "${op_pkg} - $op_name operation on " . $service_ir->name,
        '',
        '=head1 DESCRIPTION', '',
        $desc, '',
        '=head1 SYNOPSIS', '',
        $synopsis, '',
        '=head1 ATTRIBUTES', '',
        @attr_pod,
        '=head1 RETURNS', '',
        $output_section, '',
        '=head1 SEE ALSO', '',
        "L<${service_pkg}> - the service this operation belongs to.",
        '',
        "L<$aws_url> - canonical AWS reference for $op_name.",
        '',
        '=cut',
    );
}

# Shape-level POD (structures only): NAME, DESCRIPTION, ATTRIBUTES.
sub _pod_for_shape {
    my ($self, $service_ir, $shape_name) = @_;
    my $service_pkg = 'Paws::' . $service_ir->name;
    my $pkg         = "${service_pkg}::${shape_name}";

    my $shape = $service_ir->shape($shape_name)
        // croak "no such shape: $shape_name";
    my $desc = _pod_clean_text($shape->documentation)
        // "$shape_name shape used by " . $service_ir->name . ".";

    my %required = map { $_ => 1 } @{ $shape->required_members };
    my @attr_pod;
    for my $mname (sort keys %{ $shape->members }) {
        my $m = $shape->members->{$mname};
        my $type_string = eval { $self->_type_string($service_ir, $m->shape) }
            // 'Str';
        my $body = _pod_clean_text($m->documentation)
            // "($mname member of $shape_name)";
        my $req = $required{$mname} ? ' (required)' : '';
        push @attr_pod,
            "=head2 ${mname} => ${type_string}${req}", "",
            $body, "";
    }
    if (!@attr_pod) {
        push @attr_pod, "(no attributes)", "";
    }

    return _join_pod_lines(
        '=encoding utf-8', '',
        '=head1 NAME', '',
        "${pkg} - $shape_name shape from " . $service_ir->name,
        '',
        '=head1 DESCRIPTION', '',
        $desc, '',
        '=head1 ATTRIBUTES', '',
        @attr_pod,
        '=cut',
    );
}

# Concatenate POD lines with a single trailing newline; collapse
# adjacent blank-line markers so the output stays valid POD.
sub _join_pod_lines {
    my @lines = @_;
    my @out;
    my $prev_blank = 0;
    for my $l (@lines) {
        my $is_blank = !defined($l) || $l !~ /\S/;
        if ($is_blank) {
            next if $prev_blank;
            push @out, '';
            $prev_blank = 1;
        } else {
            push @out, $l;
            $prev_blank = 0;
        }
    }
    return join("\n", @out) . "\n";
}

# Cheap HTML→POD sanitiser. Smithy documentation traits often look
# like:
#   <p>Creates a new bucket. <a href="...">See more</a></p>
# We turn that into a single paragraph of plain text. We deliberately
# do NOT try to preserve HTML structure (lists, headings, code blocks)
# — that's post-1.0.0.
sub _pod_clean_text {
    my ($text) = @_;
    return undef if !defined $text || $text eq '';

    # Decode the most common named entities. Smithy traits commonly
    # contain &lt; / &gt; / &amp; / &quot; / &apos; / &#39;.
    $text =~ s/&lt;/</g;
    $text =~ s/&gt;/>/g;
    $text =~ s/&quot;/"/g;
    $text =~ s/&apos;/'/g;
    $text =~ s/&#39;/'/g;
    $text =~ s/&nbsp;/ /g;
    $text =~ s/&amp;/&/g;

    # Convert known HTML to placeholder tokens so the generic
    # tag-stripper at the end doesn't eat them. \x{1} / \x{2} / \x{3}
    # are control characters that won't appear in source documentation.
    # <a href="X">text</a> -> POD L<text|X>, via placeholder. Trim
    # surrounding whitespace inside the link text so Pod::Simple
    # doesn't complain "L<> starts or ends with whitespace".
    $text =~ s{<a\s+[^>]*href="([^"]+)"[^>]*>(.*?)</a>}{
        my ($url, $body) = ($1, $2);
        $body =~ s/^\s+|\s+$//g;
        $body = '_' if $body eq '';
        "\x{1}L\x{2}${body}|${url}\x{3}"
    }gise;
    # <code>X</code> -> POD C<X>; trim inner whitespace so
    # 'starts/ends with whitespace' doesn't fire here either.
    $text =~ s{<code>(.*?)</code>}{
        my $body = $1;
        $body =~ s/^\s+|\s+$//g;
        "\x{1}C\x{2}${body}\x{3}"
    }gise;
    # <p> ... </p> -> blank-line paragraph break
    $text =~ s{</?p[^>]*>}{\n\n}gis;
    $text =~ s{<br\s*/?>}{\n}gis;
    $text =~ s{<li[^>]*>}{\n* }gis;
    # Drop everything else.
    $text =~ s{<[^>]+>}{}gis;
    # Restore placeholders to POD format codes.
    $text =~ s/\x{1}/</g;   # < marker -> literal <
    $text =~ s/\x{2}/</g;   # placeholder1 -> POD <
    $text =~ s/\x{3}/>/g;   # closer -> POD >
    # The L<>/C<> tokens after the swap above look like "<L<text|url>"
    # — trim the leading "<" we used as a marker.
    $text =~ s{<L<}{L<}g;
    $text =~ s{<C<}{C<}g;

    # POD escapes: leading-equals on a line is a directive marker;
    # rewrite by indenting the line with a single space so the
    # paragraph stays a body paragraph.
    $text =~ s/^=/ =/gm;

    # Collapse runs of whitespace to a single space within paragraphs;
    # collapse 3+ newlines to 2 (paragraph break).
    $text =~ s/[ \t]+/ /g;
    $text =~ s/\n{3,}/\n\n/g;
    $text =~ s/^\s+|\s+$//g;

    return $text;
}

# Best-effort AWS docs URL guess. Smithy IR doesn't carry a
# `documentation_url` trait directly on the service, so fall back to
# the generic per-service page on docs.aws.amazon.com.
sub _pod_aws_docs_url {
    my ($service_ir) = @_;
    my $ep = $service_ir->endpoint_prefix // lc $service_ir->name;
    return "https://docs.aws.amazon.com/$ep/";
}

# Cheap one-line summary used in =head1 NAME lines. Lifted from the
# IR's `documentation` field if present, otherwise generic.
sub _short_summary {
    my ($svc) = @_;
    return "AWS $svc client";
}

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
