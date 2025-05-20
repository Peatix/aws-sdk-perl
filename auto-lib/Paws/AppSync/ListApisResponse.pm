
package Paws::AppSync::ListApisResponse;
  use Moose;
  has Apis => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::Api]', traits => ['NameInRequest'], request_name => 'apis');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListApisResponse

=head1 ATTRIBUTES


=head2 Apis => ArrayRef[L<Paws::AppSync::Api>]

The C<Api> objects.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.


=head2 _request_id => Str


=cut

