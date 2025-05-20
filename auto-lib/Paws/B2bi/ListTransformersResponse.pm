
package Paws::B2bi::ListTransformersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Transformers => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::TransformerSummary]', traits => ['NameInRequest'], request_name => 'transformers' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListTransformersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.


=head2 B<REQUIRED> Transformers => ArrayRef[L<Paws::B2bi::TransformerSummary>]

Returns an array of one or more transformer objects.

For each transformer, a C<TransformerSummary> object is returned. The
C<TransformerSummary> contains all the details for a specific
transformer.


=head2 _request_id => Str


=cut

1;