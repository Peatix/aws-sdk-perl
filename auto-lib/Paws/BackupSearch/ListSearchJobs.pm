
package Paws::BackupSearch::ListSearchJobs;
  use Moose;
  has ByStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSearchJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::ListSearchJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchJobs - Arguments for method ListSearchJobs on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSearchJobs on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method ListSearchJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSearchJobs.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $ListSearchJobsOutput = $backup -search->ListSearchJobs(
      ByStatus   => 'RUNNING',     # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListSearchJobsOutput->NextToken;
    my $SearchJobs = $ListSearchJobsOutput->SearchJobs;

    # Returns a L<Paws::BackupSearch::ListSearchJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/ListSearchJobs>

=head1 ATTRIBUTES


=head2 ByStatus => Str

Include this parameter to filter list by search job status.

Valid values are: C<"RUNNING">, C<"COMPLETED">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">

=head2 MaxResults => Int

The maximum number of resource list items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned search jobs.

For example, if a request is made to return C<MaxResults> number of
backups, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSearchJobs in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

