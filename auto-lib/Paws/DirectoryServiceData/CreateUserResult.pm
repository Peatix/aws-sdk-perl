
package Paws::DirectoryServiceData::CreateUserResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str');
  has SID => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::CreateUserResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier (ID) of the directory where the address block is added.


=head2 SAMAccountName => Str

The name of the user.


=head2 SID => Str

The unique security identifier (SID) of the user.


=head2 _request_id => Str


=cut

