
package Paws::DataZone::CreateDataProductRevisionOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has FirstRevisionCreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstRevisionCreatedAt');
  has FirstRevisionCreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstRevisionCreatedBy');
  has FormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'formsOutput');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DataProductItem]', traits => ['NameInRequest'], request_name => 'items');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDataProductRevisionOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp at which the data product revision is created.


=head2 CreatedBy => Str

The user who created the data product revision.


=head2 Description => Str

The description of the data product revision.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where data product revision is created.


=head2 FirstRevisionCreatedAt => Str

The timestamp at which the first revision of the data product is
created.


=head2 FirstRevisionCreatedBy => Str

The user who created the first revision of the data product.


=head2 FormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The metadata forms of the data product revision.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms of the data product revision.


=head2 B<REQUIRED> Id => Str

The ID of the data product revision.


=head2 Items => ArrayRef[L<Paws::DataZone::DataProductItem>]

The data assets of the data product revision.


=head2 B<REQUIRED> Name => Str

The name of the data product revision.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the owning project of the data product revision.


=head2 B<REQUIRED> Revision => Str

The revision of the data product revision.


=head2 B<REQUIRED> Status => Str

The status of the data product revision.

Valid values are: C<"CREATED">, C<"CREATING">, C<"CREATE_FAILED">
=head2 _request_id => Str


=cut

