
package Paws::CostExplorer::ListCostAllocationTags;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCostAllocationTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::ListCostAllocationTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCostAllocationTags - Arguments for method ListCostAllocationTags on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCostAllocationTags on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method ListCostAllocationTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCostAllocationTags.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $ListCostAllocationTagsResponse = $ce->ListCostAllocationTags(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
      Status     => 'Active',             # OPTIONAL
      TagKeys    => [
        'MyTagKey', ...                   # max: 1024
      ],    # OPTIONAL
      Type => 'AWSGenerated',    # OPTIONAL
    );

    # Results:
    my $CostAllocationTags =
      $ListCostAllocationTagsResponse->CostAllocationTags;
    my $NextToken = $ListCostAllocationTagsResponse->NextToken;

    # Returns a L<Paws::CostExplorer::ListCostAllocationTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/ListCostAllocationTags>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that are returned for this request. By
default, the request returns 100 results.



=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 Status => Str

The status of cost allocation tag keys that are returned for this
request.

Valid values are: C<"Active">, C<"Inactive">

=head2 TagKeys => ArrayRef[Str|Undef]

The list of cost allocation tag keys that are returned for this
request.



=head2 Type => Str

The type of C<CostAllocationTag> object that are returned for this
request. The C<AWSGenerated> type tags are tags that Amazon Web
Services defines and applies to support Amazon Web Services resources
for cost allocation purposes. The C<UserDefined> type tags are tags
that you define, create, and apply to resources.

Valid values are: C<"AWSGenerated">, C<"UserDefined">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCostAllocationTags in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

