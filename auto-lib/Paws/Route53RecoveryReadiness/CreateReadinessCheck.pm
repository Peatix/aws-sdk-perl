
package Paws::Route53RecoveryReadiness::CreateReadinessCheck;
  use Moose;
  has ReadinessCheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readinessCheckName', required => 1);
  has ResourceSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReadinessCheck');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/readinesschecks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::CreateReadinessCheckResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateReadinessCheck - Arguments for method CreateReadinessCheck on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReadinessCheck on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method CreateReadinessCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReadinessCheck.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $CreateReadinessCheckResponse =
      $route53 -recovery-readiness->CreateReadinessCheck(
      ReadinessCheckName => 'My__string',
      ResourceSetName    => 'My__string',
      Tags               => { 'My__string' => 'My__string', },    # OPTIONAL
      );

    # Results:
    my $ReadinessCheckArn  = $CreateReadinessCheckResponse->ReadinessCheckArn;
    my $ReadinessCheckName = $CreateReadinessCheckResponse->ReadinessCheckName;
    my $ResourceSet        = $CreateReadinessCheckResponse->ResourceSet;
    my $Tags               = $CreateReadinessCheckResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::CreateReadinessCheckResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/CreateReadinessCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReadinessCheckName => Str

The name of the readiness check to create.



=head2 B<REQUIRED> ResourceSetName => Str

The name of the resource set to check.



=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReadinessCheck in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

