
package Paws::Backup::ListLegalHoldsOutput;
  use Moose;
  has LegalHolds => (is => 'ro', isa => 'ArrayRef[Paws::Backup::LegalHold]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListLegalHoldsOutput

=head1 ATTRIBUTES


=head2 LegalHolds => ArrayRef[L<Paws::Backup::LegalHold>]

This is an array of returned legal holds, both active and previous.


=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<MaxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 _request_id => Str


=cut

