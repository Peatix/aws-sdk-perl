
package Paws::SecurityHub::CreateConfigurationPolicy;
  use Moose;
  has ConfigurationPolicy => (is => 'ro', isa => 'Paws::SecurityHub::Policy', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SecurityHub::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicy/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::CreateConfigurationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateConfigurationPolicy - Arguments for method CreateConfigurationPolicy on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationPolicy on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method CreateConfigurationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationPolicy.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $CreateConfigurationPolicyResponse =
      $securityhub->CreateConfigurationPolicy(
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
      },
      Name        => 'MyNonEmptyString',
      Description => 'MyNonEmptyString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateConfigurationPolicyResponse->Arn;
    my $ConfigurationPolicy =
      $CreateConfigurationPolicyResponse->ConfigurationPolicy;
    my $CreatedAt   = $CreateConfigurationPolicyResponse->CreatedAt;
    my $Description = $CreateConfigurationPolicyResponse->Description;
    my $Id          = $CreateConfigurationPolicyResponse->Id;
    my $Name        = $CreateConfigurationPolicyResponse->Name;
    my $UpdatedAt   = $CreateConfigurationPolicyResponse->UpdatedAt;

    # Returns a L<Paws::SecurityHub::CreateConfigurationPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/CreateConfigurationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationPolicy => L<Paws::SecurityHub::Policy>

An object that defines how Security Hub is configured. It includes
whether Security Hub is enabled or disabled, a list of enabled security
standards, a list of enabled or disabled security controls, and a list
of custom parameter values for specified controls. If you provide a
list of security controls that are enabled in the configuration policy,
Security Hub disables all other controls (including newly released
controls). If you provide a list of security controls that are disabled
in the configuration policy, Security Hub enables all other controls
(including newly released controls).



=head2 Description => Str

The description of the configuration policy.



=head2 B<REQUIRED> Name => Str

The name of the configuration policy. Alphanumeric characters and the
following ASCII characters are permitted: C<-, ., !, *, />.



=head2 Tags => L<Paws::SecurityHub::TagMap>

User-defined tags associated with a configuration policy. For more
information, see Tagging Security Hub resources
(https://docs.aws.amazon.com/securityhub/latest/userguide/tagging-resources.html)
in the I<Security Hub user guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationPolicy in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

