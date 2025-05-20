
package Paws::Connect::SearchHoursOfOperationOverridesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has HoursOfOperationOverrides => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationOverride]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchHoursOfOperationOverridesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of hours of operations which matched your search
query.


=head2 HoursOfOperationOverrides => ArrayRef[L<Paws::Connect::HoursOfOperationOverride>]

Information about the hours of operations overrides.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results. Length Constraints: Minimum length of 1. Maximum length of
2500.


=head2 _request_id => Str


=cut

