
package Paws::AppIntegrations::CreateDataIntegrationAssociation;
  use Moose;
  has ClientAssociationMetadata => (is => 'ro', isa => 'Paws::AppIntegrations::ClientAssociationMetadata');
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DataIntegrationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has DestinationURI => (is => 'ro', isa => 'Str');
  has ExecutionConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ExecutionConfiguration');
  has ObjectConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ObjectConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataIntegrationAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::CreateDataIntegrationAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateDataIntegrationAssociation - Arguments for method CreateDataIntegrationAssociation on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataIntegrationAssociation on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method CreateDataIntegrationAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataIntegrationAssociation.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $CreateDataIntegrationAssociationResponse =
      $app -integrations->CreateDataIntegrationAssociation(
      DataIntegrationIdentifier => 'MyIdentifier',
      ClientAssociationMetadata => {
        'MyNonBlankString' =>
          'MyNonBlankString',   # key: min: 1, max: 255, value: min: 1, max: 255
      },    # OPTIONAL
      ClientId               => 'MyClientId',            # OPTIONAL
      ClientToken            => 'MyIdempotencyToken',    # OPTIONAL
      DestinationURI         => 'MyDestinationURI',      # OPTIONAL
      ExecutionConfiguration => {
        ExecutionMode         => 'ON_DEMAND',    # values: ON_DEMAND, SCHEDULED
        OnDemandConfiguration => {
          StartTime => 'MyNonBlankString',       # min: 1, max: 255
          EndTime   => 'MyNonBlankString',       # min: 1, max: 255
        },    # OPTIONAL
        ScheduleConfiguration => {
          ScheduleExpression => 'MyNonBlankString', # min: 1, max: 255
          FirstExecutionFrom => 'MyNonBlankString', # min: 1, max: 255
          Object             => 'MyObject',         # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ObjectConfiguration => {
        'MyNonBlankString' => {
          'MyNonBlankString' => [
            'MyFields', ...    # min: 1, max: 255
          ],    # key: min: 1, max: 255, value: min: 1, max: 2048
        },    # key: min: 1, max: 255
      },    # OPTIONAL
      );

    # Results:
    my $DataIntegrationArn =
      $CreateDataIntegrationAssociationResponse->DataIntegrationArn;
    my $DataIntegrationAssociationId =
      $CreateDataIntegrationAssociationResponse->DataIntegrationAssociationId;

# Returns a L<Paws::AppIntegrations::CreateDataIntegrationAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/CreateDataIntegrationAssociation>

=head1 ATTRIBUTES


=head2 ClientAssociationMetadata => L<Paws::AppIntegrations::ClientAssociationMetadata>

The mapping of metadata to be extracted from the data.



=head2 ClientId => Str

The identifier for the client that is associated with the
DataIntegration association.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> DataIntegrationIdentifier => Str

A unique identifier for the DataIntegration.



=head2 DestinationURI => Str

The URI of the data destination.



=head2 ExecutionConfiguration => L<Paws::AppIntegrations::ExecutionConfiguration>

The configuration for how the files should be pulled from the source.



=head2 ObjectConfiguration => L<Paws::AppIntegrations::ObjectConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataIntegrationAssociation in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

