
package Paws::Route53RecoveryReadiness::UpdateRecoveryGroup;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cells', required => 1);
  has RecoveryGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recoveryGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecoveryGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recoverygroups/{recoveryGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::UpdateRecoveryGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::UpdateRecoveryGroup - Arguments for method UpdateRecoveryGroup on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecoveryGroup on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method UpdateRecoveryGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecoveryGroup.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $UpdateRecoveryGroupResponse =
      $route53 -recovery-readiness->UpdateRecoveryGroup(
      Cells             => [ 'My__string', ... ],
      RecoveryGroupName => 'My__string',

      );

    # Results:
    my $Cells             = $UpdateRecoveryGroupResponse->Cells;
    my $RecoveryGroupArn  = $UpdateRecoveryGroupResponse->RecoveryGroupArn;
    my $RecoveryGroupName = $UpdateRecoveryGroupResponse->RecoveryGroupName;
    my $Tags              = $UpdateRecoveryGroupResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::UpdateRecoveryGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/UpdateRecoveryGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cells => ArrayRef[Str|Undef]

A list of cell Amazon Resource Names (ARNs). This list completely
replaces the previous list.



=head2 B<REQUIRED> RecoveryGroupName => Str

The name of a recovery group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecoveryGroup in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

