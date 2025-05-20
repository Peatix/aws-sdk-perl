
package Paws::Resiliencehub::ListMetricsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rows => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]', traits => ['NameInRequest'], request_name => 'rows', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListMetricsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> Rows => ArrayRef[ArrayRef[Str|Undef]]

Specifies all the list of metric values for each row of metrics.


=head2 _request_id => Str


=cut

