package Paws::IoTSecureTunneling;
  use Moose;
  sub service { 'api.tunneling.iot' }
  sub signing_name { 'IoTSecuredTunneling' }
  sub version { '2018-10-05' }
  sub target_prefix { 'IoTSecuredTunneling' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CloseTunnel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::CloseTunnel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTunnel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::DescribeTunnel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTunnels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::ListTunnels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OpenTunnel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::OpenTunnel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateTunnelAccessToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::RotateTunnelAccessToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTSecureTunneling::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CloseTunnel DescribeTunnel ListTagsForResource ListTunnels OpenTunnel RotateTunnelAccessToken TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling - Perl Interface to AWS AWS IoT Secure Tunneling

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTSecureTunneling');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

IoT Secure Tunneling

IoT Secure Tunneling creates remote connections to devices deployed in
the field.

For more information about how IoT Secure Tunneling works, see IoT
Secure Tunneling
(https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.tunneling.iot-2018-10-05>


=head1 METHODS

=head2 CloseTunnel

=over

=item TunnelId => Str

=item [Delete => Bool]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::CloseTunnel>

Returns: a L<Paws::IoTSecureTunneling::CloseTunnelResponse> instance

Closes a tunnel identified by the unique tunnel id. When a
C<CloseTunnel> request is received, we close the WebSocket connections
between the client and proxy server so no data can be transmitted.

Requires permission to access the CloseTunnel
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.


=head2 DescribeTunnel

=over

=item TunnelId => Str


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::DescribeTunnel>

Returns: a L<Paws::IoTSecureTunneling::DescribeTunnelResponse> instance

Gets information about a tunnel identified by the unique tunnel id.

Requires permission to access the DescribeTunnel
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::ListTagsForResource>

Returns: a L<Paws::IoTSecureTunneling::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 ListTunnels

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::ListTunnels>

Returns: a L<Paws::IoTSecureTunneling::ListTunnelsResponse> instance

List all tunnels for an Amazon Web Services account. Tunnels are listed
by creation time in descending order, newer tunnels will be listed
before older tunnels.

Requires permission to access the ListTunnels
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.


=head2 OpenTunnel

=over

=item [Description => Str]

=item [DestinationConfig => L<Paws::IoTSecureTunneling::DestinationConfig>]

=item [Tags => ArrayRef[L<Paws::IoTSecureTunneling::Tag>]]

=item [TimeoutConfig => L<Paws::IoTSecureTunneling::TimeoutConfig>]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::OpenTunnel>

Returns: a L<Paws::IoTSecureTunneling::OpenTunnelResponse> instance

Creates a new tunnel, and returns two client access tokens for clients
to use to connect to the IoT Secure Tunneling proxy server.

Requires permission to access the OpenTunnel
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.


=head2 RotateTunnelAccessToken

=over

=item ClientMode => Str

=item TunnelId => Str

=item [DestinationConfig => L<Paws::IoTSecureTunneling::DestinationConfig>]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::RotateTunnelAccessToken>

Returns: a L<Paws::IoTSecureTunneling::RotateTunnelAccessTokenResponse> instance

Revokes the current client access token (CAT) and returns new CAT for
clients to use when reconnecting to secure tunneling to access the same
tunnel.

Requires permission to access the RotateTunnelAccessToken
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
action.

Rotating the CAT doesn't extend the tunnel duration. For example, say
the tunnel duration is 12 hours and the tunnel has already been open
for 4 hours. When you rotate the access tokens, the new tokens that are
generated can only be used for the remaining 8 hours.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::IoTSecureTunneling::Tag>]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::TagResource>

Returns: a L<Paws::IoTSecureTunneling::TagResourceResponse> instance

A resource tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTSecureTunneling::UntagResource>

Returns: a L<Paws::IoTSecureTunneling::UntagResourceResponse> instance

Removes a tag from a resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

