
package Paws::CustomerProfiles::GetDomainResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DeadLetterQueueUrl => (is => 'ro', isa => 'Str');
  has DefaultEncryptionKey => (is => 'ro', isa => 'Str');
  has DefaultExpirationDays => (is => 'ro', isa => 'Int');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Matching => (is => 'ro', isa => 'Paws::CustomerProfiles::MatchingResponse');
  has RuleBasedMatching => (is => 'ro', isa => 'Paws::CustomerProfiles::RuleBasedMatchingResponse');
  has Stats => (is => 'ro', isa => 'Paws::CustomerProfiles::DomainStats');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the domain was created.


=head2 DeadLetterQueueUrl => Str

The URL of the SQS dead letter queue, which is used for reporting
errors associated with ingesting data from third party applications.


=head2 DefaultEncryptionKey => Str

The default encryption key, which is an AWS managed key, is used when
no specific type of encryption key is specified. It is used to encrypt
all data before it is placed in permanent or semi-permanent storage.


=head2 DefaultExpirationDays => Int

The default number of days until the data within the domain expires.


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 B<REQUIRED> LastUpdatedAt => Str

The timestamp of when the domain was most recently edited.


=head2 Matching => L<Paws::CustomerProfiles::MatchingResponse>

The process of matching duplicate profiles. If C<Matching> = C<true>,
Amazon Connect Customer Profiles starts a weekly batch process called
Identity Resolution Job. If you do not specify a date and time for
Identity Resolution Job to run, by default it runs every Saturday at
12AM UTC to detect duplicate profiles in your domains.

After the Identity Resolution Job completes, use the GetMatches
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html)
API to return and review the results. Or, if you have configured
C<ExportingConfig> in the C<MatchingRequest>, you can download the
results from S3.


=head2 RuleBasedMatching => L<Paws::CustomerProfiles::RuleBasedMatchingResponse>

The process of matching duplicate profiles using the Rule-Based
matching. If C<RuleBasedMatching> = true, Amazon Connect Customer
Profiles will start to match and merge your profiles according to your
configuration in the C<RuleBasedMatchingRequest>. You can use the
C<ListRuleBasedMatches> and C<GetSimilarProfiles> API to return and
review the results. Also, if you have configured C<ExportingConfig> in
the C<RuleBasedMatchingRequest>, you can download the results from S3.


=head2 Stats => L<Paws::CustomerProfiles::DomainStats>

Usage-specific statistics about the domain.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

