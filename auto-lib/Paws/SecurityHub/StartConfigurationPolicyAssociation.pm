
package Paws::SecurityHub::StartConfigurationPolicyAssociation;
  use Moose;
  has ConfigurationPolicyIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Target => (is => 'ro', isa => 'Paws::SecurityHub::Target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConfigurationPolicyAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicyAssociation/associate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::StartConfigurationPolicyAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StartConfigurationPolicyAssociation - Arguments for method StartConfigurationPolicyAssociation on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConfigurationPolicyAssociation on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method StartConfigurationPolicyAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConfigurationPolicyAssociation.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $StartConfigurationPolicyAssociationResponse =
      $securityhub->StartConfigurationPolicyAssociation(
      ConfigurationPolicyIdentifier => 'MyNonEmptyString',
      Target                        => {
        AccountId            => 'MyNonEmptyString',
        OrganizationalUnitId => 'MyNonEmptyString',
        RootId               => 'MyNonEmptyString',
      },

      );

    # Results:
    my $AssociationStatus =
      $StartConfigurationPolicyAssociationResponse->AssociationStatus;
    my $AssociationStatusMessage =
      $StartConfigurationPolicyAssociationResponse->AssociationStatusMessage;
    my $AssociationType =
      $StartConfigurationPolicyAssociationResponse->AssociationType;
    my $ConfigurationPolicyId =
      $StartConfigurationPolicyAssociationResponse->ConfigurationPolicyId;
    my $TargetId   = $StartConfigurationPolicyAssociationResponse->TargetId;
    my $TargetType = $StartConfigurationPolicyAssociationResponse->TargetType;
    my $UpdatedAt  = $StartConfigurationPolicyAssociationResponse->UpdatedAt;

# Returns a L<Paws::SecurityHub::StartConfigurationPolicyAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/StartConfigurationPolicyAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationPolicyIdentifier => Str

The Amazon Resource Name (ARN) of a configuration policy, the
universally unique identifier (UUID) of a configuration policy, or a
value of C<SELF_MANAGED_SECURITY_HUB> for a self-managed configuration.



=head2 B<REQUIRED> Target => L<Paws::SecurityHub::Target>

The identifier of the target account, organizational unit, or the root
to associate with the specified configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConfigurationPolicyAssociation in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

