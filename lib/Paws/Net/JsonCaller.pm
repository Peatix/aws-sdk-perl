package Paws::Net::JsonCaller;
  use Paws;
  use Moose::Role;
  use JSON::MaybeXS;
  use POSIX qw(strftime);
  requires 'json_version';

  use Paws::Net::JsonResponse;
  use Paws::SerDes;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::JsonResponse->new;
    }
  );

  # converts the objects that represent the call into parameters that
  # the API can understand. PR11 routes wire metadata lookups through
  # Paws::SerDes (built once per class, cached) instead of round-
  # tripping through $obj->meta->get_attribute(...) on every request.
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;

    my $serdes = Paws::SerDes->for($params);

    if ($serdes->is_str_to_native_map) {
      return { %{ $params->Map } };
    } elsif ($serdes->is_str_to_obj_map) {
      # The Map attribute on str-to-obj parsers is a HashRef[X] where
      # X may itself be ArrayRef[...]. Look at the inner type via the
      # side-table.
      my $type = $serdes->type_for('Map');
      if ($type =~ m/^HashRef\[ArrayRef\[/) {
        return { map { my $k = $_;
                       ( $k => [ map { $self->_to_jsoncaller_params($_) }
                                     @{ $params->Map->{$_} } ] )
                     } keys %{ $params->Map } };
      } else {
        return { map { $_ => $self->_to_jsoncaller_params($params->Map->{$_}) }
                 keys %{ $params->Map } };
      }
    } else {
      my %p;
      for my $att ($serdes->serializable_attributes) {
        my $value = $params->$att;
        next if !defined $value;

        my $key  = $serdes->wire_key_for($att);
        my $type = $serdes->type_for($att);
        my $type_object = $serdes->type_object_for($att);

        if ($type eq 'Bool') {
          $p{$key} = $value ? \1 : \0;
        } elsif ($type eq 'Int') {
          $p{$key} = int($value);
        } elsif ($type eq 'Str') {
          # concatenate an empty string so numbers get transmitted as strings
          $p{$key} = "" . $value;
        } elsif (Paws->is_internal_type($type)) {
          $p{$key} = $value;
        } elsif ($type =~ m/^ArrayRef\[(.*)\]/) {
          my $inner = $1;
          if (Paws->is_internal_type($inner)) {
            $p{$key} = $value;
          } elsif ($inner =~ m/^HashRef\[(.+)\]$/) {
            # ArrayRef[HashRef[X]] - array of maps. DynamoDB
            # BatchGetItem.Keys lands here.
            my $element = $1;
            if (Paws->is_internal_type($element)) {
              $p{$key} = $value;
            } else {
              $p{$key} = [
                map {
                  my $h = $_;
                  +{ map { ($_ => $self->_to_jsoncaller_params($h->{$_})) }
                         keys %$h };
                } @$value
              ];
            }
          } else {
            $p{$key} = [ map { $self->_to_jsoncaller_params($_) } @$value ];
          }
        } elsif ($type =~ m/^HashRef\[(.*)\]/) {
          # Inline HashRef[X]: the materialiser emits this for botocore
          # `map` shapes that the AOT path used to wrap in a per-map
          # parser class. Native value types pass through; object
          # value types recurse one entry at a time. The
          # HashRef[ArrayRef[...]] case is supported because some
          # services (DynamoDB BatchWriteItem, ECS, ...) nest an
          # array-of-objects under each map key.
          my $inner = $1;
          if (Paws->is_internal_type($inner)) {
            $p{$key} = $value;
          } elsif ($inner =~ m/^ArrayRef\[(.+)\]$/) {
            my $element = $1;
            if (Paws->is_internal_type($element)) {
              $p{$key} = $value;
            } else {
              $p{$key} = {
                map { my $k = $_;
                      ($k => [ map { $self->_to_jsoncaller_params($_) } @{ $value->{$k} } ])
                    } keys %$value
              };
            }
          } else {
            $p{$key} = { map { $_ => $self->_to_jsoncaller_params($value->{$_}) }
                         keys %$value };
          }
        } elsif (defined $type_object && $type_object->isa('Moose::Meta::TypeConstraint::Enum')) {
          $p{$key} = $value;
        } else {
          # nested structure: recurse via SerDes
          $p{$key} = $self->_to_jsoncaller_params($value);
        }
      }
      return \%p;
    }
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    $request->url($self->_api_endpoint . '/');
    $request->uri('/');
    $request->method('POST');

    my $creds = $self->credentials->refresh;

    my @time = gmtime;
    $request->parameters({ Action => $call->_api_call,
                           Version => $self->version,
                           AWSAccessKeyId => $creds->access_key,
                           Timestamp => strftime("%Y-%m-%dT%H:%M:%SZ",@time),
                        });
    $request->header('X-Amz-Target', sprintf('%s.%s', $self->target_prefix, $call->_api_call));

    my $j_version = $self->json_version;
    $request->headers->content_type("application/x-amz-json-$j_version");

    #$request->header('Content-Encoding', 'amz-1.0');
    $request->header( 'X-Amz-Date' => strftime( '%Y%m%dT%H%M%SZ', @time ) );
    $request->header( Host => $self->endpoint_host );

    my $data = $self->_to_jsoncaller_params($call);
    $request->content(encode_json($data));

    $self->sign($request, $creds);

    return $request;
  }
1;
