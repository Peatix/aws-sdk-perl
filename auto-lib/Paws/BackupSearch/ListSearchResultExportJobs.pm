
package Paws::BackupSearch::ListSearchResultExportJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SearchJobIdentifier');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSearchResultExportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export-search-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::ListSearchResultExportJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchResultExportJobs - Arguments for method ListSearchResultExportJobs on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSearchResultExportJobs on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method ListSearchResultExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSearchResultExportJobs.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $ListSearchResultExportJobsOutput =
      $backup -search->ListSearchResultExportJobs(
      MaxResults          => 1,                # OPTIONAL
      NextToken           => 'MyString',       # OPTIONAL
      SearchJobIdentifier => 'MyGenericId',    # OPTIONAL
      Status              => 'RUNNING',        # OPTIONAL
      );

    # Results:
    my $ExportJobs = $ListSearchResultExportJobsOutput->ExportJobs;
    my $NextToken  = $ListSearchResultExportJobsOutput->NextToken;

    # Returns a L<Paws::BackupSearch::ListSearchResultExportJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/ListSearchResultExportJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of resource list items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned backups included in
a search job.

For example, if a request is made to return C<MaxResults> number of
backups, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.



=head2 SearchJobIdentifier => Str

The unique string that specifies the search job.



=head2 Status => Str

The search jobs to be included in the export job can be filtered by
including this parameter.

Valid values are: C<"RUNNING">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSearchResultExportJobs in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

