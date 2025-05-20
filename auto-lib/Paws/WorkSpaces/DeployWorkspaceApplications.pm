
package Paws::WorkSpaces::DeployWorkspaceApplications;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool');
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeployWorkspaceApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeployWorkspaceApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeployWorkspaceApplications - Arguments for method DeployWorkspaceApplications on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeployWorkspaceApplications on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeployWorkspaceApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeployWorkspaceApplications.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeployWorkspaceApplicationsResult =
      $workspaces->DeployWorkspaceApplications(
      WorkspaceId => 'MyWorkspaceId',
      Force       => 1,                 # OPTIONAL
      );

    # Results:
    my $Deployment = $DeployWorkspaceApplicationsResult->Deployment;

    # Returns a L<Paws::WorkSpaces::DeployWorkspaceApplicationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeployWorkspaceApplications>

=head1 ATTRIBUTES


=head2 Force => Bool

Indicates whether the force flag is applied for the specified
WorkSpace. When the force flag is enabled, it allows previously failed
deployments to be retried.



=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the WorkSpace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeployWorkspaceApplications in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

