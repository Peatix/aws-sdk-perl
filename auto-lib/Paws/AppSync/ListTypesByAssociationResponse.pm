
package Paws::AppSync::ListTypesByAssociationResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Types => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::Type]', traits => ['NameInRequest'], request_name => 'types');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListTypesByAssociationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.


=head2 Types => ArrayRef[L<Paws::AppSync::Type>]

The C<Type> objects.


=head2 _request_id => Str


=cut

