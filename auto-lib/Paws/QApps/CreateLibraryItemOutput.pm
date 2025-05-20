
package Paws::QApps::CreateLibraryItemOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has IsVerified => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isVerified');
  has LibraryItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'libraryItemId', required => 1);
  has RatingCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ratingCount', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::CreateLibraryItemOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the library item was created.


=head2 B<REQUIRED> CreatedBy => Str

The user who created the library item.


=head2 IsVerified => Bool

Indicates whether the library item has been verified.


=head2 B<REQUIRED> LibraryItemId => Str

The unique identifier of the new library item.


=head2 B<REQUIRED> RatingCount => Int

The number of ratings the library item has received from users.


=head2 B<REQUIRED> Status => Str

The status of the new library item, such as "Published".


=head2 UpdatedAt => Str

The date and time the library item was last updated.


=head2 UpdatedBy => Str

The user who last updated the library item.


=head2 _request_id => Str


=cut

