
package Paws::TimestreamQuery::CreateScheduledQueryResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::CreateScheduledQueryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN for the created scheduled query.


=head2 _request_id => Str


=cut

1;