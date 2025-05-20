
package Paws::VPCLattice::GetResourcePolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcepolicy/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetResourcePolicyResponse = $vpc -lattice->GetResourcePolicy(
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $Policy = $GetResourcePolicyResponse->Policy;

    # Returns a L<Paws::VPCLattice::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the service network or service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

