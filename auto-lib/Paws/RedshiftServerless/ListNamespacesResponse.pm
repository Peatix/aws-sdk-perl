
package Paws::RedshiftServerless::ListNamespacesResponse;
  use Moose;
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Namespace]', traits => ['NameInRequest'], request_name => 'namespaces' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListNamespacesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespaces => ArrayRef[L<Paws::RedshiftServerless::Namespace>]

The list of returned namespaces.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;