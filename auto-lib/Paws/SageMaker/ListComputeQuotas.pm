
package Paws::SageMaker::ListComputeQuotas;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComputeQuotas');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListComputeQuotasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListComputeQuotas - Arguments for method ListComputeQuotas on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComputeQuotas on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListComputeQuotas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComputeQuotas.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListComputeQuotasResponse = $api . sagemaker->ListComputeQuotas(
      ClusterArn    => 'MyClusterArn',           # OPTIONAL
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NameContains  => 'MyEntityName',           # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      SortBy        => 'Name',                   # OPTIONAL
      SortOrder     => 'Ascending',              # OPTIONAL
      Status        => 'Creating',               # OPTIONAL
    );

    # Results:
    my $ComputeQuotaSummaries =
      $ListComputeQuotasResponse->ComputeQuotaSummaries;
    my $NextToken = $ListComputeQuotasResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListComputeQuotasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListComputeQuotas>

=head1 ATTRIBUTES


=head2 ClusterArn => Str

Filter for ARN of the cluster.



=head2 CreatedAfter => Str

Filter for after this creation time. The input for this parameter is a
Unix timestamp. To convert a date and time into a Unix timestamp, see
EpochConverter (https://www.epochconverter.com/).



=head2 CreatedBefore => Str

Filter for before this creation time. The input for this parameter is a
Unix timestamp. To convert a date and time into a Unix timestamp, see
EpochConverter (https://www.epochconverter.com/).



=head2 MaxResults => Int

The maximum number of compute allocation definitions to list.



=head2 NameContains => Str

Filter for name containing this string.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

Filter for sorting the list by a given value. For example, sort by
name, creation time, or status.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">, C<"ClusterArn">

=head2 SortOrder => Str

The order of the list. By default, listed in C<Descending> order
according to by C<SortBy>. To change the list order, you can specify
C<SortOrder> to be C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 Status => Str

Filter for status.

Valid values are: C<"Creating">, C<"CreateFailed">, C<"CreateRollbackFailed">, C<"Created">, C<"Updating">, C<"UpdateFailed">, C<"UpdateRollbackFailed">, C<"Updated">, C<"Deleting">, C<"DeleteFailed">, C<"DeleteRollbackFailed">, C<"Deleted">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComputeQuotas in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

