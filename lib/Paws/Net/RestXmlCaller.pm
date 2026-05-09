package Paws::Net::RestXmlCaller;
  use Paws;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime);
  use URI::Template;
  use URI::Escape;
  use Moose::Util;
  use Scalar::Util;

  use Paws::Net::RestXMLResponse;
  use Paws::SerDes;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::RestXMLResponse->new;
    }
  );


  sub array_flatten_string {
    my $self = shift;
    return ($self->flattened_arrays)?'%s.%d':'%s.member.%d';
  }

  # PR11: routed through Paws::SerDes.
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my $serdes = Paws::SerDes->for($params);

    my %p;
    for my $att ($serdes->serializable_attributes) {
      # e.g. S3 metadata objects, which are passed in the header
      next if $serdes->trait_for($att, 'ParamInHeaders');

      my $value = $params->$att;
      next if !defined $value;

      my $key  = $serdes->trait_for($att, 'ParamInQuery')
                   ? $serdes->location_name_for($att)
                   : $att;
      my $type = $serdes->type_for($att);

      if (Paws->is_internal_type($type)) {
        $p{$key} = $value;
      } elsif ($type =~ m/^ArrayRef\[(.*)\]/) {
        my $inner = $1;
        if (Paws->is_internal_type($inner)) {
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
        my %complex_value = $self->_to_querycaller_params($value);
        map { $p{ "$key.$_" } = $complex_value{$_} } keys %complex_value;
      }
    }
    return %p;
  }

  sub _call_uri {
    my ($self, $call) = @_;
    my $uri_template = $call->_api_uri;

    my @uri_attribs = $uri_template =~ /{(.+?)}/g;
    my $vars = {};

    my %uri_attrib_is_greedy;
    for my $attrib (@uri_attribs) {
      my ($att_name, $greedy) = $attrib =~ /(\w+)(\+?)/;
      $uri_attrib_is_greedy{$att_name} = $greedy;
    }

    my $serdes = Paws::SerDes->for($call);
    for my $att ($serdes->serializable_attributes) {
      next if !$serdes->trait_for($att, 'ParamInURI');

      my $non_print = join('', map { chr($_) } (128..255));
      if ($call->$att =~ /[{^}`\[\]><#%'"~|\\$non_print]/) {
        return Paws::Exception->throw(
          message    => "Found unacceptable content in $att parameter",
          code       => 'InvalidInput',
          request_id => '',
        );
      }

      my $uri_name = $serdes->location_name_for($att);
      if ($uri_attrib_is_greedy{$att}) {
          $vars->{$uri_name} = uri_escape_utf8($call->$att, q[^A-Za-z0-9\-\._~/]);
          $uri_template      =~ s{$att\+}{\+$att}g;
      } else {
          $vars->{$uri_name} = $call->$att;
      }
    }

    my $t = URI::Template->new($uri_template);
    return $t->process($vars);
  }

  sub _to_header_params {
    my ($self, $request, $call) = @_;
    my $serdes = Paws::SerDes->for($call);

    for my $att ($serdes->serializable_attributes) {
      if ($serdes->trait_for($att, 'AutoInHeader')) {
        my $auto = $serdes->auto_for($att) // '';
        if ($auto eq 'MD5') {
          require MIME::Base64;
          require Digest::MD5;
          my $value = $call->$att;
          if (!defined $value) {
            $value = MIME::Base64::encode_base64(
                Digest::MD5::md5($request->content // ''));
            chomp $value;
          }
          $request->headers->header(
            $serdes->location_name_for($att) => $value,
          );
        }
        next;
      }

      my $value = $call->$att;
      next if !defined $value;

      if ($serdes->trait_for($att, 'ParamInHeader')) {
        $request->headers->header(
          $serdes->location_name_for($att) => $value,
        );
      } elsif ($serdes->trait_for($att, 'ParamInHeaders')) {
        # ParamInHeaders typed attributes were Paws::S3::Metadata-style
        # parser objects in the AOT path (with a `Map` accessor). The
        # materialiser emits them as inline HashRef[Str] instead, so
        # accept either form.
        my $map = (Scalar::Util::blessed($value) && $value->can('Map'))
                  ? $value->Map : $value;
        my $prefix = $serdes->location_name_for($att);
        for my $header (keys %$map) {
          $request->headers->header(
            $prefix . $header => $map->{$header},
          );
        }
      }
    }
  }

  # URI escaping adapted from URI::Escape
  #c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
  # perl 5.6 ready UTF-8 encoding adapted from JSON::PP
  our %escapes = map { chr($_) => sprintf("%%%02X", $_) } 0..255;
  our $unsafe_char = qr/[^A-Za-z0-9\-\._~]/;

  sub _uri_escape {
    my ($self, $str) = @_;
    utf8::encode($str);
    $str =~ s/($unsafe_char)/$escapes{$1}/ge;
    $str =~ s/ /+/go;
    return $str;
  }

  # PR11: SerDes-driven; no per-attribute Moose meta lookups.
  # The type_string -> "is a Paws structure class?" check still uses
  # Moose::Util::find_meta because that is the same answer regardless
  # of OO backend (Moo classes inflate on first MOP touch). The wire
  # layer's hot path doesn't go through here for the protocols
  # tested in PR4 (json/restjson/query); RestXML's xml-building is
  # only exercised by S3, Route53, CloudFront, etc.
  sub _attribute_to_xml {
    my ($self, $owner_serdes, $att_name, $value) = @_;
    my $type     = $owner_serdes->type_for($att_name);
    my $location = $owner_serdes->trait_for($att_name, 'NameInRequest')
                     ? $owner_serdes->wire_key_for($att_name)
                     : $att_name;

    my $xml;
    if (Moose::Util::find_meta($type)) {
      $xml = sprintf '<%s>%s</%s>', $location, $self->_to_xml($value), $location;
    }
    elsif ($type =~ m/^ArrayRef\[(Str(?:\|Undef)?|Num|Int|Bool)\]$/) {
      # Array of native scalars. The wire layer wraps the array in
      # <attr>, then emits <name>$value</name> per element where
      # `name` is the wire_key (the AOT path bubbles the list's
      # member locationName up to the parent attribute via the
      # NameInRequest trait, so wire_key already contains 'Path' /
      # 'member' / etc. by the time we reach here).
      my $req_name = $owner_serdes->wire_key_for($att_name);
      $xml = "<${att_name}>"
           . ( join '', map { sprintf '<%s>%s</%s>', $req_name, $_, $req_name } @$value )
           . "</${att_name}>";
    }
    elsif ($type =~ m/^ArrayRef\[(.*?::.*)\]/) {
      # Array of Paws API objects.
      $xml = join '', map { sprintf '<%s>%s</%s>', $location, $self->_to_xml($_), $location } @$value;
      if (!$self->flattened_arrays) {
        $xml = sprintf('<%s>%s</%s>', $att_name, $xml, $att_name);
      }
    }
    else {
      $xml = sprintf '<%s>%s</%s>', $location, $value, $location;
    }
    return $xml;
  }

  sub _to_xml {
    my ($self, $value) = @_;
    my $serdes = Paws::SerDes->for($value);

    my $xml = '';
    for my $att ($serdes->serializable_attributes) {
      my $v = $value->$att;
      next if !defined $v;
      $xml .= $self->_attribute_to_xml($serdes, $att, $v);
    }
    return $xml;
  }

  sub _to_xml_body {
    my ($self, $call) = @_;
    my $serdes = Paws::SerDes->for($call);

    my $stream_param = $call->can('_stream_param') ? $call->_stream_param : undef;

    my $xml = '';
    for my $att ($serdes->serializable_attributes) {
      my $v = $call->$att;
      next if !defined $v;
      next if $serdes->trait_for($att, 'ParamInHeader');
      next if $serdes->trait_for($att, 'ParamInHeaders');
      next if $serdes->trait_for($att, 'ParamInQuery');
      next if $serdes->trait_for($att, 'ParamInURI');
      # Streaming payload: prepare_request_for_call writes raw bytes
      # via $call->$param after _to_xml_body returns. Don't XML-wrap
      # the same value here.
      next if defined $stream_param && $att eq $stream_param;
      # Historically: skip Paws::S3::Metadata typed attributes (the
      # S3 metadata bag is serialised as headers, not body XML).
      next if ($serdes->type_for($att) // '') eq 'Paws::S3::Metadata';
      $xml .= $self->_attribute_to_xml($serdes, $att, $v);
    }

    # Extra level of top-level wrapping, if set on the call object.
    if ($call->can('_top_level_element')) {
      $xml = sprintf('<%s xmlns="%s">%s</%s>',
                     $call->_top_level_element,
                     $call->_top_level_namespace,
                     $xml,
                     $call->_top_level_element);
    }

    return undef if !$xml;
    return $xml;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request;
    if ($self->isa('Paws::S3')){
      require Paws::Net::S3APIRequest;
      $request = Paws::Net::S3APIRequest->new();
    } else {
      $request = Paws::Net::APIRequest->new();
    }

    my $uri = $self->_call_uri($call); #in RestXmlCaller

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

    my $url = $self->_api_endpoint . $uri; #in Paws::API::EndPointResolver

    #TODO: I'm not sure if any of the REST style APIs want things as query parameters
    $request->parameters({ $self->_to_querycaller_params($call) });

    $request->url($url);
    $request->method($call->_api_method);

    if (my $xml_body = $self->_to_xml_body($call)){
      $request->content($xml_body);
    }

    if ($call->can('_stream_param')) {
      my $param_name = $call->_stream_param;
      my $content = $call->$param_name // '';
      $request->content($content);
      $request->headers->header( 'content-length' => $request->content_length );
      #$request->headers->header( 'content-type'   => $self->content_type );
    }

    $self->_to_header_params($request, $call);

    $self->sign($request);

    return $request;
  }
1;
