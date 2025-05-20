
package Paws::VPCLattice::UpdateServiceNetwork;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType', required => 1);
  has ServiceNetworkIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceNetworkIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworks/{serviceNetworkIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateServiceNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateServiceNetwork - Arguments for method UpdateServiceNetwork on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceNetwork on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateServiceNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceNetwork.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateServiceNetworkResponse = $vpc -lattice->UpdateServiceNetwork(
      AuthType                 => 'NONE',
      ServiceNetworkIdentifier => 'MyServiceNetworkIdentifier',

    );

    # Results:
    my $Arn      = $UpdateServiceNetworkResponse->Arn;
    my $AuthType = $UpdateServiceNetworkResponse->AuthType;
    my $Id       = $UpdateServiceNetworkResponse->Id;
    my $Name     = $UpdateServiceNetworkResponse->Name;

    # Returns a L<Paws::VPCLattice::UpdateServiceNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateServiceNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthType => Str

The type of IAM policy.

=over

=item *

C<NONE>: The resource does not use an IAM policy. This is the default.

=item *

C<AWS_IAM>: The resource uses an IAM policy. When this type is used,
auth is enabled and an auth policy is required.

=back


Valid values are: C<"NONE">, C<"AWS_IAM">

=head2 B<REQUIRED> ServiceNetworkIdentifier => Str

The ID or ARN of the service network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceNetwork in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

