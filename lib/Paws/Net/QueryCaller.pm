package Paws::Net::QueryCaller;
  use Paws;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 

  use Paws::Net::XMLResponse;
  use Paws::SerDes;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::XMLResponse->new;
    }
  );

  sub array_flatten_string {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  }

  # converts the objects that represent the call into parameters that
  # the API can understand. PR11 routes wire metadata lookups through
  # Paws::SerDes (built once per class, cached) instead of round-
  # tripping through $obj->meta->get_attribute(...) on every request.
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my $serdes = Paws::SerDes->for($params);

    my %p;
    for my $att ($serdes->serializable_attributes) {
      my $value = $params->$att;
      next if !defined $value;

      my $key  = $serdes->wire_key_for($att);
      my $type = $serdes->type_for($att);

      if (Paws->is_internal_type($type)) {
        if ($type eq 'Bool') {
          $p{ $key } = ($value == 1) ? 'true' : 'false';
        } else {
          $p{ $key } = $value;
        }
      } elsif ($type =~ m/^ArrayRef\[(.*)\]/) {
        my $inner = $1;
        if (scalar @$value == 0) {
          # Preserves the long-standing behaviour: empty list serialises
          # as an empty string under the *attribute* name (not the wire
          # key). Comment for posterity in case it surprises a reader.
          $p{ $att } = '';
        } elsif (Paws->is_internal_type($inner)) {
          my $i = 1;
          for my $v (@$value) {
            $p{ sprintf($self->array_flatten_string, $key, $i) } = $v;
            $i++;
          }
        } else {
          my $i = 1;
          for my $v (@$value) {
            my %complex_value = $self->_to_querycaller_params($v);
            map { $p{ sprintf($self->array_flatten_string . '.%s', $key, $i, $_) } = $complex_value{$_} } keys %complex_value;
            $i++;
          }
        }
      } else {
        # Map and structure shapes. Use the value's own SerDes to
        # decide which (we still have to look at the *value*, not the
        # parent attribute, because Map shapes are themselves objects
        # with role-flavoured side-tables).
        my $value_serdes = Paws::SerDes->for($value);
        if ($value_serdes->is_str_to_obj_map) {
          my $i = 1;
          for my $map_key (keys %{ $value->Map }) {
            $p{ "$key.$i.Name" } = $map_key;
            my %complex_value = $self->_to_querycaller_params($value->Map->{$map_key});
            map { $p{ "$key.$i.Value.$_" } = $complex_value{$_} } keys %complex_value;
            $i++;
          }
        } elsif ($value_serdes->is_str_to_native_map) {
          my $i = 1;
          for my $map_key (keys %{ $value->Map }) {
            $p{ "$key.entry.$i.key" }   = $map_key;
            $p{ "$key.entry.$i.value" } = $value->Map->{$map_key};
            $i++;
          }
        } elsif ($value->can('does') && $value->does('Paws::API::MapParser')) {
          # MapParser is a less-common shape that lays out keys as
          # public attributes on the value object itself. The wire
          # layer has always sorted those for stable output.
          my $i = 1;
          for my $map_key ($value_serdes->serializable_attributes) {
            next if !defined $value->$map_key;
            $p{ "$key.$i.Name" }  = $map_key;
            $p{ "$key.$i.Value" } = $value->$map_key;
            $i++;
          }
        } else {
          my %complex_value = $self->_to_querycaller_params($value);
          map { $p{ "$key.$_" } = $complex_value{$_} } keys %complex_value;
        }
      }
    }
    return %p;
  }

  sub generate_content_from_parameters {
    my ($self, $request) = @_;

    $request->headers->content_type('application/x-www-form-urlencoded');
    my $url = URI->new('http:');
    $url->query_form($request->parameters);
    my $content = $url->query;
    # HTML/4.01 says that line breaks are represented as "CR LF" pairs (i.e., `%0D%0A')
    $content =~ s/(?<!%0D)%0A/%0D%0A/g if (defined $content);
    return $content;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    $request->url($self->_api_endpoint . '/');
    $request->uri('/');
    $request->method('POST');

    $request->parameters({ Action => $call->_api_call, 
                           Version   => $self->version,
                           $self->_to_querycaller_params($call) 
    });

    if (not $self->does('Paws::Net::V2Signature')){
      $request->content($self->generate_content_from_parameters($request));
    }

    $self->sign($request);

    return $request;
  }
1;
