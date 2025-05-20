
package Paws::ConnectCases::ListFieldOptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldOption]', traits => ['NameInRequest'], request_name => 'options', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListFieldOptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 B<REQUIRED> Options => ArrayRef[L<Paws::ConnectCases::FieldOption>]

A list of C<FieldOption> objects.


=head2 _request_id => Str


=cut

