
package Paws::QBusiness::GetIndexResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has CapacityConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IndexCapacityConfiguration', traits => ['NameInRequest'], request_name => 'capacityConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has DocumentAttributeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentAttributeConfiguration]', traits => ['NameInRequest'], request_name => 'documentAttributeConfigurations');
  has Error => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', traits => ['NameInRequest'], request_name => 'error');
  has IndexArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexArn');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexId');
  has IndexStatistics => (is => 'ro', isa => 'Paws::QBusiness::IndexStatistics', traits => ['NameInRequest'], request_name => 'indexStatistics');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetIndexResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The identifier of the Amazon Q Business application associated with the
index.


=head2 CapacityConfiguration => L<Paws::QBusiness::IndexCapacityConfiguration>

The storage capacity units chosen for your Amazon Q Business index.


=head2 CreatedAt => Str

The Unix timestamp when the Amazon Q Business index was created.


=head2 Description => Str

The description for the Amazon Q Business index.


=head2 DisplayName => Str

The name of the Amazon Q Business index.


=head2 DocumentAttributeConfigurations => ArrayRef[L<Paws::QBusiness::DocumentAttributeConfiguration>]

Configuration information for document attributes or metadata. Document
metadata are fields associated with your documents. For example, the
company department name associated with each document. For more
information, see Understanding document attributes
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes).


=head2 Error => L<Paws::QBusiness::ErrorDetail>

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a message that explains why.


=head2 IndexArn => Str

The Amazon Resource Name (ARN) of the Amazon Q Business index.


=head2 IndexId => Str

The identifier of the Amazon Q Business index.


=head2 IndexStatistics => L<Paws::QBusiness::IndexStatistics>

Provides information about the number of documents indexed.


=head2 Status => Str

The current status of the index. When the value is C<ACTIVE>, the index
is ready for use. If the C<Status> field value is C<FAILED>, the
C<ErrorMessage> field contains a message that explains why.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">
=head2 Type => Str

The type of index attached to your Amazon Q Business application.

Valid values are: C<"ENTERPRISE">, C<"STARTER">
=head2 UpdatedAt => Str

The Unix timestamp when the Amazon Q Business index was last updated.


=head2 _request_id => Str


=cut

