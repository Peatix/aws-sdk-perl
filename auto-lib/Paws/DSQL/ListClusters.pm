
package Paws::DSQL::ListClusters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DSQL::ListClustersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::ListClusters - Arguments for method ListClusters on L<Paws::DSQL>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<Amazon Aurora DSQL|Paws::DSQL> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $dsql = Paws->service('DSQL');
    my $ListClustersOutput = $dsql->ListClusters(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Clusters  = $ListClustersOutput->Clusters;
    my $NextToken = $ListClustersOutput->NextToken;

    # Returns a L<Paws::DSQL::ListClustersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql/ListClusters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use nextToken to display the next page of results.



=head2 NextToken => Str

If your initial ListClusters operation returns a nextToken, you can
include the returned nextToken in following ListClusters operations,
which returns results in the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::DSQL>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

