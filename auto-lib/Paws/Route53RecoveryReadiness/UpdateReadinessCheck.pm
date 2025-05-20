
package Paws::Route53RecoveryReadiness::UpdateReadinessCheck;
  use Moose;
  has ReadinessCheckName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'readinessCheckName', required => 1);
  has ResourceSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReadinessCheck');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/readinesschecks/{readinessCheckName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::UpdateReadinessCheckResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::UpdateReadinessCheck - Arguments for method UpdateReadinessCheck on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReadinessCheck on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method UpdateReadinessCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReadinessCheck.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $UpdateReadinessCheckResponse =
      $route53 -recovery-readiness->UpdateReadinessCheck(
      ReadinessCheckName => 'My__string',
      ResourceSetName    => 'My__string',

      );

    # Results:
    my $ReadinessCheckArn  = $UpdateReadinessCheckResponse->ReadinessCheckArn;
    my $ReadinessCheckName = $UpdateReadinessCheckResponse->ReadinessCheckName;
    my $ResourceSet        = $UpdateReadinessCheckResponse->ResourceSet;
    my $Tags               = $UpdateReadinessCheckResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::UpdateReadinessCheckResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/UpdateReadinessCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReadinessCheckName => Str

Name of a readiness check.



=head2 B<REQUIRED> ResourceSetName => Str

The name of the resource set to be checked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReadinessCheck in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

