
package Paws::BackupSearch::ListSearchJobBackups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SearchJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSearchJobBackups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs/{SearchJobIdentifier}/backups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::ListSearchJobBackupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListSearchJobBackups - Arguments for method ListSearchJobBackups on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSearchJobBackups on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method ListSearchJobBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSearchJobBackups.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $ListSearchJobBackupsOutput = $backup -search->ListSearchJobBackups(
      SearchJobIdentifier => 'MyGenericId',
      MaxResults          => 1,               # OPTIONAL
      NextToken           => 'MyString',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSearchJobBackupsOutput->NextToken;
    my $Results   = $ListSearchJobBackupsOutput->Results;

    # Returns a L<Paws::BackupSearch::ListSearchJobBackupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/ListSearchJobBackups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of resource list items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned backups included in
a search job.

For example, if a request is made to return C<MaxResults> number of
backups, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.



=head2 B<REQUIRED> SearchJobIdentifier => Str

The unique string that specifies the search job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSearchJobBackups in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

