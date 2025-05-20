
package Paws::SSMContacts::ListPageResolutionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageResolutions => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::ResolutionContact]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPageResolutionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 B<REQUIRED> PageResolutions => ArrayRef[L<Paws::SSMContacts::ResolutionContact>]

Information about the resolution for an engagement.


=head2 _request_id => Str


=cut

1;