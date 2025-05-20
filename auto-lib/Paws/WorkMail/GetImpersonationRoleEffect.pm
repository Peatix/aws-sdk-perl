
package Paws::WorkMail::GetImpersonationRoleEffect;
  use Moose;
  has ImpersonationRoleId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has TargetUser => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImpersonationRoleEffect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetImpersonationRoleEffectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetImpersonationRoleEffect - Arguments for method GetImpersonationRoleEffect on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImpersonationRoleEffect on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetImpersonationRoleEffect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImpersonationRoleEffect.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetImpersonationRoleEffectResponse =
      $workmail->GetImpersonationRoleEffect(
      ImpersonationRoleId => 'MyImpersonationRoleId',
      OrganizationId      => 'MyOrganizationId',
      TargetUser          => 'MyEntityIdentifier',

      );

    # Results:
    my $Effect       = $GetImpersonationRoleEffectResponse->Effect;
    my $MatchedRules = $GetImpersonationRoleEffectResponse->MatchedRules;
    my $Type         = $GetImpersonationRoleEffectResponse->Type;

    # Returns a L<Paws::WorkMail::GetImpersonationRoleEffectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetImpersonationRoleEffect>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImpersonationRoleId => Str

The impersonation role ID to test.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization where the impersonation role is defined.



=head2 B<REQUIRED> TargetUser => Str

The WorkMail organization user chosen to test the impersonation role.
The following identity formats are available:

=over

=item *

User ID: C<12345678-1234-1234-1234-123456789012> or
C<S-1-1-12-1234567890-123456789-123456789-1234>

=item *

Email address: C<user@domain.tld>

=item *

User name: C<user>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImpersonationRoleEffect in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

