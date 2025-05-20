
package Paws::Macie2::CreateClassificationJob;
  use Moose;
  has AllowListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowListIds');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has CustomDataIdentifierIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'customDataIdentifierIds');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InitialRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'initialRun');
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType', required => 1);
  has ManagedDataIdentifierIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managedDataIdentifierIds');
  has ManagedDataIdentifierSelector => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedDataIdentifierSelector');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has S3JobDefinition => (is => 'ro', isa => 'Paws::Macie2::S3JobDefinition', traits => ['NameInRequest'], request_name => 's3JobDefinition', required => 1);
  has SamplingPercentage => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'samplingPercentage');
  has ScheduleFrequency => (is => 'ro', isa => 'Paws::Macie2::JobScheduleFrequency', traits => ['NameInRequest'], request_name => 'scheduleFrequency');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClassificationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateClassificationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateClassificationJob - Arguments for method CreateClassificationJob on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClassificationJob on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateClassificationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClassificationJob.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateClassificationJobResponse = $macie2->CreateClassificationJob(
      ClientToken     => 'My__string',
      JobType         => 'ONE_TIME',
      Name            => 'My__string',
      S3JobDefinition => {
        BucketCriteria => {
          Excludes => {
            And => [
              {
                SimpleCriterion => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key => 'ACCOUNT_ID'
                  , # values: ACCOUNT_ID, S3_BUCKET_NAME, S3_BUCKET_EFFECTIVE_PERMISSION, S3_BUCKET_SHARED_ACCESS; OPTIONAL
                  Values => [ 'My__string', ... ],    # OPTIONAL
                },    # OPTIONAL
                TagCriterion => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  TagValues => [
                    {
                      Key   => 'My__string',
                      Value => 'My__string',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Includes => {
            And => [
              {
                SimpleCriterion => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key => 'ACCOUNT_ID'
                  , # values: ACCOUNT_ID, S3_BUCKET_NAME, S3_BUCKET_EFFECTIVE_PERMISSION, S3_BUCKET_SHARED_ACCESS; OPTIONAL
                  Values => [ 'My__string', ... ],    # OPTIONAL
                },    # OPTIONAL
                TagCriterion => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  TagValues => [
                    {
                      Key   => 'My__string',
                      Value => 'My__string',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        BucketDefinitions => [
          {
            AccountId => 'My__string',
            Buckets   => [ 'My__string', ... ],    # OPTIONAL

          },
          ...
        ],    # OPTIONAL
        Scoping => {
          Excludes => {
            And => [
              {
                SimpleScopeTerm => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key => 'OBJECT_EXTENSION'
                  , # values: OBJECT_EXTENSION, OBJECT_LAST_MODIFIED_DATE, OBJECT_SIZE, OBJECT_KEY; OPTIONAL
                  Values => [ 'My__string', ... ],    # OPTIONAL
                },    # OPTIONAL
                TagScopeTerm => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key       => 'My__string',
                  TagValues => [
                    {
                      Key   => 'My__string',
                      Value => 'My__string',
                    },
                    ...
                  ],    # OPTIONAL
                  Target => 'S3_OBJECT',    # values: S3_OBJECT; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Includes => {
            And => [
              {
                SimpleScopeTerm => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key => 'OBJECT_EXTENSION'
                  , # values: OBJECT_EXTENSION, OBJECT_LAST_MODIFIED_DATE, OBJECT_SIZE, OBJECT_KEY; OPTIONAL
                  Values => [ 'My__string', ... ],    # OPTIONAL
                },    # OPTIONAL
                TagScopeTerm => {
                  Comparator => 'EQ'
                  , # values: EQ, GT, GTE, LT, LTE, NE, CONTAINS, STARTS_WITH; OPTIONAL
                  Key       => 'My__string',
                  TagValues => [
                    {
                      Key   => 'My__string',
                      Value => 'My__string',
                    },
                    ...
                  ],    # OPTIONAL
                  Target => 'S3_OBJECT',    # values: S3_OBJECT; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      AllowListIds                  => [ 'My__string', ... ],    # OPTIONAL
      CustomDataIdentifierIds       => [ 'My__string', ... ],    # OPTIONAL
      Description                   => 'My__string',             # OPTIONAL
      InitialRun                    => 1,                        # OPTIONAL
      ManagedDataIdentifierIds      => [ 'My__string', ... ],    # OPTIONAL
      ManagedDataIdentifierSelector => 'ALL',                    # OPTIONAL
      SamplingPercentage            => 1,                        # OPTIONAL
      ScheduleFrequency             => {
        DailySchedule => {

        },                                                       # OPTIONAL
        MonthlySchedule => { DayOfMonth => 1, },                 # OPTIONAL
        WeeklySchedule  => {
          DayOfWeek => 'SUNDAY'
          , # values: SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateClassificationJobResponse->JobArn;
    my $JobId  = $CreateClassificationJobResponse->JobId;

    # Returns a L<Paws::Macie2::CreateClassificationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateClassificationJob>

=head1 ATTRIBUTES


=head2 AllowListIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each allow list for the job to
use when it analyzes data.



=head2 B<REQUIRED> ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 CustomDataIdentifierIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each custom data identifier for
the job to use when it analyzes data. To use only managed data
identifiers, don't specify a value for this property and specify a
value other than NONE for the managedDataIdentifierSelector property.



=head2 Description => Str

A custom description of the job. The description can contain as many as
200 characters.



=head2 InitialRun => Bool

For a recurring job, specifies whether to analyze all existing,
eligible objects immediately after the job is created (true). To
analyze only those objects that are created or changed after you create
the job and before the job's first scheduled run, set this value to
false.

If you configure the job to run only once, don't specify a value for
this property.



=head2 B<REQUIRED> JobType => Str

The schedule for running the job. Valid values are:

=over

=item *

ONE_TIME - Run the job only once. If you specify this value, don't
specify a value for the scheduleFrequency property.

=item *

SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you
specify this value, use the scheduleFrequency property to specify the
recurrence pattern for the job.

=back


Valid values are: C<"ONE_TIME">, C<"SCHEDULED">

=head2 ManagedDataIdentifierIds => ArrayRef[Str|Undef]

An array of unique identifiers, one for each managed data identifier
for the job to include (use) or exclude (not use) when it analyzes
data. Inclusion or exclusion depends on the managed data identifier
selection type that you specify for the job
(managedDataIdentifierSelector).

To retrieve a list of valid values for this property, use the
ListManagedDataIdentifiers operation.



=head2 ManagedDataIdentifierSelector => Str

The selection type to apply when determining which managed data
identifiers the job uses to analyze data. Valid values are:

=over

=item *

ALL - Use all managed data identifiers. If you specify this value,
don't specify any values for the managedDataIdentifierIds property.

=item *

EXCLUDE - Use all managed data identifiers except the ones specified by
the managedDataIdentifierIds property.

=item *

INCLUDE - Use only the managed data identifiers specified by the
managedDataIdentifierIds property.

=item *

NONE - Don't use any managed data identifiers. If you specify this
value, specify at least one value for the customDataIdentifierIds
property and don't specify any values for the managedDataIdentifierIds
property.

=item *

RECOMMENDED (default) - Use the recommended set of managed data
identifiers. If you specify this value, don't specify any values for
the managedDataIdentifierIds property.

=back

If you don't specify a value for this property, the job uses the
recommended set of managed data identifiers.

If the job is a recurring job and you specify ALL or EXCLUDE, each job
run automatically uses new managed data identifiers that are released.
If you don't specify a value for this property or you specify
RECOMMENDED for a recurring job, each job run automatically uses all
the managed data identifiers that are in the recommended set when the
run starts.

To learn about individual managed data identifiers or determine which
ones are in the recommended set, see Using managed data identifiers
(https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html)
or Recommended managed data identifiers
(https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-mdis-recommended.html)
in the I<Amazon Macie User Guide>.

Valid values are: C<"ALL">, C<"EXCLUDE">, C<"INCLUDE">, C<"NONE">, C<"RECOMMENDED">

=head2 B<REQUIRED> Name => Str

A custom name for the job. The name can contain as many as 500
characters.



=head2 B<REQUIRED> S3JobDefinition => L<Paws::Macie2::S3JobDefinition>

The S3 buckets that contain the objects to analyze, and the scope of
that analysis.



=head2 SamplingPercentage => Int

The sampling depth, as a percentage, for the job to apply when
processing objects. This value determines the percentage of eligible
objects that the job analyzes. If this value is less than 100, Amazon
Macie selects the objects to analyze at random, up to the specified
percentage, and analyzes all the data in those objects.



=head2 ScheduleFrequency => L<Paws::Macie2::JobScheduleFrequency>

The recurrence pattern for running the job. To run the job only once,
don't specify a value for this property and set the value for the
jobType property to ONE_TIME.



=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
job.

A job can have a maximum of 50 tags. Each tag consists of a tag key and
an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClassificationJob in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

