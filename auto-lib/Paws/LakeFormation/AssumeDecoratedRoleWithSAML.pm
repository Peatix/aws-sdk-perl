
package Paws::LakeFormation::AssumeDecoratedRoleWithSAML;
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeDecoratedRoleWithSAML');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/AssumeDecoratedRoleWithSAML');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::AssumeDecoratedRoleWithSAMLResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::AssumeDecoratedRoleWithSAML - Arguments for method AssumeDecoratedRoleWithSAML on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssumeDecoratedRoleWithSAML on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method AssumeDecoratedRoleWithSAML.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssumeDecoratedRoleWithSAML.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $AssumeDecoratedRoleWithSAMLResponse =
      $lakeformation->AssumeDecoratedRoleWithSAML(
      PrincipalArn    => 'MyIAMSAMLProviderArn',
      RoleArn         => 'MyIAMRoleArn',
      SAMLAssertion   => 'MySAMLAssertionString',
      DurationSeconds => 1,                         # OPTIONAL
      );

    # Results:
    my $AccessKeyId     = $AssumeDecoratedRoleWithSAMLResponse->AccessKeyId;
    my $Expiration      = $AssumeDecoratedRoleWithSAMLResponse->Expiration;
    my $SecretAccessKey = $AssumeDecoratedRoleWithSAMLResponse->SecretAccessKey;
    my $SessionToken    = $AssumeDecoratedRoleWithSAMLResponse->SessionToken;

 # Returns a L<Paws::LakeFormation::AssumeDecoratedRoleWithSAMLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/AssumeDecoratedRoleWithSAML>

=head1 ATTRIBUTES


=head2 DurationSeconds => Int

The time period, between 900 and 43,200 seconds, for the timeout of the
temporary credentials.



=head2 B<REQUIRED> PrincipalArn => Str

The Amazon Resource Name (ARN) of the SAML provider in IAM that
describes the IdP.



=head2 B<REQUIRED> RoleArn => Str

The role that represents an IAM principal whose scope down policy
allows it to call credential vending APIs such as
C<GetTemporaryTableCredentials>. The caller must also have iam:PassRole
permission on this role.



=head2 B<REQUIRED> SAMLAssertion => Str

A SAML assertion consisting of an assertion statement for the user who
needs temporary credentials. This must match the SAML assertion that
was issued to IAM. This must be Base64 encoded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssumeDecoratedRoleWithSAML in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

