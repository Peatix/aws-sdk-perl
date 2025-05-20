
package Paws::DirectConnect::DescribeRouterConfiguration;
  use Moose;
  has RouterTypeIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routerTypeIdentifier' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouterConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DescribeRouterConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeRouterConfiguration - Arguments for method DescribeRouterConfiguration on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRouterConfiguration on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeRouterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRouterConfiguration.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DescribeRouterConfigurationResponse =
      $directconnect->DescribeRouterConfiguration(
      VirtualInterfaceId   => 'MyVirtualInterfaceId',
      RouterTypeIdentifier => 'MyRouterTypeIdentifier',    # OPTIONAL
      );

    # Results:
    my $CustomerRouterConfig =
      $DescribeRouterConfigurationResponse->CustomerRouterConfig;
    my $Router = $DescribeRouterConfigurationResponse->Router;
    my $VirtualInterfaceId =
      $DescribeRouterConfigurationResponse->VirtualInterfaceId;
    my $VirtualInterfaceName =
      $DescribeRouterConfigurationResponse->VirtualInterfaceName;

 # Returns a L<Paws::DirectConnect::DescribeRouterConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeRouterConfiguration>

=head1 ATTRIBUTES


=head2 RouterTypeIdentifier => Str

Identifies the router by a combination of vendor, platform, and
software version. For example,
C<CiscoSystemsInc-2900SeriesRouters-IOS124>.



=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRouterConfiguration in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

