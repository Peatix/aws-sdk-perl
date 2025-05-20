
package Paws::WorkSpaces::DisassociateWorkspaceApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateWorkspaceApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DisassociateWorkspaceApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DisassociateWorkspaceApplication - Arguments for method DisassociateWorkspaceApplication on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateWorkspaceApplication on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DisassociateWorkspaceApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateWorkspaceApplication.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DisassociateWorkspaceApplicationResult =
      $workspaces->DisassociateWorkspaceApplication(
      ApplicationId => 'MyWorkSpaceApplicationId',
      WorkspaceId   => 'MyWorkspaceId',

      );

    # Results:
    my $Association = $DisassociateWorkspaceApplicationResult->Association;

 # Returns a L<Paws::WorkSpaces::DisassociateWorkspaceApplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DisassociateWorkspaceApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application.



=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the WorkSpace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateWorkspaceApplication in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

