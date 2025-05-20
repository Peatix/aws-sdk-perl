
package Paws::Glue::ListDataQualityStatistics;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileId => (is => 'ro', isa => 'Str');
  has StatisticId => (is => 'ro', isa => 'Str');
  has TimestampFilter => (is => 'ro', isa => 'Paws::Glue::TimestampFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataQualityStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListDataQualityStatisticsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityStatistics - Arguments for method ListDataQualityStatistics on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataQualityStatistics on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListDataQualityStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataQualityStatistics.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListDataQualityStatisticsResponse = $glue->ListDataQualityStatistics(
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyPaginationToken',    # OPTIONAL
      ProfileId       => 'MyHashString',         # OPTIONAL
      StatisticId     => 'MyHashString',         # OPTIONAL
      TimestampFilter => {
        RecordedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        RecordedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListDataQualityStatisticsResponse->NextToken;
    my $Statistics = $ListDataQualityStatisticsResponse->Statistics;

    # Returns a L<Paws::Glue::ListDataQualityStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListDataQualityStatistics>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

A pagination token to request the next page of results.



=head2 ProfileId => Str

The Profile ID.



=head2 StatisticId => Str

The Statistic ID.



=head2 TimestampFilter => L<Paws::Glue::TimestampFilter>

A timestamp filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataQualityStatistics in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

