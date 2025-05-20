
package Paws::QBusiness::ListIndicesResponse;
  use Moose;
  has Indices => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Index]', traits => ['NameInRequest'], request_name => 'indices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListIndicesResponse

=head1 ATTRIBUTES


=head2 Indices => ArrayRef[L<Paws::QBusiness::Index>]

An array of information on the items in one or more indexes.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token that
you can use in the subsequent request to retrieve the next set of
indexes.


=head2 _request_id => Str


=cut

