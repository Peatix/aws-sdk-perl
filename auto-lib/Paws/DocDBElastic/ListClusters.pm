
package Paws::DocDBElastic::ListClusters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::ListClustersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListClusters - Arguments for method ListClusters on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $ListClustersOutput = $docdb -elastic->ListClusters(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Clusters  = $ListClustersOutput->Clusters;
    my $NextToken = $ListClustersOutput->NextToken;

    # Returns a L<Paws::DocDBElastic::ListClustersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/ListClusters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of elastic cluster snapshot results to receive in
the response.



=head2 NextToken => Str

A pagination token provided by a previous request. If this parameter is
specified, the response includes only records beyond this token, up to
the value specified by C<max-results>.

If there is no more data in the responce, the C<nextToken> will not be
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

