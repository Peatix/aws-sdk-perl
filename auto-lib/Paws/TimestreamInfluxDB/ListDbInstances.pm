
package Paws::TimestreamInfluxDB::ListDbInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDbInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::ListDbInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::ListDbInstances - Arguments for method ListDbInstances on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDbInstances on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method ListDbInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDbInstances.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $ListDbInstancesOutput = $timestream -influxdb->ListDbInstances(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListDbInstancesOutput->Items;
    my $NextToken = $ListDbInstancesOutput->NextToken;

    # Returns a L<Paws::TimestreamInfluxDB::ListDbInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/ListDbInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return in the output. If the total
number of items available is more than the value specified, a NextToken
is provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.



=head2 NextToken => Str

The pagination token. To resume pagination, provide the NextToken value
as argument of a subsequent API invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDbInstances in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

