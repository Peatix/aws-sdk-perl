
package Paws::LakeFormation::DeleteObjectsOnCancel;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Objects => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::VirtualObject]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjectsOnCancel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteObjectsOnCancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::DeleteObjectsOnCancelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DeleteObjectsOnCancel - Arguments for method DeleteObjectsOnCancel on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjectsOnCancel on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DeleteObjectsOnCancel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjectsOnCancel.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DeleteObjectsOnCancelResponse = $lakeformation->DeleteObjectsOnCancel(
      DatabaseName => 'MyNameString',
      Objects      => [
        {
          Uri  => 'MyURI',           # min: 1, max: 1024
          ETag => 'MyETagString',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],
      TableName     => 'MyNameString',
      TransactionId => 'MyTransactionIdString',
      CatalogId     => 'MyCatalogIdString',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DeleteObjectsOnCancel>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The Glue data catalog that contains the governed table. Defaults to the
current account ID.



=head2 B<REQUIRED> DatabaseName => Str

The database that contains the governed table.



=head2 B<REQUIRED> Objects => ArrayRef[L<Paws::LakeFormation::VirtualObject>]

A list of VirtualObject structures, which indicates the Amazon S3
objects to be deleted if the transaction cancels.



=head2 B<REQUIRED> TableName => Str

The name of the governed table.



=head2 B<REQUIRED> TransactionId => Str

ID of the transaction that the writes occur in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjectsOnCancel in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

