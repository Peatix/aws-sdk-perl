
package Paws::VPCLattice::CreateServiceNetwork;
  use Moose;
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SharingConfig => (is => 'ro', isa => 'Paws::VPCLattice::SharingConfig', traits => ['NameInRequest'], request_name => 'sharingConfig');
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateServiceNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceNetwork - Arguments for method CreateServiceNetwork on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceNetwork on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateServiceNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceNetwork.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateServiceNetworkResponse = $vpc -lattice->CreateServiceNetwork(
      Name          => 'MyServiceNetworkName',
      AuthType      => 'NONE',                   # OPTIONAL
      ClientToken   => 'MyClientToken',          # OPTIONAL
      SharingConfig => {
        Enabled => 1,                            # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn           = $CreateServiceNetworkResponse->Arn;
    my $AuthType      = $CreateServiceNetworkResponse->AuthType;
    my $Id            = $CreateServiceNetworkResponse->Id;
    my $Name          = $CreateServiceNetworkResponse->Name;
    my $SharingConfig = $CreateServiceNetworkResponse->SharingConfig;

    # Returns a L<Paws::VPCLattice::CreateServiceNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateServiceNetwork>

=head1 ATTRIBUTES


=head2 AuthType => Str

The type of IAM policy.

=over

=item *

C<NONE>: The resource does not use an IAM policy. This is the default.

=item *

C<AWS_IAM>: The resource uses an IAM policy. When this type is used,
auth is enabled and an auth policy is required.

=back


Valid values are: C<"NONE">, C<"AWS_IAM">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> Name => Str

The name of the service network. The name must be unique to the
account. The valid characters are a-z, 0-9, and hyphens (-). You can't
use a hyphen as the first or last character, or immediately after
another hyphen.



=head2 SharingConfig => L<Paws::VPCLattice::SharingConfig>

Specify if the service network should be enabled for sharing.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the service network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceNetwork in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

