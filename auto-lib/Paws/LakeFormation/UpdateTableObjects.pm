
package Paws::LakeFormation::UpdateTableObjects;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str');
  has WriteOperations => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::WriteOperation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTableObjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateTableObjects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateTableObjectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateTableObjects - Arguments for method UpdateTableObjects on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTableObjects on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateTableObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTableObjects.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateTableObjectsResponse = $lakeformation->UpdateTableObjects(
      DatabaseName    => 'MyNameString',
      TableName       => 'MyNameString',
      WriteOperations => [
        {
          AddObject => {
            ETag            => 'MyETagString',    # min: 1, max: 255
            Size            => 1,
            Uri             => 'MyURI',           # min: 1, max: 1024
            PartitionValues => [
              'MyPartitionValueString', ...       # max: 1024
            ],    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
          DeleteObject => {
            Uri             => 'MyURI',           # min: 1, max: 1024
            ETag            => 'MyETagString',    # min: 1, max: 255
            PartitionValues => [
              'MyPartitionValueString', ...       # max: 1024
            ],    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      CatalogId     => 'MyCatalogIdString',        # OPTIONAL
      TransactionId => 'MyTransactionIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateTableObjects>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog containing the governed table to update. Defaults to the
callerE<rsquo>s account ID.



=head2 B<REQUIRED> DatabaseName => Str

The database containing the governed table to update.



=head2 B<REQUIRED> TableName => Str

The governed table to update.



=head2 TransactionId => Str

The transaction at which to do the write.



=head2 B<REQUIRED> WriteOperations => ArrayRef[L<Paws::LakeFormation::WriteOperation>]

A list of C<WriteOperation> objects that define an object to add to or
delete from the manifest for a governed table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTableObjects in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

