
package Paws::SecurityHub::StartConfigurationPolicyDisassociation;
  use Moose;
  has ConfigurationPolicyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Target => (is => 'ro', isa => 'Paws::SecurityHub::Target');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConfigurationPolicyDisassociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicyAssociation/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::StartConfigurationPolicyDisassociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StartConfigurationPolicyDisassociation - Arguments for method StartConfigurationPolicyDisassociation on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConfigurationPolicyDisassociation on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method StartConfigurationPolicyDisassociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConfigurationPolicyDisassociation.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $StartConfigurationPolicyDisassociationResponse =
      $securityhub->StartConfigurationPolicyDisassociation(
      ConfigurationPolicyIdentifier => 'MyNonEmptyString',
      Target                        => {
        AccountId            => 'MyNonEmptyString',
        OrganizationalUnitId => 'MyNonEmptyString',
        RootId               => 'MyNonEmptyString',
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/StartConfigurationPolicyDisassociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationPolicyIdentifier => Str

The Amazon Resource Name (ARN) of a configuration policy, the
universally unique identifier (UUID) of a configuration policy, or a
value of C<SELF_MANAGED_SECURITY_HUB> for a self-managed configuration.



=head2 Target => L<Paws::SecurityHub::Target>

The identifier of the target account, organizational unit, or the root
to disassociate from the specified configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConfigurationPolicyDisassociation in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

