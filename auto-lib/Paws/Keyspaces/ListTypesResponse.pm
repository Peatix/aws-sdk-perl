
package Paws::Keyspaces::ListTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'types' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::ListTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token. To resume pagination, provide the C<NextToken>
value as an argument of a subsequent API invocation.


=head2 B<REQUIRED> Types => ArrayRef[Str|Undef]

The list of types contained in the specified keyspace.


=head2 _request_id => Str


=cut

1;