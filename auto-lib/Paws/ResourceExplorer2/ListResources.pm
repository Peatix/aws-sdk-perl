
package Paws::ResourceExplorer2::ListResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ResourceExplorer2::SearchFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ViewArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListResources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::ListResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListResources - Arguments for method ListResources on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $ListResourcesOutput = $resource -explorer- 2->ListResources(
      Filters => {
        FilterString => 'MySearchFilterFilterStringString',    # max: 2048

      },    # OPTIONAL
      MaxResults => 1,                                        # OPTIONAL
      NextToken  => 'MyListResourcesInputNextTokenString',    # OPTIONAL
      ViewArn    => 'MyListResourcesInputViewArnString',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourcesOutput->NextToken;
    my $Resources = $ListResourcesOutput->Resources;
    my $ViewArn   = $ListResourcesOutput->ViewArn;

    # Returns a L<Paws::ResourceExplorer2::ListResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/ListResources>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ResourceExplorer2::SearchFilter>

An array of strings that specify which resources are included in the
results of queries made using this view. When you use this view in a
Search operation, the filter string is combined with the search's
C<QueryString> parameter using a logical C<AND> operator.

For information about the supported syntax, see Search query reference
for Resource Explorer
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

This query string in the context of this operation supports only filter
prefixes
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters)
with optional operators
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators).
It doesn't support free-form text. For example, the string C<region:us*
service:ec2 -tag:stage=prod> includes all Amazon EC2 resources in any
Amazon Web Services Region that begins with the letters C<us> and is
I<not> tagged with a key C<Stage> that has the value C<prod>.



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

The C<ListResources> operation does not generate a C<NextToken> if you
set C<MaxResults> to 1000.



=head2 ViewArn => Str

Specifies the Amazon resource name (ARN) of the view to use for the
query. If you don't specify a value for this parameter, then the
operation automatically uses the default view for the Amazon Web
Services Region in which you called this operation. If the Region
either doesn't have a default view or if you don't have permission to
use the default view, then the operation fails with a 401 Unauthorized
exception.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

