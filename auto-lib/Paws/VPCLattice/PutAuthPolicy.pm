
package Paws::VPCLattice::PutAuthPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAuthPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authpolicy/{resourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::PutAuthPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::PutAuthPolicy - Arguments for method PutAuthPolicy on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAuthPolicy on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method PutAuthPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAuthPolicy.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $PutAuthPolicyResponse = $vpc -lattice->PutAuthPolicy(
      Policy             => 'MyAuthPolicyString',
      ResourceIdentifier => 'MyResourceIdentifier',

    );

    # Results:
    my $Policy = $PutAuthPolicyResponse->Policy;
    my $State  = $PutAuthPolicyResponse->State;

    # Returns a L<Paws::VPCLattice::PutAuthPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/PutAuthPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The auth policy. The policy string in JSON must not contain newlines or
blank lines.



=head2 B<REQUIRED> ResourceIdentifier => Str

The ID or ARN of the service network or service for which the policy is
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAuthPolicy in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

