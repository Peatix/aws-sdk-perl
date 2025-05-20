
package Paws::ResourceExplorer2::Search;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
  has ViewArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Search');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::SearchOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::Search - Arguments for method Search on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Search on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method Search.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Search.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $SearchOutput = $resource -explorer- 2->Search(
      QueryString => 'MyQueryString',
      MaxResults  => 1,                                 # OPTIONAL
      NextToken   => 'MySearchInputNextTokenString',    # OPTIONAL
      ViewArn     => 'MySearchInputViewArnString',      # OPTIONAL
    );

    # Results:
    my $Count     = $SearchOutput->Count;
    my $NextToken = $SearchOutput->NextToken;
    my $Resources = $SearchOutput->Resources;
    my $ViewArn   = $SearchOutput->ViewArn;

    # Returns a L<Paws::ResourceExplorer2::SearchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/Search>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that you want included on each page of
the response. If you do not include this parameter, it defaults to a
value appropriate to the operation. If additional items exist beyond
those included in the current response, the C<NextToken> response
element is present and has a value (is not null). Include that value as
the C<NextToken> request parameter in the next call to the operation to
get the next part of the results.

An API operation can return fewer results than the maximum even when
there are more results available. You should check C<NextToken> after
every operation to ensure that you receive all of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value of the previous call's C<NextToken> response to indicate where
the output should continue from. The pagination tokens expire after 24
hours.



=head2 B<REQUIRED> QueryString => Str

A string that includes keywords and filters that specify the resources
that you want to include in the results.

For the complete syntax supported by the C<QueryString> parameter, see
Search query syntax reference for Resource Explorer
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html).

The search is completely case insensitive. You can specify an empty
string to return all results up to the limit of 1,000 total results.

The operation can return only the first 1,000 results. If the resource
you want is not included, then use a different value for C<QueryString>
to refine the results.



=head2 ViewArn => Str

Specifies the Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view to use for the query. If you don't specify a value for this
parameter, then the operation automatically uses the default view for
the Amazon Web Services Region in which you called this operation. If
the Region either doesn't have a default view or if you don't have
permission to use the default view, then the operation fails with a
C<401 Unauthorized> exception.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Search in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

