
package Paws::ResourceExplorer2::ListIndexes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIndexes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListIndexes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::ListIndexesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListIndexes - Arguments for method ListIndexes on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndexes on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method ListIndexes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndexes.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $ListIndexesOutput = $resource -explorer- 2->ListIndexes(
      MaxResults => 1,                                      # OPTIONAL
      NextToken  => 'MyListIndexesInputNextTokenString',    # OPTIONAL
      Regions    => [ 'MyString', ... ],                    # OPTIONAL
      Type       => 'LOCAL',                                # OPTIONAL
    );

    # Results:
    my $Indexes   = $ListIndexesOutput->Indexes;
    my $NextToken = $ListIndexesOutput->NextToken;

    # Returns a L<Paws::ResourceExplorer2::ListIndexesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/ListIndexes>

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



=head2 Regions => ArrayRef[Str|Undef]

If specified, limits the response to only information about the index
in the specified list of Amazon Web Services Regions.



=head2 Type => Str

If specified, limits the output to only indexes of the specified Type,
either C<LOCAL> or C<AGGREGATOR>.

Use this option to discover the aggregator index for your account.

Valid values are: C<"LOCAL">, C<"AGGREGATOR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndexes in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

