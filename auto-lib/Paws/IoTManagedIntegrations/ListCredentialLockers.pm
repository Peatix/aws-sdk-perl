
package Paws::IoTManagedIntegrations::ListCredentialLockers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCredentialLockers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/credential-lockers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::ListCredentialLockersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListCredentialLockers - Arguments for method ListCredentialLockers on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCredentialLockers on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method ListCredentialLockers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCredentialLockers.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $ListCredentialLockersResponse =
      $api . iotmanagedintegrations->ListCredentialLockers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListCredentialLockersResponse->Items;
    my $NextToken = $ListCredentialLockersResponse->NextToken;

# Returns a L<Paws::IoTManagedIntegrations::ListCredentialLockersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/ListCredentialLockers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

A token that can be used to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCredentialLockers in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

