# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::RestJsonResponse;
  use Moose;
  with 'Paws::Net::ResponseRole';
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
  use Paws::SerDes;

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

    my ($message, $request_id, $code);

    $message = $struct->{message} if (exists $struct->{message});
    $message = $struct->{Message} if (exists $struct->{Message});
    $message = 'Unrecognized error message format' if (not defined $message);    

    if ($response->has_header('x-amzn-errortype')){
      $code = (split /:/, $response->header('x-amzn-errortype'))[0];
    } elsif (exists $struct->{Code}) {
      $code = $struct->{Code};
    } elsif (exists $struct->{ code }) {
      $code = $struct->{ code };
    } else {
      $code = 'InvalidContent';
    }
    $request_id = $response->header('x-amzn-requestid') // '';

    Paws::Exception->new(
      message => $message // '',
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

    my $inner_class = Paws::SerDes->for($att_class)->type_for('Map');
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => { 
        map { ($_ => $self->new_from_result_struct($inner_class, $value->{ $_ }) ) } keys %$value 
      });
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
                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
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
            } else {
              $args{ $att } = $value;
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

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
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          }
        }
      }
    }
    return $class->new(%args);
  }

1;
