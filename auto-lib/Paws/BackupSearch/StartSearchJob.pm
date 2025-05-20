
package Paws::BackupSearch::StartSearchJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has ItemFilters => (is => 'ro', isa => 'Paws::BackupSearch::ItemFilters');
  has Name => (is => 'ro', isa => 'Str');
  has SearchScope => (is => 'ro', isa => 'Paws::BackupSearch::SearchScope', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BackupSearch::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSearchJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::StartSearchJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::StartSearchJob - Arguments for method StartSearchJob on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSearchJob on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method StartSearchJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSearchJob.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $StartSearchJobOutput = $backup -search->StartSearchJob(
      SearchScope => {
        BackupResourceTypes => [
          'S3', ...    # values: S3, EBS
        ],    # min: 1, max: 1
        BackupResourceArns => [ 'MyRecoveryPoint', ... ],    # max: 50; OPTIONAL
        BackupResourceCreationTime => {
          CreatedAfter  => '1970-01-01T01:00:00',            # OPTIONAL
          CreatedBefore => '1970-01-01T01:00:00',            # OPTIONAL
        },    # OPTIONAL
        BackupResourceTags => { 'MyString' => 'MyString', }, # OPTIONAL
        SourceResourceArns => [ 'MyString', ... ],           # max: 50; OPTIONAL
      },
      ClientToken      => 'MyString',                        # OPTIONAL
      EncryptionKeyArn => 'MyEncryptionKeyArn',              # OPTIONAL
      ItemFilters      => {
        EBSItemFilters => [
          {
            CreationTimes => [
              {
                Value    => '1970-01-01T01:00:00',    # OPTIONAL
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            FilePaths => [
              {
                Value    => 'MyString',
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            LastModificationTimes => [
              {
                Value    => '1970-01-01T01:00:00',    # OPTIONAL
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            Sizes => [
              {
                Value    => 1,
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        S3ItemFilters => [
          {
            CreationTimes => [
              {
                Value    => '1970-01-01T01:00:00',    # OPTIONAL
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            ETags => [
              {
                Value    => 'MyString',
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            ObjectKeys => [
              {
                Value    => 'MyString',
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            Sizes => [
              {
                Value    => 1,
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            VersionIds => [
              {
                Value    => 'MyString',
                Operator => 'EQUALS_TO'
                , # values: EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      Name => 'MyStartSearchJobInputNameString',    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },        # OPTIONAL
    );

    # Results:
    my $CreationTime        = $StartSearchJobOutput->CreationTime;
    my $SearchJobArn        = $StartSearchJobOutput->SearchJobArn;
    my $SearchJobIdentifier = $StartSearchJobOutput->SearchJobIdentifier;

    # Returns a L<Paws::BackupSearch::StartSearchJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/StartSearchJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Include this parameter to allow multiple identical calls for
idempotency.

A client token is valid for 8 hours after the first request that uses
it is completed. After this time, any request with the same token is
treated as a new request.



=head2 EncryptionKeyArn => Str

The encryption key for the specified search job.



=head2 ItemFilters => L<Paws::BackupSearch::ItemFilters>

Item Filters represent all input item properties specified when the
search was created.

Contains either EBSItemFilters or S3ItemFilters



=head2 Name => Str

Include alphanumeric characters to create a name for this search job.



=head2 B<REQUIRED> SearchScope => L<Paws::BackupSearch::SearchScope>

This object can contain BackupResourceTypes, BackupResourceArns,
BackupResourceCreationTime, BackupResourceTags, and SourceResourceArns
to filter the recovery points returned by the search job.



=head2 Tags => L<Paws::BackupSearch::TagMap>

List of tags returned by the operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSearchJob in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

