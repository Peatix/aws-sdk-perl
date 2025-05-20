
package Paws::EKS::ListPodIdentityAssociations;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ServiceAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'serviceAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPodIdentityAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/pod-identity-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::ListPodIdentityAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListPodIdentityAssociations - Arguments for method ListPodIdentityAssociations on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPodIdentityAssociations on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method ListPodIdentityAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPodIdentityAssociations.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $ListPodIdentityAssociationsResponse = $eks->ListPodIdentityAssociations(
      ClusterName    => 'MyString',
      MaxResults     => 1,             # OPTIONAL
      Namespace      => 'MyString',    # OPTIONAL
      NextToken      => 'MyString',    # OPTIONAL
      ServiceAccount => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Associations = $ListPodIdentityAssociationsResponse->Associations;
    my $NextToken    = $ListPodIdentityAssociationsResponse->NextToken;

    # Returns a L<Paws::EKS::ListPodIdentityAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/ListPodIdentityAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster that the associations are in.



=head2 MaxResults => Int

The maximum number of EKS Pod Identity association results returned by
C<ListPodIdentityAssociations> in paginated output. When you use this
parameter, C<ListPodIdentityAssociations> returns only C<maxResults>
results in a single page along with a C<nextToken> response element.
You can see the remaining results of the initial request by sending
another C<ListPodIdentityAssociations> request with the returned
C<nextToken> value. This value can be between 1 and 100. If you don't
use this parameter, C<ListPodIdentityAssociations> returns up to 100
results and a C<nextToken> value if applicable.



=head2 Namespace => Str

The name of the Kubernetes namespace inside the cluster that the
associations are in.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListUpdates> request where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 ServiceAccount => Str

The name of the Kubernetes service account that the associations use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPodIdentityAssociations in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

