
package Paws::CustomerProfiles::CreateDomain;
  use Moose;
  has DeadLetterQueueUrl => (is => 'ro', isa => 'Str');
  has DefaultEncryptionKey => (is => 'ro', isa => 'Str');
  has DefaultExpirationDays => (is => 'ro', isa => 'Int', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Matching => (is => 'ro', isa => 'Paws::CustomerProfiles::MatchingRequest');
  has RuleBasedMatching => (is => 'ro', isa => 'Paws::CustomerProfiles::RuleBasedMatchingRequest');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateDomain - Arguments for method CreateDomain on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateDomainResponse = $profile->CreateDomain(
      DefaultExpirationDays => 1,
      DomainName            => 'Myname',
      DeadLetterQueueUrl    => 'MysqsQueueUrl',      # OPTIONAL
      DefaultEncryptionKey  => 'MyencryptionKey',    # OPTIONAL
      Matching              => {
        Enabled     => 1,
        AutoMerging => {
          Enabled            => 1,
          ConflictResolution => {
            ConflictResolvingModel => 'RECENCY',    # values: RECENCY, SOURCE
            SourceName => 'Mystring1To255',         # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          Consolidation => {
            MatchingAttributesList => [
              [
                'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
              ],
              ...                        # min: 1, max: 20
            ],    # min: 1, max: 10

          },    # OPTIONAL
          MinAllowedConfidenceScoreForMerging => 1,    # max: 1; OPTIONAL
        },    # OPTIONAL
        ExportingConfig => {
          S3Exporting => {
            S3BucketName => 'Mys3BucketName',       # min: 3, max: 63
            S3KeyName    =>
              'Mys3KeyNameCustomerOutputConfig',    # min: 1, max: 800; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        JobSchedule => {
          DayOfTheWeek => 'SUNDAY'
          , # values: SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
          Time => 'MyJobScheduleTime',    # min: 3, max: 5

        },    # OPTIONAL
      },    # OPTIONAL
      RuleBasedMatching => {
        Enabled                => 1,
        AttributeTypesSelector => {
          AttributeMatchingModel =>
            'ONE_TO_ONE',    # values: ONE_TO_ONE, MANY_TO_MANY
          Address => [
            'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
          ],    # min: 1, max: 4; OPTIONAL
          EmailAddress => [
            'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
          ],    # min: 1, max: 3; OPTIONAL
          PhoneNumber => [
            'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
          ],    # min: 1, max: 4; OPTIONAL
        },    # OPTIONAL
        ConflictResolution => {
          ConflictResolvingModel => 'RECENCY',    # values: RECENCY, SOURCE
          SourceName => 'Mystring1To255',         # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        ExportingConfig => {
          S3Exporting => {
            S3BucketName => 'Mys3BucketName',       # min: 3, max: 63
            S3KeyName    =>
              'Mys3KeyNameCustomerOutputConfig',    # min: 1, max: 800; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        MatchingRules => [
          {
            Rule => [
              'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
            ],    # min: 1, max: 15

          },
          ...
        ],    # min: 1, max: 15; OPTIONAL
        MaxAllowedRuleLevelForMatching => 1,    # min: 1, max: 15; OPTIONAL
        MaxAllowedRuleLevelForMerging  => 1,    # min: 1, max: 15; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt             = $CreateDomainResponse->CreatedAt;
    my $DeadLetterQueueUrl    = $CreateDomainResponse->DeadLetterQueueUrl;
    my $DefaultEncryptionKey  = $CreateDomainResponse->DefaultEncryptionKey;
    my $DefaultExpirationDays = $CreateDomainResponse->DefaultExpirationDays;
    my $DomainName            = $CreateDomainResponse->DomainName;
    my $LastUpdatedAt         = $CreateDomainResponse->LastUpdatedAt;
    my $Matching              = $CreateDomainResponse->Matching;
    my $RuleBasedMatching     = $CreateDomainResponse->RuleBasedMatching;
    my $Tags                  = $CreateDomainResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::CreateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateDomain>

=head1 ATTRIBUTES


=head2 DeadLetterQueueUrl => Str

The URL of the SQS dead letter queue, which is used for reporting
errors associated with ingesting data from third party applications.
You must set up a policy on the DeadLetterQueue for the SendMessage
operation to enable Amazon Connect Customer Profiles to send messages
to the DeadLetterQueue.



=head2 DefaultEncryptionKey => Str

The default encryption key, which is an AWS managed key, is used when
no specific type of encryption key is specified. It is used to encrypt
all data before it is placed in permanent or semi-permanent storage.



=head2 B<REQUIRED> DefaultExpirationDays => Int

The default number of days until the data within the domain expires.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 Matching => L<Paws::CustomerProfiles::MatchingRequest>

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



=head2 RuleBasedMatching => L<Paws::CustomerProfiles::RuleBasedMatchingRequest>

The process of matching duplicate profiles using the Rule-Based
matching. If C<RuleBasedMatching> = true, Amazon Connect Customer
Profiles will start to match and merge your profiles according to your
configuration in the C<RuleBasedMatchingRequest>. You can use the
C<ListRuleBasedMatches> and C<GetSimilarProfiles> API to return and
review the results. Also, if you have configured C<ExportingConfig> in
the C<RuleBasedMatchingRequest>, you can download the results from S3.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

