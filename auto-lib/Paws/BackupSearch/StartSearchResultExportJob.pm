
package Paws::BackupSearch::StartSearchResultExportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExportSpecification => (is => 'ro', isa => 'Paws::BackupSearch::ExportSpecification', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BackupSearch::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSearchResultExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export-search-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::StartSearchResultExportJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::StartSearchResultExportJob - Arguments for method StartSearchResultExportJob on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSearchResultExportJob on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method StartSearchResultExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSearchResultExportJob.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $StartSearchResultExportJobOutput =
      $backup -search->StartSearchResultExportJob(
      ExportSpecification => {
        S3ExportSpecification => {
          DestinationBucket => 'MyString',
          DestinationPrefix => 'MyString',
        },    # OPTIONAL
      },
      SearchJobIdentifier => 'MyGenericId',
      ClientToken         => 'MyString',                       # OPTIONAL
      RoleArn             => 'MyIamRoleArn',                   # OPTIONAL
      Tags                => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $ExportJobArn = $StartSearchResultExportJobOutput->ExportJobArn;
    my $ExportJobIdentifier =
      $StartSearchResultExportJobOutput->ExportJobIdentifier;

    # Returns a L<Paws::BackupSearch::StartSearchResultExportJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/StartSearchResultExportJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Include this parameter to allow multiple identical calls for
idempotency.

A client token is valid for 8 hours after the first request that uses
it is completed. After this time, any request with the same token is
treated as a new request.



=head2 B<REQUIRED> ExportSpecification => L<Paws::BackupSearch::ExportSpecification>

This specification contains a required string of the destination
bucket; optionally, you can include the destination prefix.



=head2 RoleArn => Str

This parameter specifies the role ARN used to start the search results
export jobs.



=head2 B<REQUIRED> SearchJobIdentifier => Str

The unique string that specifies the search job.



=head2 Tags => L<Paws::BackupSearch::TagMap>

Optional tags to include. A tag is a key-value pair you can use to
manage, filter, and search for your resources. Allowed characters
include UTF-8 letters, numbers, spaces, and the following characters: +
- = . _ : /.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSearchResultExportJob in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

