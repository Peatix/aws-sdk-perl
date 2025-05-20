
package Paws::Prometheus::UpdateWorkspaceConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LimitsPerLabelSet => (is => 'ro', isa => 'ArrayRef[Paws::Prometheus::LimitsPerLabelSet]', traits => ['NameInRequest'], request_name => 'limitsPerLabelSet');
  has RetentionPeriodInDays => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'retentionPeriodInDays');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspaceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::UpdateWorkspaceConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::UpdateWorkspaceConfiguration - Arguments for method UpdateWorkspaceConfiguration on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspaceConfiguration on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method UpdateWorkspaceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspaceConfiguration.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $UpdateWorkspaceConfigurationResponse =
      $aps->UpdateWorkspaceConfiguration(
      WorkspaceId       => 'MyWorkspaceId',
      ClientToken       => 'MyIdempotencyToken',    # OPTIONAL
      LimitsPerLabelSet => [
        {
          LabelSet => {
            'MyLabelName' => 'MyLabelValue',    # key: min: 1, value: min: 1
          },
          Limits => {
            MaxSeries => 1,                     # OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      RetentionPeriodInDays => 1,    # OPTIONAL
      );

    # Results:
    my $Status = $UpdateWorkspaceConfigurationResponse->Status;

   # Returns a L<Paws::Prometheus::UpdateWorkspaceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/UpdateWorkspaceConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

You can include a token in your operation to make it an idempotent
opeartion.



=head2 LimitsPerLabelSet => ArrayRef[L<Paws::Prometheus::LimitsPerLabelSet>]

This is an array of structures, where each structure defines a label
set for the workspace, and defines the ingestion limit for active time
series for each of those label sets. Each label name in a label set
must be unique.



=head2 RetentionPeriodInDays => Int

Specifies how many days that metrics will be retained in the workspace.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that you want to update. To find the IDs of
your workspaces, use the ListWorkspaces
(https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm)
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspaceConfiguration in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

