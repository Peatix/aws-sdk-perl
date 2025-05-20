
package Paws::WorkMail::PutIdentityProviderConfiguration;
  use Moose;
  has AuthenticationMode => (is => 'ro', isa => 'Str', required => 1);
  has IdentityCenterConfiguration => (is => 'ro', isa => 'Paws::WorkMail::IdentityCenterConfiguration', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has PersonalAccessTokenConfiguration => (is => 'ro', isa => 'Paws::WorkMail::PersonalAccessTokenConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIdentityProviderConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutIdentityProviderConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutIdentityProviderConfiguration - Arguments for method PutIdentityProviderConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIdentityProviderConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutIdentityProviderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIdentityProviderConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutIdentityProviderConfigurationResponse =
      $workmail->PutIdentityProviderConfiguration(
      AuthenticationMode          => 'IDENTITY_PROVIDER_ONLY',
      IdentityCenterConfiguration => {
        ApplicationArn => 'MyApplicationArn',    # min: 10, max: 1224
        InstanceArn    => 'MyInstanceArn',       # min: 10, max: 1124

      },
      OrganizationId                   => 'MyOrganizationId',
      PersonalAccessTokenConfiguration => {
        Status         => 'ACTIVE',              # values: ACTIVE, INACTIVE
        LifetimeInDays => 1,                     # min: 1, max: 3653; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutIdentityProviderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationMode => Str

The authentication mode used in WorkMail.

Valid values are: C<"IDENTITY_PROVIDER_ONLY">, C<"IDENTITY_PROVIDER_AND_DIRECTORY">

=head2 B<REQUIRED> IdentityCenterConfiguration => L<Paws::WorkMail::IdentityCenterConfiguration>

The details of the IAM Identity Center configuration.



=head2 B<REQUIRED> OrganizationId => Str

The ID of the WorkMail Organization.



=head2 B<REQUIRED> PersonalAccessTokenConfiguration => L<Paws::WorkMail::PersonalAccessTokenConfiguration>

The details of the Personal Access Token configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIdentityProviderConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

