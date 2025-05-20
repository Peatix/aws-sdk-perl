
package Paws::BackupSearch::ListSearchJobResults;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SearchJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSearchJobResults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs/{SearchJobIdentifier}/search-results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::ListSearchJobResultsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchJobResults - Arguments for method ListSearchJobResults on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSearchJobResults on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method ListSearchJobResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSearchJobResults.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $ListSearchJobResultsOutput = $backup -search->ListSearchJobResults(
      SearchJobIdentifier => 'MyGenericId',
      MaxResults          => 1,               # OPTIONAL
      NextToken           => 'MyString',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSearchJobResultsOutput->NextToken;
    my $Results   = $ListSearchJobResultsOutput->Results;

    # Returns a L<Paws::BackupSearch::ListSearchJobResultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/ListSearchJobResults>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of resource list items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned search job results.

For example, if a request is made to return C<MaxResults> number of
search job results, C<NextToken> allows you to return more items in
your list starting at the location pointed to by the next token.



=head2 B<REQUIRED> SearchJobIdentifier => Str

The unique string that specifies the search job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSearchJobResults in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

