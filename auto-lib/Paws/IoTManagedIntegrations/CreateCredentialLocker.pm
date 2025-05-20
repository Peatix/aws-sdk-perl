
package Paws::IoTManagedIntegrations::CreateCredentialLocker;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCredentialLocker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/credential-lockers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateCredentialLockerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateCredentialLocker - Arguments for method CreateCredentialLocker on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCredentialLocker on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateCredentialLocker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCredentialLocker.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateCredentialLockerResponse =
      $api . iotmanagedintegrations->CreateCredentialLocker(
      ClientToken => 'MyClientToken',             # OPTIONAL
      Name        => 'MyCredentialLockerName',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn       = $CreateCredentialLockerResponse->Arn;
    my $CreatedAt = $CreateCredentialLockerResponse->CreatedAt;
    my $Id        = $CreateCredentialLockerResponse->Id;

# Returns a L<Paws::IoTManagedIntegrations::CreateCredentialLockerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateCredentialLocker>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 Name => Str

The name of the credential locker.



=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the credential locker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCredentialLocker in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

