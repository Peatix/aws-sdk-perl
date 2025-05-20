
package Paws::RedshiftServerless::ListEndpointAccessResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::EndpointAccess]', traits => ['NameInRequest'], request_name => 'endpoints' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListEndpointAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::RedshiftServerless::EndpointAccess>]

The returned VPC endpoints.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;