
package Paws::RedshiftServerless::ListCustomDomainAssociationsResponse;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Association]', traits => ['NameInRequest'], request_name => 'associations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListCustomDomainAssociationsResponse

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::RedshiftServerless::Association>]

A list of Association objects.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;