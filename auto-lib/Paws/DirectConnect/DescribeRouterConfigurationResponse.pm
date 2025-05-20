
package Paws::DirectConnect::DescribeRouterConfigurationResponse;
  use Moose;
  has CustomerRouterConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerRouterConfig' );
  has Router => (is => 'ro', isa => 'Paws::DirectConnect::RouterType', traits => ['NameInRequest'], request_name => 'router' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeRouterConfigurationResponse

=head1 ATTRIBUTES


=head2 CustomerRouterConfig => Str

The customer router configuration.


=head2 Router => L<Paws::DirectConnect::RouterType>

The details about the router.


=head2 VirtualInterfaceId => Str

The ID assigned to the virtual interface.


=head2 VirtualInterfaceName => Str

Provides the details about a virtual interface's router.


=head2 _request_id => Str


=cut

1;