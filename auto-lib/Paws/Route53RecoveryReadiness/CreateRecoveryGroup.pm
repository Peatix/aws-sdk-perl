
package Paws::Route53RecoveryReadiness::CreateRecoveryGroup;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cells');
  has RecoveryGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryGroupName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecoveryGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recoverygroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::CreateRecoveryGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateRecoveryGroup - Arguments for method CreateRecoveryGroup on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecoveryGroup on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method CreateRecoveryGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecoveryGroup.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $CreateRecoveryGroupResponse =
      $route53 -recovery-readiness->CreateRecoveryGroup(
      RecoveryGroupName => 'My__string',
      Cells             => [ 'My__string', ... ],                # OPTIONAL
      Tags              => { 'My__string' => 'My__string', },    # OPTIONAL
      );

    # Results:
    my $Cells             = $CreateRecoveryGroupResponse->Cells;
    my $RecoveryGroupArn  = $CreateRecoveryGroupResponse->RecoveryGroupArn;
    my $RecoveryGroupName = $CreateRecoveryGroupResponse->RecoveryGroupName;
    my $Tags              = $CreateRecoveryGroupResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::CreateRecoveryGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/CreateRecoveryGroup>

=head1 ATTRIBUTES


=head2 Cells => ArrayRef[Str|Undef]

A list of the cell Amazon Resource Names (ARNs) in the recovery group.



=head2 B<REQUIRED> RecoveryGroupName => Str

The name of the recovery group to create.



=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecoveryGroup in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

