
package Paws::QApps::UpdateLibraryItemOutput;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has AppVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::QApps::Category]', traits => ['NameInRequest'], request_name => 'categories', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has IsRatedByUser => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isRatedByUser');
  has IsVerified => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isVerified');
  has LibraryItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'libraryItemId', required => 1);
  has RatingCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ratingCount', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has UserCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'userCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateLibraryItemOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App associated with the library item.


=head2 B<REQUIRED> AppVersion => Int

The version of the Q App associated with the library item.


=head2 B<REQUIRED> Categories => ArrayRef[L<Paws::QApps::Category>]

The categories associated with the updated library item.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the library item was originally created.


=head2 B<REQUIRED> CreatedBy => Str

The user who originally created the library item.


=head2 IsRatedByUser => Bool

Whether the current user has rated the library item.


=head2 IsVerified => Bool

Indicates whether the library item has been verified.


=head2 B<REQUIRED> LibraryItemId => Str

The unique identifier of the updated library item.


=head2 B<REQUIRED> RatingCount => Int

The number of ratings the library item has received.


=head2 B<REQUIRED> Status => Str

The new status of the updated library item.


=head2 UpdatedAt => Str

The date and time the library item was last updated.


=head2 UpdatedBy => Str

The user who last updated the library item.


=head2 UserCount => Int

The number of users who have the associated Q App.


=head2 _request_id => Str


=cut

