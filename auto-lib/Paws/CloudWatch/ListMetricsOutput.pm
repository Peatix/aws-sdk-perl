
package Paws::CloudWatch::ListMetricsOutput;
  use Moose;
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');
  has OwningAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListMetricsOutput

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[L<Paws::CloudWatch::Metric>]

The metrics that match your request.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 OwningAccounts => ArrayRef[Str|Undef]

If you are using this operation in a monitoring account, this array
contains the account IDs of the source accounts where the metrics in
the returned data are from.

This field is a 1:1 mapping between each metric that is returned and
the ID of the owning account.


=head2 _request_id => Str


=cut

