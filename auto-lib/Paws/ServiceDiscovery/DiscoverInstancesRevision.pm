
package Paws::ServiceDiscovery::DiscoverInstancesRevision;
  use Moose;
  has NamespaceName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscoverInstancesRevision');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::DiscoverInstancesRevisionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DiscoverInstancesRevision - Arguments for method DiscoverInstancesRevision on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverInstancesRevision on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method DiscoverInstancesRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverInstancesRevision.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $DiscoverInstancesRevisionResponse =
      $servicediscovery->DiscoverInstancesRevision(
      NamespaceName => 'MyNamespaceName',
      ServiceName   => 'MyServiceName',

      );

    # Results:
    my $InstancesRevision =
      $DiscoverInstancesRevisionResponse->InstancesRevision;

# Returns a L<Paws::ServiceDiscovery::DiscoverInstancesRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DiscoverInstancesRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NamespaceName => Str

The C<HttpName> name of the namespace. It's found in the
C<HttpProperties> member of the C<Properties> member of the namespace.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that you specified when you registered the
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInstancesRevision in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

