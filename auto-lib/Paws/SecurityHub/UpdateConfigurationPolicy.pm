
package Paws::SecurityHub::UpdateConfigurationPolicy;
  use Moose;
  has ConfigurationPolicy => (is => 'ro', isa => 'Paws::SecurityHub::Policy');
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has UpdatedReason => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicy/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateConfigurationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateConfigurationPolicy - Arguments for method UpdateConfigurationPolicy on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationPolicy on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateConfigurationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationPolicy.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateConfigurationPolicyResponse =
      $securityhub->UpdateConfigurationPolicy(
      Identifier          => 'MyNonEmptyString',
      ConfigurationPolicy => {
        SecurityHub => {
          EnabledStandardIdentifiers => [ 'MyNonEmptyString', ... ],  # OPTIONAL
          SecurityControlsConfiguration => {
            DisabledSecurityControlIdentifiers => [ 'MyNonEmptyString', ... ]
            ,                                                         # OPTIONAL
            EnabledSecurityControlIdentifiers => [ 'MyNonEmptyString', ... ]
            ,                                                         # OPTIONAL
            SecurityControlCustomParameters => [
              {
                Parameters => {
                  'MyNonEmptyString' => {
                    ValueType => 'DEFAULT',    # values: DEFAULT, CUSTOM
                    Value     => {
                      Boolean     => 1,                              # OPTIONAL
                      Double      => 1,                              # OPTIONAL
                      Enum        => 'MyNonEmptyString',
                      EnumList    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      Integer     => 1,                              # OPTIONAL
                      IntegerList => [
                        1, ...                                       # OPTIONAL
                      ],    # OPTIONAL
                      String     => 'MyNonEmptyString',
                      StringList => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    },    # OPTIONAL
                  },
                },    # OPTIONAL
                SecurityControlId => 'MyNonEmptyString',
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          ServiceEnabled => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description   => 'MyNonEmptyString',    # OPTIONAL
      Name          => 'MyNonEmptyString',    # OPTIONAL
      UpdatedReason => 'MyNonEmptyString',    # OPTIONAL
      );

    # Results:
    my $Arn = $UpdateConfigurationPolicyResponse->Arn;
    my $ConfigurationPolicy =
      $UpdateConfigurationPolicyResponse->ConfigurationPolicy;
    my $CreatedAt   = $UpdateConfigurationPolicyResponse->CreatedAt;
    my $Description = $UpdateConfigurationPolicyResponse->Description;
    my $Id          = $UpdateConfigurationPolicyResponse->Id;
    my $Name        = $UpdateConfigurationPolicyResponse->Name;
    my $UpdatedAt   = $UpdateConfigurationPolicyResponse->UpdatedAt;

    # Returns a L<Paws::SecurityHub::UpdateConfigurationPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateConfigurationPolicy>

=head1 ATTRIBUTES


=head2 ConfigurationPolicy => L<Paws::SecurityHub::Policy>

An object that defines how Security Hub is configured. It includes
whether Security Hub is enabled or disabled, a list of enabled security
standards, a list of enabled or disabled security controls, and a list
of custom parameter values for specified controls. If you provide a
list of security controls that are enabled in the configuration policy,
Security Hub disables all other controls (including newly released
controls). If you provide a list of security controls that are disabled
in the configuration policy, Security Hub enables all other controls
(including newly released controls).

When updating a configuration policy, provide a complete list of
standards that you want to enable and a complete list of controls that
you want to enable or disable. The updated configuration replaces the
current configuration.



=head2 Description => Str

The description of the configuration policy.



=head2 B<REQUIRED> Identifier => Str

The Amazon Resource Name (ARN) or universally unique identifier (UUID)
of the configuration policy.



=head2 Name => Str

The name of the configuration policy. Alphanumeric characters and the
following ASCII characters are permitted: C<-, ., !, *, />.



=head2 UpdatedReason => Str

The reason for updating the configuration policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationPolicy in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

