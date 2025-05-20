
package Paws::Macie2::GetResourceProfileResponse;
  use Moose;
  has ProfileUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileUpdatedAt');
  has SensitivityScore => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sensitivityScore');
  has SensitivityScoreOverridden => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'sensitivityScoreOverridden');
  has Statistics => (is => 'ro', isa => 'Paws::Macie2::ResourceStatistics', traits => ['NameInRequest'], request_name => 'statistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetResourceProfileResponse

=head1 ATTRIBUTES


=head2 ProfileUpdatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when Amazon
Macie most recently recalculated sensitive data discovery statistics
and details for the bucket. If the bucket's sensitivity score is
calculated automatically, this includes the score.


=head2 SensitivityScore => Int

The current sensitivity score for the bucket, ranging from -1
(classification error) to 100 (sensitive). By default, this score is
calculated automatically based on the amount of data that Amazon Macie
has analyzed in the bucket and the amount of sensitive data that Macie
has found in the bucket.


=head2 SensitivityScoreOverridden => Bool

Specifies whether the bucket's current sensitivity score was set
manually. If this value is true, the score was manually changed to 100.
If this value is false, the score was calculated automatically by
Amazon Macie.


=head2 Statistics => L<Paws::Macie2::ResourceStatistics>

The sensitive data discovery statistics for the bucket. The statistics
capture the results of automated sensitive data discovery activities
that Amazon Macie has performed for the bucket.


=head2 _request_id => Str


=cut

