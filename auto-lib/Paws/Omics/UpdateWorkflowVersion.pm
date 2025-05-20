
package Paws::Omics::UpdateWorkflowVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkflowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{workflowId}/version/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateWorkflowVersion - Arguments for method UpdateWorkflowVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkflowVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateWorkflowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkflowVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    $omics->UpdateWorkflowVersion(
      VersionName     => 'MyWorkflowVersionName',
      WorkflowId      => 'MyWorkflowId',
      Description     => 'MyWorkflowVersionDescription',    # OPTIONAL
      StorageCapacity => 1,                                 # OPTIONAL
      StorageType     => 'STATIC',                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateWorkflowVersion>

=head1 ATTRIBUTES


=head2 Description => Str

Description of the workflow version.



=head2 StorageCapacity => Int

The default static storage capacity (in gibibytes) for runs that use
this workflow or workflow version.



=head2 StorageType => Str

The default storage type for runs that use this workflow. STATIC
storage allocates a fixed amount of storage. DYNAMIC storage
dynamically scales the storage up or down, based on file system
utilization. For more information about static and dynamic storage, see
Running workflows
(https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html) in
the I<Amazon Web Services HealthOmics User Guide>.

Valid values are: C<"STATIC">, C<"DYNAMIC">

=head2 B<REQUIRED> VersionName => Str

The name of the workflow version.



=head2 B<REQUIRED> WorkflowId => Str

The workflow's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkflowVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

