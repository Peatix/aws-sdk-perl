
package Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfiguration;
  use Moose;
  has ApplicationStatus => (is => 'ro', isa => 'Str');
  has CatalogId => (is => 'ro', isa => 'Str');
  has ExternalFiltering => (is => 'ro', isa => 'Paws::LakeFormation::ExternalFilteringConfiguration');
  has ShareRecipients => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::DataLakePrincipal]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLakeFormationIdentityCenterConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLakeFormationIdentityCenterConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateLakeFormationIdentityCenterConfiguration - Arguments for method UpdateLakeFormationIdentityCenterConfiguration on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLakeFormationIdentityCenterConfiguration on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateLakeFormationIdentityCenterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLakeFormationIdentityCenterConfiguration.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateLakeFormationIdentityCenterConfigurationResponse =
      $lakeformation->UpdateLakeFormationIdentityCenterConfiguration(
      ApplicationStatus => 'ENABLED',              # OPTIONAL
      CatalogId         => 'MyCatalogIdString',    # OPTIONAL
      ExternalFiltering => {
        AuthorizedTargets => [ 'MyScopeTarget', ... ],
        Status            => 'ENABLED',            # values: ENABLED, DISABLED

      },    # OPTIONAL
      ShareRecipients => [
        {
          DataLakePrincipalIdentifier =>
            'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateLakeFormationIdentityCenterConfiguration>

=head1 ATTRIBUTES


=head2 ApplicationStatus => Str

Allows to enable or disable the IAM Identity Center connection.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, view definitions, and other control
information to manage your Lake Formation environment.



=head2 ExternalFiltering => L<Paws::LakeFormation::ExternalFilteringConfiguration>

A list of the account IDs of Amazon Web Services accounts of
third-party applications that are allowed to access data managed by
Lake Formation.



=head2 ShareRecipients => ArrayRef[L<Paws::LakeFormation::DataLakePrincipal>]

A list of Amazon Web Services account IDs or Amazon Web Services
organization/organizational unit ARNs that are allowed to access to
access data managed by Lake Formation.

If the C<ShareRecipients> list includes valid values, then the resource
share is updated with the principals you want to have access to the
resources.

If the C<ShareRecipients> value is null, both the list of share
recipients and the resource share remain unchanged.

If the C<ShareRecipients> value is an empty list, then the existing
share recipients list will be cleared, and the resource share will be
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLakeFormationIdentityCenterConfiguration in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

