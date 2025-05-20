
package Paws::Neptune::DescribeGlobalClusters;
  use Moose;
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::GlobalClustersMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGlobalClustersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeGlobalClusters - Arguments for method DescribeGlobalClusters on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalClusters on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeGlobalClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalClusters.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $GlobalClustersMessage = $rds->DescribeGlobalClusters(
      GlobalClusterIdentifier => 'MyGlobalClusterIdentifier',    # OPTIONAL
      Marker                  => 'MyString',                     # OPTIONAL
      MaxRecords              => 1,                              # OPTIONAL
    );

    # Results:
    my $GlobalClusters = $GlobalClustersMessage->GlobalClusters;
    my $Marker         = $GlobalClustersMessage->Marker;

    # Returns a L<Paws::Neptune::GlobalClustersMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeGlobalClusters>

=head1 ATTRIBUTES


=head2 GlobalClusterIdentifier => Str

The user-supplied DB cluster identifier. If this parameter is
specified, only information about the specified DB cluster is returned.
This parameter is not case-sensitive.

Constraints: If supplied, must match an existing DB cluster identifier.



=head2 Marker => Str

(I<Optional>) A pagination token returned by a previous call to
C<DescribeGlobalClusters>. If this parameter is specified, the response
will only include records beyond the marker, up to the number specified
by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
marker token is included in the response that you can use to retrieve
the remaining results.

Default: C<100>

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalClusters in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

