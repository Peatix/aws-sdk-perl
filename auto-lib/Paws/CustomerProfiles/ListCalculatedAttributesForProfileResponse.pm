
package Paws::CustomerProfiles::ListCalculatedAttributesForProfileResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListCalculatedAttributeForProfileItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListCalculatedAttributesForProfileResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListCalculatedAttributeForProfileItem>]

The list of calculated attributes.


=head2 NextToken => Str

The pagination token from the previous call to
ListCalculatedAttributesForProfile.


=head2 _request_id => Str


=cut

