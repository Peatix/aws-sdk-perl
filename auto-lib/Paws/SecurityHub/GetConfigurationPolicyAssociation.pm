
package Paws::SecurityHub::GetConfigurationPolicyAssociation;
  use Moose;
  has Target => (is => 'ro', isa => 'Paws::SecurityHub::Target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfigurationPolicyAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicyAssociation/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetConfigurationPolicyAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetConfigurationPolicyAssociation - Arguments for method GetConfigurationPolicyAssociation on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationPolicyAssociation on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetConfigurationPolicyAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationPolicyAssociation.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetConfigurationPolicyAssociationResponse =
      $securityhub->GetConfigurationPolicyAssociation(
      Target => {
        AccountId            => 'MyNonEmptyString',    # OPTIONAL
        OrganizationalUnitId => 'MyNonEmptyString',    # OPTIONAL
        RootId               => 'MyNonEmptyString',    # OPTIONAL
      },

      );

    # Results:
    my $AssociationStatus =
      $GetConfigurationPolicyAssociationResponse->AssociationStatus;
    my $AssociationStatusMessage =
      $GetConfigurationPolicyAssociationResponse->AssociationStatusMessage;
    my $AssociationType =
      $GetConfigurationPolicyAssociationResponse->AssociationType;
    my $ConfigurationPolicyId =
      $GetConfigurationPolicyAssociationResponse->ConfigurationPolicyId;
    my $TargetId   = $GetConfigurationPolicyAssociationResponse->TargetId;
    my $TargetType = $GetConfigurationPolicyAssociationResponse->TargetType;
    my $UpdatedAt  = $GetConfigurationPolicyAssociationResponse->UpdatedAt;

# Returns a L<Paws::SecurityHub::GetConfigurationPolicyAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetConfigurationPolicyAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Target => L<Paws::SecurityHub::Target>

The target account ID, organizational unit ID, or the root ID to
retrieve the association for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationPolicyAssociation in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

