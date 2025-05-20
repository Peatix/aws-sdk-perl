
package Paws::VPCLattice::GetTargetGroup;
  use Moose;
  has TargetGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'targetGroupIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTargetGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetgroups/{targetGroupIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetTargetGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetTargetGroup - Arguments for method GetTargetGroup on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTargetGroup on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTargetGroup.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetTargetGroupResponse = $vpc -lattice->GetTargetGroup(
      TargetGroupIdentifier => 'MyTargetGroupIdentifier',

    );

    # Results:
    my $Arn            = $GetTargetGroupResponse->Arn;
    my $Config         = $GetTargetGroupResponse->Config;
    my $CreatedAt      = $GetTargetGroupResponse->CreatedAt;
    my $FailureCode    = $GetTargetGroupResponse->FailureCode;
    my $FailureMessage = $GetTargetGroupResponse->FailureMessage;
    my $Id             = $GetTargetGroupResponse->Id;
    my $LastUpdatedAt  = $GetTargetGroupResponse->LastUpdatedAt;
    my $Name           = $GetTargetGroupResponse->Name;
    my $ServiceArns    = $GetTargetGroupResponse->ServiceArns;
    my $Status         = $GetTargetGroupResponse->Status;
    my $Type           = $GetTargetGroupResponse->Type;

    # Returns a L<Paws::VPCLattice::GetTargetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetTargetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupIdentifier => Str

The ID or ARN of the target group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTargetGroup in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

