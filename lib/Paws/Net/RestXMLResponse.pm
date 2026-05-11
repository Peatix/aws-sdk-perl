package Paws::Net::RestXMLResponse;
  use Moose;
  with 'Paws::Net::ResponseRole';
  use XML::Simple qw//;
  use Carp qw(croak);
  use HTTP::Status;
  use Paws::Exception;
  use Paws::SerDes;

  sub unserialize_response {
    my ($self, $response) = @_;

    my $data = $response->content;
    return Paws::Exception->new(
        message => $@,
        code => 'InvalidContent',
        request_id => '', #$request_id,
        http_status => $response->status,
      ) if (not defined $data or $data eq '');
    
    my $xml = XML::Simple->new(
      ForceArray    => qr/^(?:^item$|Errors)/i,
      KeyAttr       => '',
      SuppressEmpty => undef,
    );
    my $struct = eval { $xml->parse_string($data) };
    if ($@){
      return Paws::Exception->new(
        message => $@,
        code => 'InvalidContent',
        request_id => '', #$request_id,
        http_status => $response->status,
      );
    }

    return $struct;
  }

  sub process {
    my ($self, $call_object, $response) = @_;

    if ( $response->status >= 300 ) {
        return $self->error_to_exception($call_object, $response);
    } else {
        return $self->response_to_object($call_object, $response);
    }
  }

  sub error_to_exception {
    my ($self, $call_object, $response) = @_;

    my $struct = eval { $self->unserialize_response( $response ) };

    my ($message, $code, $request_id, $host_id);

    $message = status_message($response->status);
    $code = $response->status;

    if (exists $struct->{RequestId}) {
      $request_id = $struct->{RequestId};
    } elsif (exists $struct->{RequestID}){
      $request_id = $struct->{RequestID};
    } elsif ($response->has_header('x-amzn-requestid')) {
      $request_id = $response->header('x-amzn-requestid');
    } else {
      $request_id = '';
    }
    $host_id = $response->header('x-amz-id-2');

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      host_id => $host_id,
      http_status => $response->status,
    );
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

    my $value_ref = ref($value);
    if ($value_ref eq 'HASH') {
      if (exists $value->{ member }) {
        $value = $value->{ member };
      } elsif (exists $value->{ entry }) {
        $value = $value->{ entry  };
      } elsif (keys %$value == 1) {
        $value = $value->{ (keys %$value)[0] };
      } else {
        #die "Can't detect the item that has the array in the response hash";
      }
      $value_ref = ref($value);
    }
        
    my $inner_class = Paws::SerDes->for($att_class)->type_for('Map');
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $self->new_from_result_struct($inner_class, $_->{ $xml_values }) ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $self->new_from_result_struct($inner_class, $value->{ $xml_values }) });
    } elsif (not defined $value){
      return $att_class->new(Map => {});
    }  
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

    my $value_ref = ref($value);
    if ($value_ref eq 'HASH') {
      if (exists $value->{ member }) {
        $value = $value->{ member };
      } elsif (exists $value->{ entry }) {
        $value = $value->{ entry  };
      } elsif (keys %$value == 1) {
        $value = $value->{ (keys %$value)[0] };
      } else {
        #die "Can't detect the item that has the array in the response hash";
      }
      $value_ref = ref($value);
    }
        
    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $_->{ $xml_values } ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $value->{ $xml_values } } );
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
      my $key = $serdes->trait_for($att, 'NameInRequest') ? $serdes->wire_key_for($att)
              : $serdes->trait_for($att, 'ParamInHeader') ? lc($serdes->location_name_for($att))
              : $att;

      my $att_type = $serdes->type_for($att);
      my $att_is_required =
            ($serdes->attributes->{$att} // {})->{is_required} ? 1 : 0;

    #  use Data::Dumper;
    #  print STDERR "USING KEY:  $key\n";
    #  print STDERR "$att IS A '$att_type' TYPE\n";
    #  print STDERR "VALUE: " . Dumper($result);
    #  my $extracted_val = $result->{ $key };
    #  print STDERR "RESULT >>> $extracted_val\n";

      # Free-form parameters passed in the HTTP headers (S3 metadata).
      if ($serdes->trait_for($att, 'ParamInHeaders')) {
        Paws->load_class($att_type);
        my $att_class        = $att_type;
        my $header_prefix    = $serdes->location_name_for($att);
        my @metadata_headers = map { my ($h, $nometa) = ($_, $_); $nometa =~ s/^$header_prefix//; [ $h, $nometa ] } grep /^$header_prefix/, keys %{$result};
        $args{ $att }        = $att_class->new( Map => { map { $_->[1] => $result->{$_->[0]} } @metadata_headers } );
      }
      # We'll consider that an attribute without brackets [] isn't an array type
      elsif ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($att_type =~ m/\:\:/) {
          Paws->load_class($att_type);
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              my $att_class  = $att_type;
              my $att_serdes = Paws::SerDes->for($att_class);

              if ($att_serdes->is_str_to_obj_map) {
                $args{ $att } = $self->handle_response_strtoobjmap($att_class, $value);
              } elsif ($att_serdes->is_str_to_native_map) {
                $args{ $att } = $self->handle_response_strtonativemap($att_class, $value);
              } elsif ($att_class->can('does') && $att_class->does('Paws::API::MapParser')) {
                my $xml_keys = $att_class->xml_keys;
                my $xml_values = $att_class->xml_values;

                #TODO: handle in one place
                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    # Force it to be an arrayref and hope it is processed correctly
                    $value = [ $value ];
                  }
                  $value_ref = ref($value);
                }


                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
              } else {
                $args{ $att } = $self->new_from_result_struct($att_class, $value);
              }
            }
          } else {
              ##########
              # This loop is required to guard against cases (such as Paws::S3::CopyObject) where
              # the root node is removed from the response when unserialising (see KeepRoot => 1 for 
              # XML::Simple) but is required to create the Paws object. This is mostly due to the 
              # implementation of the new_from_result_struct sub 
              my $att_class = $att_type;
              eval {
                $args{ $att } = $self->new_from_result_struct($att_class, $result);
                1;
              } or do {}
          }
        } else {
          # Mirror the empty-element handling in Paws::Net::XMLResponse so
          # that <Marker/> (or any other empty XML node) on a required
          # native attribute gets coerced to '' rather than undef.
          if (not defined $value and $att_is_required and exists $result->{ $key }) {
            $value = '';
          } elsif (defined $value and ref($value) eq 'HASH' and not %$value) {
            $value = '';
          }
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
            } else {
              $args{ $att } = $value;
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

        if ($value_ref eq 'HASH') {
          if (exists $value->{ member }) {
            $value = $value->{ member };
          } elsif (exists $value->{ entry }) {
            $value = $value->{ entry  };
          } elsif (keys %$value == 1) {
            $value = $value->{ (keys %$value)[0] };
          } else {
            #die "Can't detect the item that has the array in the response hash";
          }
          $value_ref = ref($value);
        }
 
        if ($type =~ m/\:\:/) {
          Paws->load_class($type);

          my $val;
          if (not defined $value) {
            $val = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $val = $value;
          } elsif ($value_ref eq 'HASH') {
            $val = [ $value ];
          }

          my $type_serdes = Paws::SerDes->for($type);
          if ($type_serdes->is_str_to_obj_map) {
            $args{ $att } = [ map { $self->handle_response_strtoobjmap($type, $_) } @$val ];
          } elsif ($type_serdes->is_str_to_native_map) {
            $args{ $att } = [ map { $self->handle_response_strtonativemap($type, $_) } @$val ];
          } elsif ($type->can('does') && $type->does('Paws::API::MapParser')) {
            die "MapParser Type in an Array. Please implement me";
          } else {
            $args{ $att } = [ map { $self->new_from_result_struct($type, $_) } @$val ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          } else {
            $args{ $att } = [] if ($att_is_required);
          }
        }
      }
    }

    # _request_id is set on every response via `Paws::Net::ResponseRole`
    # before this loop runs; SerDes records (post-PR11 materialiser
    # path) do not enumerate underscore-prefixed attributes, so the
    # loop above skips it. Copy it explicitly so materialised output
    # classes (which carry `has _request_id => (is => 'ro')` but no
    # SerDes record for it) still surface the request ID to callers
    # asserting against it.
    $args{_request_id} = $result->{_request_id} if exists $result->{_request_id};

    return $class->new(%args);
  }


1;
