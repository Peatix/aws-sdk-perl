# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::JsonResponse;
  use Moo;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
  use Paws::SerDes;
  use feature 'state';

  sub process {
    my ($self, $call_object, $response) = @_;

    if ($response->has_header('x-amz-crc32')) {
      require String::CRC32;
      my $crc = String::CRC32::crc32($response->content);
      return Paws::Exception->new(
        code => 'Crc32Error',
        message => 'Content CRC32 mismatch',
        request_id => $response->header('x-amzn-requestid'),
      ) if ($crc != $response->header('x-amz-crc32'));
    }

    if ( $response->status >= 300 ) {
        return $self->error_to_exception($call_object, $response);
    } else {
        return $self->response_to_object($call_object, $response);
    }
  }
 
  sub unserialize_response {
    my ($self, $response) = @_;

    return {} if (not defined $response->content or $response->content eq '');

    my $struct = eval { decode_json( $response->content ) };
    if ($@) {
      return Paws::Exception->throw(
        message => $@,
        code => 'InvalidContent',
        request_id => '',
        http_status => $response->status,
      );
    }
    return $struct;
  }

  sub error_to_exception {
    my ($self, $call_object, $response) = @_;
    
    my $struct = $self->unserialize_response( $response );
    my ($message, $request_id);

    my $code = $struct->{__type} // 'InvalidContent';
    if ($code =~ m/#/) {
      $code = (split /#/, $code)[1];
    }

    if (exists $struct->{message}){
      $message = $struct->{message} // '';
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message} // '';
    } else {
      $message = $code;
    }

    $request_id = $response->header('x-amzn-requestid') // '';

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      http_status => $response->status,
    );
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => $value);
    }
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;

    my $is_array = 0;
    my $inner_class;
    my $class = Paws::SerDes->for($att_class)->type_for('Map');

    if (my ($array_type) = ($class =~ m/^HashRef\[ArrayRef\[(.*)\]\]$/)){
      $inner_class = $array_type;
      $is_array = 1;
    } elsif (my ($inner_type) = ($class =~ m/^HashRef\[(.*)\]$/)) {
      $inner_class = $inner_type;
      $is_array = 0;
    }

    $inner_class = Paws::_unwrap_class_from_type_string($inner_class);
    Paws->load_class("$inner_class");

    if ($is_array) {
      if (not defined $value){
        return $att_class->new(Map => {});
      } else {
        return $att_class->new(Map => { 
          map { my $k = $_; ($k => [ map { $self->new_from_result_struct($inner_class, $_)  } @{ $value->{ $k } } ] ) } keys %$value 
        });
      }
    } else {
      if (not defined $value){
        return $att_class->new(Map => {});
      } else {
        return $att_class->new(Map => { 
          map { ($_ => $self->new_from_result_struct($inner_class, $value->{ $_ }) ) } keys %$value 
        });
      }
    }
  }

  sub new_from_result_struct {
    my ($self, $class, $result) = @_;
    my %args;

    my $serdes = Paws::SerDes->for($class);

    if ($serdes->is_str_to_obj_map) {
      return $self->handle_response_strtoobjmap($class, $result);
    } elsif ($serdes->is_str_to_native_map) {
      return $self->handle_response_strtonativemap($class, $result);
    }

    for my $att ($serdes->all_attribute_names) {
      my $key = $serdes->trait_for($att, 'NameInRequest')  ? $serdes->wire_key_for($att)
              : $serdes->trait_for($att, 'ParamInHeader')  ? lc($serdes->location_name_for($att))
              : $att;

      my $att_type = $serdes->type_for($att);
      $att_type = Paws::_unwrap_class_from_type_string($att_type);

    #  use Data::Dumper;
    #  print STDERR "USING KEY:  $key\n";
    #  print STDERR "$att IS A '$att_type' TYPE\n";
    #  print STDERR "VALUE: " . Dumper($result);
    #  my $extracted_val = $result->{ $key };
    #  print STDERR "RESULT >>> $extracted_val\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($att_type =~ m/\:\:/) {
          # att_type is the string form of a class name (e.g.
          # 'Paws::EC2::Instance').
          Paws->load_class($att_type);
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              my $att_class    = $att_type;
              my $att_serdes   = Paws::SerDes->for($att_class);

              if ($att_serdes->is_str_to_obj_map) {
                $args{ $att } = $self->handle_response_strtoobjmap($att_class, $value);
              } elsif ($att_serdes->is_str_to_native_map) {
                $args{ $att } = $self->handle_response_strtonativemap($att_class, $value);
              } elsif ($att_class->can('does') && $att_class->does('Paws::API::MapParser')) {
                # JSON-protocol responses send maps as objects (HashRef
                # keyed by the enum value). XML/Query-protocol responses
                # send them as arrays of {Name,Value} pairs and use
                # xml_keys/xml_values to know which sub-keys to read.
                # (Behaviour from master; introspection via SerDes from PR11+.)
                if ($value_ref eq 'HASH') {
                  $args{ $att } = $att_class->new(%$value);
                } else {
                  my $xml_keys = $att_class->xml_keys;
                  my $xml_values = $att_class->xml_values;
                  $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
                }
              } else {
                $args{ $att } = $self->new_from_result_struct($att_class, $value);
              }
            }
          }
        } else {
          if (defined $value) {
            if ($att_type eq 'Bool') {
              if ($value eq 'true') {
                $args{ $att } = 1;
              } elsif ($value eq 'false') {
                $args{ $att } = 0;
              } elsif ($value == 1) {
                $args{ $att } = 1;
              } else {
                $args{ $att } = 0;
              }
            } elsif ($serdes->is_blob($att)) {
              # Blobs arrive base64-encoded in JSON; hand back raw bytes.
              require MIME::Base64;
              $args{ $att } = MIME::Base64::decode_base64($value);
            } else {
              $args{ $att } = $value;
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);

        if (my ($maptype) = ($type =~ m/^HashRef\[(.*)\]$/)) {
          # ArrayRef[HashRef[X]]: a list of maps (e.g. DynamoDB
          # Query/Scan Items, where each item is a map of
          # AttributeValue). Decode each element as a map.
          $maptype = Paws::_unwrap_class_from_type_string($maptype);
          if (defined $value) {
            if ($maptype =~ m/\:\:/) {
              Paws->load_class($maptype);
              $args{ $att } = [ map { my $m = $_;
                +{ map { ($_ => $self->new_from_result_struct($maptype, $m->{ $_ })) } keys %$m }
              } @$value ];
            } else {
              $args{ $att } = $value;
            }
          }
          next;
        }

        $type = Paws::_unwrap_class_from_type_string($type);

        # An *optional* absent list member is left unset, NOT fabricated
        # as []: the latter corrupts union-like shapes - a DynamoDB
        # AttributeValue decoded with only S would also gain L => [],
        # so sending it back (e.g. as ExclusiveStartKey) failed with
        # "AttributeValue has more than one datatype set". A *required*
        # absent list still defaults to [] so the Moo constructor
        # doesn't die (e.g. SQS SendMessageBatch's required Failed list
        # is omitted when every message succeeds).
        if (defined $value) {
          if ($type =~ m/\:\:/) {
            Paws->load_class($type);
            my $type_serdes = Paws::SerDes->for($type);

            if ($type_serdes->is_str_to_obj_map) {
              $args{ $att } = [ map { $self->handle_response_strtoobjmap($type, $_) } @$value ];
            } elsif ($type_serdes->is_str_to_native_map) {
              $args{ $att } = [ map { $self->handle_response_strtonativemap($type, $_) } @$value ];
            } elsif ($type->can('does') && $type->does('Paws::API::MapParser')) {
              die "MapParser Type in an Array. Please implement me";
            } else {
              $args{ $att } = [ map { $self->new_from_result_struct($type, $_) } @$value ];
            }
          } else {
            $args{ $att } = $value;
          }
        } elsif (($serdes->attributes->{$att} // {})->{is_required}) {
          $args{ $att } = [];
        }
      } elsif (my ($maptype) = ($att_type =~ m/^HashRef\[(.*)\]$/)) {
        # Map member. The materialiser models maps as a plain
        # HashRef[X] attribute, so without this branch map attributes
        # in a JSON response were silently dropped (e.g. SQS
        # GetQueueAttributes Attributes, DynamoDB GetItem Item).
        $maptype = Paws::_unwrap_class_from_type_string($maptype);
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        if (defined $value) {
          if ($maptype =~ m/\:\:/) {
            Paws->load_class($maptype);
            $args{ $att } = { map { ($_ => $self->new_from_result_struct($maptype, $value->{ $_ })) } keys %$value };
          } else {
            $args{ $att } = $value;
          }
        }
      }
    }

    # Surface the request id (set on the struct by response_to_object
    # from the x-amzn-requestid header) on the result object. Without
    # this, $result->_request_id was undef on success, so the request
    # id never reached callers or the Log interceptor.
    $args{_request_id} = $result->{_request_id} if exists $result->{_request_id};

    return $class->new(%args);
  }

  sub response_to_object {
    my ($self, $call_object, $response) = @_;

    # The hot path treats $call_object as the *class name* below; the
    # original code reached for $call_object->meta->name which is a
    # round-trip way of getting ref($call_object).
    $call_object = ref($call_object) || $call_object;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);

    my $headers = $response->headers;
    my $request_id = $headers->{'x-amz-request-id'} || $headers->{'x-amzn-requestid'};
    # AWS has sent duplicate headers x-amx-request-id headers on some services. See issue 324 for more info
    $request_id = (ref($request_id) eq 'ARRAY') ? $request_id->[0] : $request_id;
 
    return Paws::API::Response->new(_request_id => $request_id) if (not $returns);

    my $unserialized_struct = $self->unserialize_response( $response );
    $unserialized_struct->{ _request_id } = $request_id;
    my $o_result = $self->new_from_result_struct($call_object->_returns, $unserialized_struct);
    return $o_result;
  }

1;
