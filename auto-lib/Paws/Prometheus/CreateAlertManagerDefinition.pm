
package Paws::Prometheus::CreateAlertManagerDefinition;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlertManagerDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/alertmanager/definition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::CreateAlertManagerDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateAlertManagerDefinition - Arguments for method CreateAlertManagerDefinition on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlertManagerDefinition on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method CreateAlertManagerDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlertManagerDefinition.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $CreateAlertManagerDefinitionResponse =
      $aps->CreateAlertManagerDefinition(
      Data        => 'BlobAlertManagerDefinitionData',
      WorkspaceId => 'MyWorkspaceId',
      ClientToken => 'MyIdempotencyToken',               # OPTIONAL
      );

    # Results:
    my $Status = $CreateAlertManagerDefinitionResponse->Status;

   # Returns a L<Paws::Prometheus::CreateAlertManagerDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/CreateAlertManagerDefinition>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.



=head2 B<REQUIRED> Data => Str

The alert manager definition to add. A base64-encoded version of the
YAML alert manager definition file.

For details about the alert manager definition, see
AlertManagedDefinitionData
(https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html).



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to add the alert manager definition to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlertManagerDefinition in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

