
package Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorization;
  use Moose;
  has CrossAccountAuthorization => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'crossAccountAuthorization', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCrossAccountAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/crossaccountauthorizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorization - Arguments for method CreateCrossAccountAuthorization on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCrossAccountAuthorization on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method CreateCrossAccountAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCrossAccountAuthorization.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $CreateCrossAccountAuthorizationResponse =
      $route53 -recovery-readiness->CreateCrossAccountAuthorization(
      CrossAccountAuthorization => 'MyCrossAccountAuthorization',

      );

    # Results:
    my $CrossAccountAuthorization =
      $CreateCrossAccountAuthorizationResponse->CrossAccountAuthorization;

# Returns a L<Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/CreateCrossAccountAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrossAccountAuthorization => Str

The cross-account authorization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCrossAccountAuthorization in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

