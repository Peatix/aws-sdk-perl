
package Paws::FSX::DeleteDataRepositoryAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DeleteDataInFileSystem => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataRepositoryAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DeleteDataRepositoryAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteDataRepositoryAssociation - Arguments for method DeleteDataRepositoryAssociation on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataRepositoryAssociation on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DeleteDataRepositoryAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataRepositoryAssociation.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DeleteDataRepositoryAssociationResponse =
      $fsx->DeleteDataRepositoryAssociation(
      AssociationId          => 'MyDataRepositoryAssociationId',
      ClientRequestToken     => 'MyClientRequestToken',            # OPTIONAL
      DeleteDataInFileSystem => 1,                                 # OPTIONAL
      );

    # Results:
    my $AssociationId = $DeleteDataRepositoryAssociationResponse->AssociationId;
    my $DeleteDataInFileSystem =
      $DeleteDataRepositoryAssociationResponse->DeleteDataInFileSystem;
    my $Lifecycle = $DeleteDataRepositoryAssociationResponse->Lifecycle;

    # Returns a L<Paws::FSX::DeleteDataRepositoryAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DeleteDataRepositoryAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the data repository association that you want to delete.



=head2 ClientRequestToken => Str





=head2 DeleteDataInFileSystem => Bool

Set to C<true> to delete the data in the file system that corresponds
to the data repository association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataRepositoryAssociation in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

