
package Paws::EMRContainers::GetManagedEndpointSessionCredentials;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CredentialType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialType', required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationInSeconds');
  has EndpointIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointId', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn', required => 1);
  has LogContext => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logContext');
  has VirtualClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedEndpointSessionCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/endpoints/{endpointId}/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::GetManagedEndpointSessionCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::GetManagedEndpointSessionCredentials - Arguments for method GetManagedEndpointSessionCredentials on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedEndpointSessionCredentials on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method GetManagedEndpointSessionCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedEndpointSessionCredentials.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $GetManagedEndpointSessionCredentialsResponse =
      $emr -containers->GetManagedEndpointSessionCredentials(
      CredentialType           => 'MyCredentialType',
      EndpointIdentifier       => 'MyString2048',
      ExecutionRoleArn         => 'MyIAMRoleArn',
      VirtualClusterIdentifier => 'MyString2048',
      ClientToken              => 'MyClientToken',      # OPTIONAL
      DurationInSeconds        => 1,                    # OPTIONAL
      LogContext               => 'MyLogContext',       # OPTIONAL
      );

    # Results:
    my $Credentials =
      $GetManagedEndpointSessionCredentialsResponse->Credentials;
    my $ExpiresAt = $GetManagedEndpointSessionCredentialsResponse->ExpiresAt;
    my $Id        = $GetManagedEndpointSessionCredentialsResponse->Id;

# Returns a L<Paws::EMRContainers::GetManagedEndpointSessionCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/GetManagedEndpointSessionCredentials>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client idempotency token of the job run request.



=head2 B<REQUIRED> CredentialType => Str

Type of the token requested. Currently supported and default value of
this field is E<ldquo>TOKEN.E<rdquo>



=head2 DurationInSeconds => Int

Duration in seconds for which the session token is valid. The default
duration is 15 minutes and the maximum is 12 hours.



=head2 B<REQUIRED> EndpointIdentifier => Str

The ARN of the managed endpoint for which the request is submitted.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The IAM Execution Role ARN that will be used by the job run.



=head2 LogContext => Str

String identifier used to separate sections of the execution logs
uploaded to S3.



=head2 B<REQUIRED> VirtualClusterIdentifier => Str

The ARN of the Virtual Cluster which the Managed Endpoint belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedEndpointSessionCredentials in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

