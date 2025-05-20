
package Paws::VPCLattice::RegisterTargets;
  use Moose;
  has TargetGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'targetGroupIdentifier', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::Target]', traits => ['NameInRequest'], request_name => 'targets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetgroups/{targetGroupIdentifier}/registertargets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::RegisterTargetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::RegisterTargets - Arguments for method RegisterTargets on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTargets on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method RegisterTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTargets.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $RegisterTargetsResponse = $vpc -lattice->RegisterTargets(
      TargetGroupIdentifier => 'MyTargetGroupIdentifier',
      Targets               => [
        {
          Id   => 'MyTargetIdString',    # min: 1, max: 200
          Port => 1,                     # min: 1, max: 65535; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Successful   = $RegisterTargetsResponse->Successful;
    my $Unsuccessful = $RegisterTargetsResponse->Unsuccessful;

    # Returns a L<Paws::VPCLattice::RegisterTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/RegisterTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupIdentifier => Str

The ID or ARN of the target group.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::VPCLattice::Target>]

The targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTargets in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

