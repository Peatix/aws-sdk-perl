
package Paws::WorkSpaces::CreateStandbyWorkspaces;
  use Moose;
  has PrimaryRegion => (is => 'ro', isa => 'Str', required => 1);
  has StandbyWorkspaces => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::StandbyWorkspace]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStandbyWorkspaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateStandbyWorkspacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateStandbyWorkspaces - Arguments for method CreateStandbyWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStandbyWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateStandbyWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStandbyWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateStandbyWorkspacesResult = $workspaces->CreateStandbyWorkspaces(
      PrimaryRegion     => 'MyRegion',
      StandbyWorkspaces => [
        {
          DirectoryId        => 'MyDirectoryId',    # min: 10, max: 65
          PrimaryWorkspaceId => 'MyWorkspaceId',
          DataReplication    => 'NO_REPLICATION'
          ,    # values: NO_REPLICATION, PRIMARY_AS_SOURCE; OPTIONAL
          Tags => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 127
              Value => 'MyTagValue',    # max: 255; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          VolumeEncryptionKey => 'MyVolumeEncryptionKey',    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedStandbyRequests =
      $CreateStandbyWorkspacesResult->FailedStandbyRequests;
    my $PendingStandbyRequests =
      $CreateStandbyWorkspacesResult->PendingStandbyRequests;

    # Returns a L<Paws::WorkSpaces::CreateStandbyWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateStandbyWorkspaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrimaryRegion => Str

The Region of the primary WorkSpace.



=head2 B<REQUIRED> StandbyWorkspaces => ArrayRef[L<Paws::WorkSpaces::StandbyWorkspace>]

Information about the standby WorkSpace to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStandbyWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

