
package Paws::ECS::ListServicesByNamespace;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServicesByNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListServicesByNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListServicesByNamespace - Arguments for method ListServicesByNamespace on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServicesByNamespace on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListServicesByNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServicesByNamespace.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $ListServicesByNamespaceResponse = $ecs->ListServicesByNamespace(
      Namespace  => 'MyString',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListServicesByNamespaceResponse->NextToken;
    my $ServiceArns = $ListServicesByNamespaceResponse->ServiceArns;

    # Returns a L<Paws::ECS::ListServicesByNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListServicesByNamespace>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of service results that C<ListServicesByNamespace>
returns in paginated output. When this parameter is used,
C<ListServicesByNamespace> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListServicesByNamespace> request with the returned C<nextToken>
value. This value can be between 1 and 100. If this parameter isn't
used, then C<ListServicesByNamespace> returns up to 10 results and a
C<nextToken> value if applicable.



=head2 B<REQUIRED> Namespace => Str

The namespace name or full Amazon Resource Name (ARN) of the Cloud Map
namespace to list the services in.

Tasks that run in a namespace can use short names to connect to
services in the namespace. Tasks can connect to services across all of
the clusters in the namespace. Tasks connect through a managed proxy
container that collects logs and metrics for increased visibility. Only
the tasks that Amazon ECS services create are supported with Service
Connect. For more information, see Service Connect
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 NextToken => Str

The C<nextToken> value that's returned from a
C<ListServicesByNamespace> request. It indicates that more results are
available to fulfill the request and further calls are needed. If
C<maxResults> is returned, it is possible the number of results is less
than C<maxResults>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServicesByNamespace in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

