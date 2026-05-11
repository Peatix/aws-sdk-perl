# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::EC2Caller;
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

  # PR11: routed through Paws::SerDes.
  sub _to_querycaller_params {
    my ($self, $params) = @_;
    my $serdes = Paws::SerDes->for($params);

    my %p;
    for my $att ($serdes->serializable_attributes) {
      my $key = $serdes->wire_key_for($att);

      # EC2Serializer uppercases the first letter of every wire key
      # (this is a botocore EC2-protocol quirk; see serialize.py in
      # botocore).
      substr($key, 0, 1) = uc(substr($key, 0, 1));

      my $value = $params->$att;
      next if !defined $value;

      my $type = $serdes->type_for($att);

      if (Paws->is_internal_type($type)) {
        if ($type eq 'Bool') {
          $p{$key} = ($value == 1) ? 'true' : 'false';
        } else {
          $p{$key} = $value;
        }
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

    $request->content($self->generate_content_from_parameters($request));

    $self->sign($request);

    return $request;
  }
1;
