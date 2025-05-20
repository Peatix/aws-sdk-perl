
package Paws::ServiceDiscovery::CreatePrivateDnsNamespace;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Properties => (is => 'ro', isa => 'Paws::ServiceDiscovery::PrivateDnsNamespaceProperties');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::Tag]');
  has Vpc => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateDnsNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreatePrivateDnsNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreatePrivateDnsNamespace - Arguments for method CreatePrivateDnsNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrivateDnsNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method CreatePrivateDnsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrivateDnsNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    # Example: Create private DNS namespace
    # Example: Create private DNS namespace
    my $CreatePrivateDnsNamespaceResponse =
      $servicediscovery->CreatePrivateDnsNamespace(
      'CreatorRequestId' => 'eedd6892-50f3-41b2-8af9-611d6e1d1a8c',
      'Name'             => 'example.com',
      'Vpc'              => 'vpc-1c56417b'
      );

    # Results:
    my $OperationId = $CreatePrivateDnsNamespaceResponse->OperationId;

# Returns a L<Paws::ServiceDiscovery::CreatePrivateDnsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/CreatePrivateDnsNamespace>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<CreatePrivateDnsNamespace> requests to be retried without the risk of
running the operation twice. C<CreatorRequestId> can be any unique
string (for example, a date/timestamp).



=head2 Description => Str

A description for the namespace.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to this namespace. When you create a
private DNS namespace, Cloud Map automatically creates an Amazon Route
53 private hosted zone that has the same name as the namespace.



=head2 Properties => L<Paws::ServiceDiscovery::PrivateDnsNamespaceProperties>

Properties for the private DNS namespace.



=head2 Tags => ArrayRef[L<Paws::ServiceDiscovery::Tag>]

The tags to add to the namespace. Each tag consists of a key and an
optional value that you define. Tags keys can be up to 128 characters
in length, and tag values can be up to 256 characters in length.



=head2 B<REQUIRED> Vpc => Str

The ID of the Amazon VPC that you want to associate the namespace with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrivateDnsNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

