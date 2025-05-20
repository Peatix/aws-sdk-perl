
package Paws::FreeTier::GetFreeTierUsage;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::FreeTier::Expression', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFreeTierUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FreeTier::GetFreeTierUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FreeTier::GetFreeTierUsage - Arguments for method GetFreeTierUsage on L<Paws::FreeTier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFreeTierUsage on the
L<AWS Free Tier|Paws::FreeTier> service. Use the attributes of this class
as arguments to method GetFreeTierUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFreeTierUsage.

=head1 SYNOPSIS

    my $freetier = Paws->service('FreeTier');
    my $GetFreeTierUsageResponse = $freetier->GetFreeTierUsage(
      Filter => {
        And        => [ <Expression>, ... ],    # OPTIONAL
        Dimensions => {
          Key => 'SERVICE'
          , # values: SERVICE, OPERATION, USAGE_TYPE, REGION, FREE_TIER_TYPE, DESCRIPTION, USAGE_PERCENTAGE
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL
          ],
          Values => [
            'MyValue', ...    # min: 1, max: 20
          ],    # min: 1

        },    # OPTIONAL
        Not => <Expression>,
        Or  => [ <Expression>, ... ],    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $FreeTierUsages = $GetFreeTierUsageResponse->FreeTierUsages;
    my $NextToken      = $GetFreeTierUsageResponse->NextToken;

    # Returns a L<Paws::FreeTier::GetFreeTierUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/freetier/GetFreeTierUsage>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::FreeTier::Expression>

An expression that specifies the conditions that you want each
C<FreeTierUsage> object to meet.



=head2 MaxResults => Int

The maximum number of results to return in the response. C<MaxResults>
means that there can be up to the specified number of values, but there
might be fewer results based on your filters.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFreeTierUsage in L<Paws::FreeTier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

