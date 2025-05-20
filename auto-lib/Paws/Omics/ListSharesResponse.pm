
package Paws::Omics::ListSharesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Shares => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ShareDetails]', traits => ['NameInRequest'], request_name => 'shares', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListSharesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Next token returned in the response of a previous ListSharesResponse
call. Used to get the next page of results.


=head2 B<REQUIRED> Shares => ArrayRef[L<Paws::Omics::ShareDetails>]

The shares available and their metadata details.


=head2 _request_id => Str


=cut

