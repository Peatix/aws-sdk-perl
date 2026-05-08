
package Paws::OpenSearch::AuthorizeVpcEndpointAccess;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Service => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeVpcEndpointAccess');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::AuthorizeVpcEndpointAccessResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AuthorizeVpcEndpointAccess - Arguments for method AuthorizeVpcEndpointAccess on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeVpcEndpointAccess on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method AuthorizeVpcEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeVpcEndpointAccess.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $AuthorizeVpcEndpointAccessResponse = $es->AuthorizeVpcEndpointAccess(
      DomainName => 'MyDomainName',
      Account    => 'MyAWSAccount',                                   # OPTIONAL
      Service    => 'application.opensearchservice.amazonaws.com',    # OPTIONAL
    );

    # Results:
    my $AuthorizedPrincipal =
      $AuthorizeVpcEndpointAccessResponse->AuthorizedPrincipal;

    # Returns a L<Paws::OpenSearch::AuthorizeVpcEndpointAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Account => Str

The Amazon Web Services account ID to grant access to.



=head2 B<REQUIRED> DomainName => Str

The name of the OpenSearch Service domain to provide access to.



=head2 Service => Str

The Amazon Web Services service SP to grant access to.

Valid values are: C<"application.opensearchservice.amazonaws.com">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeVpcEndpointAccess in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

