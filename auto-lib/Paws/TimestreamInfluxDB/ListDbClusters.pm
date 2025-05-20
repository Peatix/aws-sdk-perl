
package Paws::TimestreamInfluxDB::ListDbClusters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDbClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::ListDbClustersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::ListDbClusters - Arguments for method ListDbClusters on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDbClusters on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method ListDbClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDbClusters.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $ListDbClustersOutput = $timestream -influxdb->ListDbClusters(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListDbClustersOutput->Items;
    my $NextToken = $ListDbClustersOutput->NextToken;

    # Returns a L<Paws::TimestreamInfluxDB::ListDbClustersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/ListDbClusters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return in the output. If the total
number of items available is more than the value specified, a nextToken
is provided in the output. To resume pagination, provide the nextToken
value as an argument of a subsequent API invocation.



=head2 NextToken => Str

The pagination token. To resume pagination, provide the nextToken value
as an argument of a subsequent API invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDbClusters in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

