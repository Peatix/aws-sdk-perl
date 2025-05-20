
package Paws::Macie2::ListAllowListsResponse;
  use Moose;
  has AllowLists => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::AllowListSummary]', traits => ['NameInRequest'], request_name => 'allowLists');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListAllowListsResponse

=head1 ATTRIBUTES


=head2 AllowLists => ArrayRef[L<Paws::Macie2::AllowListSummary>]

An array of objects, one for each allow list.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

