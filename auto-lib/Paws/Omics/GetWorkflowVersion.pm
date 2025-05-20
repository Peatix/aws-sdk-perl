
package Paws::Omics::GetWorkflowVersion;
  use Moose;
  has Export => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'export');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowId', required => 1);
  has WorkflowOwnerId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowOwnerId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{workflowId}/version/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetWorkflowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetWorkflowVersion - Arguments for method GetWorkflowVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetWorkflowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetWorkflowVersionResponse = $omics->GetWorkflowVersion(
      VersionName => 'MyWorkflowVersionName',
      WorkflowId  => 'MyWorkflowId',
      Export      => [
        'DEFINITION', ...    # values: DEFINITIONmin: 1, max: 64
      ],    # OPTIONAL
      Type            => 'PRIVATE',              # OPTIONAL
      WorkflowOwnerId => 'MyWorkflowOwnerId',    # OPTIONAL
    );

    # Results:
    my $Accelerators      = $GetWorkflowVersionResponse->Accelerators;
    my $Arn               = $GetWorkflowVersionResponse->Arn;
    my $CreationTime      = $GetWorkflowVersionResponse->CreationTime;
    my $Definition        = $GetWorkflowVersionResponse->Definition;
    my $Description       = $GetWorkflowVersionResponse->Description;
    my $Digest            = $GetWorkflowVersionResponse->Digest;
    my $Engine            = $GetWorkflowVersionResponse->Engine;
    my $Main              = $GetWorkflowVersionResponse->Main;
    my $Metadata          = $GetWorkflowVersionResponse->Metadata;
    my $ParameterTemplate = $GetWorkflowVersionResponse->ParameterTemplate;
    my $Status            = $GetWorkflowVersionResponse->Status;
    my $StatusMessage     = $GetWorkflowVersionResponse->StatusMessage;
    my $StorageCapacity   = $GetWorkflowVersionResponse->StorageCapacity;
    my $StorageType       = $GetWorkflowVersionResponse->StorageType;
    my $Tags              = $GetWorkflowVersionResponse->Tags;
    my $Type              = $GetWorkflowVersionResponse->Type;
    my $Uuid              = $GetWorkflowVersionResponse->Uuid;
    my $VersionName       = $GetWorkflowVersionResponse->VersionName;
    my $WorkflowBucketOwnerId =
      $GetWorkflowVersionResponse->WorkflowBucketOwnerId;
    my $WorkflowId = $GetWorkflowVersionResponse->WorkflowId;

    # Returns a L<Paws::Omics::GetWorkflowVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetWorkflowVersion>

=head1 ATTRIBUTES


=head2 Export => ArrayRef[Str|Undef]

The export format for the workflow.



=head2 Type => Str

The workflow's type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">

=head2 B<REQUIRED> VersionName => Str

The workflow version name.



=head2 B<REQUIRED> WorkflowId => Str

The workflow's ID.



=head2 WorkflowOwnerId => Str

Amazon Web Services Id of the owner of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

