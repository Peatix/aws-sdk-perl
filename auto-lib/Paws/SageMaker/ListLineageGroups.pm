
package Paws::SageMaker::ListLineageGroups;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLineageGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListLineageGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListLineageGroups - Arguments for method ListLineageGroups on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLineageGroups on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListLineageGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLineageGroups.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListLineageGroupsResponse = $api . sagemaker->ListLineageGroups(
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      SortBy        => 'Name',                   # OPTIONAL
      SortOrder     => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $LineageGroupSummaries =
      $ListLineageGroupsResponse->LineageGroupSummaries;
    my $NextToken = $ListLineageGroupsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListLineageGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListLineageGroups>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

A timestamp to filter against lineage groups created after a certain
point in time.



=head2 CreatedBefore => Str

A timestamp to filter against lineage groups created before a certain
point in time.



=head2 MaxResults => Int

The maximum number of endpoints to return in the response. This value
defaults to 10.



=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of algorithms, use it in the subsequent request.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for the results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLineageGroups in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

