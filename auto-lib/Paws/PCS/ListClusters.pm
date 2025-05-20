
package Paws::PCS::ListClusters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::ListClustersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::ListClusters - Arguments for method ListClusters on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $ListClustersResponse = $pcs->ListClusters(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Clusters  = $ListClustersResponse->Clusters;
    my $NextToken = $ListClustersResponse->NextToken;

    # Returns a L<Paws::PCS::ListClustersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/ListClusters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned per call. You can use
C<nextToken> to obtain further pages of results. The default is 10
results, and the maximum allowed page size is 100 results. A value of 0
uses the default.



=head2 NextToken => Str

The value of C<nextToken> is a unique pagination token for each page of
results returned. If C<nextToken> is returned, there are more results
available. Make the call again using the returned token to retrieve the
next page. Keep all other arguments unchanged. Each pagination token
expires after 24 hours. Using an expired pagination token returns an
C<HTTP 400 InvalidToken> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

