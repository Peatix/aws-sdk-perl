
package Paws::Omics::DeleteWorkflowVersion;
  use Moose;
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkflowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{workflowId}/version/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteWorkflowVersion - Arguments for method DeleteWorkflowVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkflowVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method DeleteWorkflowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkflowVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    $omics->DeleteWorkflowVersion(
      VersionName => 'MyWorkflowVersionName',
      WorkflowId  => 'MyWorkflowId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/DeleteWorkflowVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VersionName => Str

The workflow version name.



=head2 B<REQUIRED> WorkflowId => Str

The workflow's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkflowVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

