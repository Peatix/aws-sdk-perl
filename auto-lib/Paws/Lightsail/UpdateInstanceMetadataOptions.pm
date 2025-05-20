
package Paws::Lightsail::UpdateInstanceMetadataOptions;
  use Moose;
  has HttpEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpEndpoint' );
  has HttpProtocolIpv6 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpProtocolIpv6' );
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'httpPutResponseHopLimit' );
  has HttpTokens => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpTokens' );
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstanceMetadataOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateInstanceMetadataOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateInstanceMetadataOptions - Arguments for method UpdateInstanceMetadataOptions on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstanceMetadataOptions on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateInstanceMetadataOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstanceMetadataOptions.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateInstanceMetadataOptionsResult =
      $lightsail->UpdateInstanceMetadataOptions(
      InstanceName            => 'MyResourceName',
      HttpEndpoint            => 'disabled',         # OPTIONAL
      HttpProtocolIpv6        => 'disabled',         # OPTIONAL
      HttpPutResponseHopLimit => 1,                  # OPTIONAL
      HttpTokens              => 'optional',         # OPTIONAL
      );

    # Results:
    my $Operation = $UpdateInstanceMetadataOptionsResult->Operation;

    # Returns a L<Paws::Lightsail::UpdateInstanceMetadataOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateInstanceMetadataOptions>

=head1 ATTRIBUTES


=head2 HttpEndpoint => Str

Enables or disables the HTTP metadata endpoint on your instances. If
this parameter is not specified, the existing state is maintained.

If you specify a value of C<disabled>, you cannot access your instance
metadata.

Valid values are: C<"disabled">, C<"enabled">

=head2 HttpProtocolIpv6 => Str

Enables or disables the IPv6 endpoint for the instance metadata
service. This setting applies only when the HTTP metadata endpoint is
enabled.

This parameter is available only for instances in the Europe
(Stockholm) Amazon Web Services Region (C<eu-north-1>).

Valid values are: C<"disabled">, C<"enabled">

=head2 HttpPutResponseHopLimit => Int

The desired HTTP PUT response hop limit for instance metadata requests.
A larger number means that the instance metadata requests can travel
farther. If no parameter is specified, the existing state is
maintained.



=head2 HttpTokens => Str

The state of token usage for your instance metadata requests. If the
parameter is not specified in the request, the default state is
C<optional>.

If the state is C<optional>, you can choose whether to retrieve
instance metadata with a signed token header on your request. If you
retrieve the IAM role credentials without a token, the version 1.0 role
credentials are returned. If you retrieve the IAM role credentials by
using a valid signed token, the version 2.0 role credentials are
returned.

If the state is C<required>, you must send a signed token header with
all instance metadata retrieval requests. In this state, retrieving the
IAM role credential always returns the version 2.0 credentials. The
version 1.0 credentials are not available.

Valid values are: C<"optional">, C<"required">

=head2 B<REQUIRED> InstanceName => Str

The name of the instance for which to update metadata parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstanceMetadataOptions in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

