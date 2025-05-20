
package Paws::DMS::DescribeRecommendationLimitations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecommendationLimitations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeRecommendationLimitationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeRecommendationLimitations - Arguments for method DescribeRecommendationLimitations on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecommendationLimitations on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeRecommendationLimitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecommendationLimitations.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeRecommendationLimitationsResponse =
      $dms->DescribeRecommendationLimitations(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Limitations = $DescribeRecommendationLimitationsResponse->Limitations;
    my $NextToken   = $DescribeRecommendationLimitationsResponse->NextToken;

    # Returns a L<Paws::DMS::DescribeRecommendationLimitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeRecommendationLimitations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the limitations described in the form of key-value
pairs.

Valid filter names: C<database-id> | C<engine-name>



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, Fleet Advisor
includes a pagination token in the response so that you can retrieve
the remaining results.



=head2 NextToken => Str

Specifies the unique pagination token that makes it possible to display
the next page of results. If this parameter is specified, the response
includes only records beyond the marker, up to the value specified by
C<MaxRecords>.

If C<NextToken> is returned by a previous response, there are more
results available. The value of C<NextToken> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecommendationLimitations in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

