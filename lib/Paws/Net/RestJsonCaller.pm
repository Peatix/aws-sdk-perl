package Paws::Net::RestJsonCaller;
  use Paws;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 
  use URI::Template;
  use JSON::MaybeXS;
  use Scalar::Util;

  use Paws::Net::RestJsonResponse;
  use Paws::SerDes;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::RestJsonResponse->new;
    }
  );

  # converts the objects that represent the call into parameters that
  # the API can understand. PR11: routed through Paws::SerDes.
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;
    my $serdes = Paws::SerDes->for($params);

    my %p;
    for my $att ($serdes->serializable_attributes) {
      # Skip attributes that go elsewhere on the wire (header / query
      # string / URI / body-as-payload).
      my $loc = $serdes->location_for($att);
      next if $loc eq 'header' || $loc eq 'headers'
           || $loc eq 'querystring' || $loc eq 'uri';
      next if $serdes->trait_for($att, 'ParamInBody');

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
        $p{$key} = "" . $value;
      } elsif (Paws->is_internal_type($type)) {
        $p{$key} = $value;
      } elsif ($type =~ m/^ArrayRef\[(.*)\]/) {
        my $inner = $1;
        if (Paws->is_internal_type($inner)) {
          $p{$key} = $value;
        } else {
          $p{$key} = [ map { $self->_to_jsoncaller_params($_) } @$value ];
        }
      } elsif (defined $type_object && $type_object->isa('Moose::Meta::TypeConstraint::Enum')) {
        $p{$key} = $value;
      } else {
        my $value_serdes = Paws::SerDes->for($value);
        if ($value_serdes->is_str_to_native_map) {
          $p{$key} = { %{ $value->Map } };
        } elsif ($value_serdes->is_str_to_obj_map) {
          my $map_type = $value_serdes->type_for('Map');
          if ($map_type =~ m/^HashRef\[ArrayRef\[/) {
            $p{$key} = {
              map { my $k = $_;
                    ( $k => [ map { $self->_to_jsoncaller_params($_) }
                                  @{ $value->Map->{$_} } ] )
                  } keys %{ $value->Map }
            };
          } else {
            $p{$key} = {
              map { $_ => $self->_to_jsoncaller_params($value->Map->{$_}) }
              keys %{ $value->Map }
            };
          }
        } else {
          $p{$key} = $self->_to_jsoncaller_params($value);
        }
      }
    }
    return \%p;
  }

  sub _call_uri {
    my ($self, $call) = @_;
    my $uri_template = ref($call) . '';
    $uri_template = $call->_api_uri;
    my $t = URI::Template->new( $uri_template );

    my $serdes = Paws::SerDes->for($call);

    my $vars = {};
    for my $att ($serdes->serializable_attributes) {
      next if !$serdes->trait_for($att, 'ParamInURI');
      $vars->{ $serdes->location_name_for($att) } = $call->$att;
    }

    my $uri = $t->process($vars);
    return $uri;
  }

  sub _to_header_params {
    my ($self, $request, $call) = @_;
    my $serdes = Paws::SerDes->for($call);
    for my $att ($serdes->serializable_attributes) {
      next if !$serdes->trait_for($att, 'ParamInHeader');
      my $value = $call->$att;
      next if !defined $value;
      $request->headers->header(
        $serdes->location_name_for($att) => $value,
      );
    }
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    my $uri = $self->_call_uri($call);

    my $serdes  = Paws::SerDes->for($call);
    my $qparams = { $uri->query_form };
    for my $att ($serdes->serializable_attributes) {
      next if !$serdes->trait_for($att, 'ParamInQuery');
      my $value = $call->$att;
      next if !defined $value;
      $qparams->{ $serdes->location_name_for($att) } = $value;
    }
    $uri->query_form(%$qparams);

    $request->uri($uri->as_string);
    my $url = $self->_api_endpoint . $uri->as_string;
    $request->url($url);

    $self->_to_header_params($request, $call);

    if ($call->can('_stream_param')) {
      my $param_name = $call->_stream_param;
      if (Scalar::Util::blessed($call->$param_name)){
          my $attribute = $call->$param_name;
          my $content   = $self->_to_jsoncaller_params($attribute);
          # The historical code peeked at $call->meta->get_attribute($param_name)
          # to see if the stream attribute carried NameInRequest, but
          # the wrapping was always commented out. SerDes-equivalent
          # would be:
          #   my $serdes = Paws::SerDes->for($call);
          #   if ($serdes->trait_for($param_name, 'NameInRequest')) {
          #     $content = { $serdes->wire_key_for($param_name) => $content };
          #   }
          $content = encode_json($content);
          $request->content($content);
          $request->headers->header('Content-Type'=>'application/json');
          $request->headers->header('Content-Length'=>length($content));
      } else {
          $request->content($call->$param_name);
      }
    } else {
      my $data = $self->_to_jsoncaller_params($call);
      $request->content(encode_json($data)) if (keys %$data);
    }
    $request->method($call->_api_method);

    $self->sign($request);

    return $request;
  }
1;
