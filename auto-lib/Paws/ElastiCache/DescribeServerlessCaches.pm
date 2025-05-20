
package Paws::ElastiCache::DescribeServerlessCaches;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerlessCacheName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServerlessCaches');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DescribeServerlessCachesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServerlessCachesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeServerlessCaches - Arguments for method DescribeServerlessCaches on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServerlessCaches on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeServerlessCaches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServerlessCaches.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeServerlessCachesResponse =
      $elasticache->DescribeServerlessCaches(
      MaxResults          => 1,             # OPTIONAL
      NextToken           => 'MyString',    # OPTIONAL
      ServerlessCacheName => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken        = $DescribeServerlessCachesResponse->NextToken;
    my $ServerlessCaches = $DescribeServerlessCachesResponse->ServerlessCaches;

    # Returns a L<Paws::ElastiCache::DescribeServerlessCachesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeServerlessCaches>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of records in the response. If more records exist
than the specified max-records value, the next token is included in the
response so that remaining results can be retrieved. The default is 50.



=head2 NextToken => Str

An optional marker returned from a prior request to support pagination
of results from this operation. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by MaxResults.



=head2 ServerlessCacheName => Str

The identifier for the serverless cache. If this parameter is
specified, only information about that specific serverless cache is
returned. Default: NULL




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServerlessCaches in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

