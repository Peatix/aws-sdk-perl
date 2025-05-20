
package Paws::WorkSpaces::RegisterWorkspaceDirectoryResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RegisterWorkspaceDirectoryResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the directory.


=head2 State => Str

The registration status of the WorkSpace directory.

Valid values are: C<"REGISTERING">, C<"REGISTERED">, C<"DEREGISTERING">, C<"DEREGISTERED">, C<"ERROR">
=head2 _request_id => Str


=cut

1;