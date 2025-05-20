
package Paws::LakeFormation::CreateLakeFormationIdentityCenterConfiguration;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ExternalFiltering => (is => 'ro', isa => 'Paws::LakeFormation::ExternalFilteringConfiguration');
  has InstanceArn => (is => 'ro', isa => 'Str');
  has ShareRecipients => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::DataLakePrincipal]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLakeFormationIdentityCenterConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLakeFormationIdentityCenterConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::CreateLakeFormationIdentityCenterConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CreateLakeFormationIdentityCenterConfiguration - Arguments for method CreateLakeFormationIdentityCenterConfiguration on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLakeFormationIdentityCenterConfiguration on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method CreateLakeFormationIdentityCenterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLakeFormationIdentityCenterConfiguration.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $CreateLakeFormationIdentityCenterConfigurationResponse =
      $lakeformation->CreateLakeFormationIdentityCenterConfiguration(
      CatalogId         => 'MyCatalogIdString',    # OPTIONAL
      ExternalFiltering => {
        AuthorizedTargets => [ 'MyScopeTarget', ... ],
        Status            => 'ENABLED',            # values: ENABLED, DISABLED

      },    # OPTIONAL
      InstanceArn     => 'MyIdentityCenterInstanceArn',    # OPTIONAL
      ShareRecipients => [
        {
          DataLakePrincipalIdentifier =>
            'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ApplicationArn =
      $CreateLakeFormationIdentityCenterConfigurationResponse->ApplicationArn;

# Returns a L<Paws::LakeFormation::CreateLakeFormationIdentityCenterConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/CreateLakeFormationIdentityCenterConfiguration>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, view definitions, and other control
information to manage your Lake Formation environment.



=head2 ExternalFiltering => L<Paws::LakeFormation::ExternalFilteringConfiguration>

A list of the account IDs of Amazon Web Services accounts of
third-party applications that are allowed to access data managed by
Lake Formation.



=head2 InstanceArn => Str

The ARN of the IAM Identity Center instance for which the operation
will be executed. For more information about ARNs, see Amazon Resource
Names (ARNs) and Amazon Web Services Service Namespaces in the Amazon
Web Services General Reference.



=head2 ShareRecipients => ArrayRef[L<Paws::LakeFormation::DataLakePrincipal>]

A list of Amazon Web Services account IDs and/or Amazon Web Services
organization/organizational unit ARNs that are allowed to access data
managed by Lake Formation.

If the C<ShareRecipients> list includes valid values, a resource share
is created with the principals you want to have access to the
resources.

If the C<ShareRecipients> value is null or the list is empty, no
resource share is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLakeFormationIdentityCenterConfiguration in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

