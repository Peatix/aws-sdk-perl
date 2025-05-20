
package Paws::QBusiness::ListRetrieversResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Retrievers => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Retriever]', traits => ['NameInRequest'], request_name => 'retrievers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListRetrieversResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of
retrievers.


=head2 Retrievers => ArrayRef[L<Paws::QBusiness::Retriever>]

An array of summary information for one or more retrievers.


=head2 _request_id => Str


=cut

