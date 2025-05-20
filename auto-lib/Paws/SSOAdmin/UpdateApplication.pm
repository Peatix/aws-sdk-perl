
package Paws::SSOAdmin::UpdateApplication;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PortalOptions => (is => 'ro', isa => 'Paws::SSOAdmin::UpdateApplicationPortalOptions');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::UpdateApplication - Arguments for method UpdateApplication on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $UpdateApplicationResponse = $sso->UpdateApplication(
      ApplicationArn => 'MyApplicationArn',
      Description    => 'MyDescription',            # OPTIONAL
      Name           => 'MyApplicationNameType',    # OPTIONAL
      PortalOptions  => {
        SignInOptions => {
          Origin => 'IDENTITY_CENTER',    # values: IDENTITY_CENTER, APPLICATION
          ApplicationUrl => 'MyApplicationUrl',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Status => 'ENABLED',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application. For more information about ARNs,
see Amazon Resource Names (ARNs) and Amazon Web Services Service
Namespaces in the I<Amazon Web Services General Reference>.



=head2 Description => Str

The description of the .



=head2 Name => Str

Specifies the updated name for the application.



=head2 PortalOptions => L<Paws::SSOAdmin::UpdateApplicationPortalOptions>

A structure that describes the options for the portal associated with
an application.



=head2 Status => Str

Specifies whether the application is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

