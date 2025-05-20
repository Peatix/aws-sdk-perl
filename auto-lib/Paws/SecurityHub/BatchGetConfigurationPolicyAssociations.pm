
package Paws::SecurityHub::BatchGetConfigurationPolicyAssociations;
  use Moose;
  has ConfigurationPolicyAssociationIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ConfigurationPolicyAssociation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetConfigurationPolicyAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicyAssociation/batchget');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchGetConfigurationPolicyAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetConfigurationPolicyAssociations - Arguments for method BatchGetConfigurationPolicyAssociations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetConfigurationPolicyAssociations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchGetConfigurationPolicyAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetConfigurationPolicyAssociations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchGetConfigurationPolicyAssociationsResponse =
      $securityhub->BatchGetConfigurationPolicyAssociations(
      ConfigurationPolicyAssociationIdentifiers => [
        {
          Target => {
            AccountId            => 'MyNonEmptyString',    # OPTIONAL
            OrganizationalUnitId => 'MyNonEmptyString',    # OPTIONAL
            RootId               => 'MyNonEmptyString',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $ConfigurationPolicyAssociations =
      $BatchGetConfigurationPolicyAssociationsResponse
      ->ConfigurationPolicyAssociations;
    my $UnprocessedConfigurationPolicyAssociations =
      $BatchGetConfigurationPolicyAssociationsResponse
      ->UnprocessedConfigurationPolicyAssociations;

# Returns a L<Paws::SecurityHub::BatchGetConfigurationPolicyAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchGetConfigurationPolicyAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationPolicyAssociationIdentifiers => ArrayRef[L<Paws::SecurityHub::ConfigurationPolicyAssociation>]

Specifies one or more target account IDs, organizational unit (OU) IDs,
or the root ID to retrieve associations for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetConfigurationPolicyAssociations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

