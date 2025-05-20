
package Paws::MemoryDB::DescribeClusters;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ShowShardDetails => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeClustersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeClusters - Arguments for method DescribeClusters on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusters on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusters.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeClustersResponse = $memory -db->DescribeClusters(
      ClusterName      => 'MyString',    # OPTIONAL
      MaxResults       => 1,             # OPTIONAL
      NextToken        => 'MyString',    # OPTIONAL
      ShowShardDetails => 1,             # OPTIONAL
    );

    # Results:
    my $Clusters  = $DescribeClustersResponse->Clusters;
    my $NextToken = $DescribeClustersResponse->NextToken;

    # Returns a L<Paws::MemoryDB::DescribeClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeClusters>

=head1 ATTRIBUTES


=head2 ClusterName => Str

The name of the cluster.



=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.



=head2 ShowShardDetails => Bool

An optional flag that can be included in the request to retrieve
information about the individual shard(s).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusters in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

