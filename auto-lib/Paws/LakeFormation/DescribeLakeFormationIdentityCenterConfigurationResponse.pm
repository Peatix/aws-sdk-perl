
package Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfigurationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has CatalogId => (is => 'ro', isa => 'Str');
  has ExternalFiltering => (is => 'ro', isa => 'Paws::LakeFormation::ExternalFilteringConfiguration');
  has InstanceArn => (is => 'ro', isa => 'Str');
  has ResourceShare => (is => 'ro', isa => 'Str');
  has ShareRecipients => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::DataLakePrincipal]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of the Lake Formation application
integrated with IAM Identity Center.


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.


=head2 ExternalFiltering => L<Paws::LakeFormation::ExternalFilteringConfiguration>

Indicates if external filtering is enabled.


=head2 InstanceArn => Str

The Amazon Resource Name (ARN) of the connection.


=head2 ResourceShare => Str

The Amazon Resource Name (ARN) of the RAM share.


=head2 ShareRecipients => ArrayRef[L<Paws::LakeFormation::DataLakePrincipal>]

A list of Amazon Web Services account IDs or Amazon Web Services
organization/organizational unit ARNs that are allowed to access data
managed by Lake Formation.

If the C<ShareRecipients> list includes valid values, a resource share
is created with the principals you want to have access to the resources
as the C<ShareRecipients>.

If the C<ShareRecipients> value is null or the list is empty, no
resource share is created.


=head2 _request_id => Str


=cut

