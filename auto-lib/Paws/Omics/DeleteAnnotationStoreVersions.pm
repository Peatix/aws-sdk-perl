
package Paws::Omics::DeleteAnnotationStoreVersions;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'versions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnnotationStoreVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}/versions/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::DeleteAnnotationStoreVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteAnnotationStoreVersions - Arguments for method DeleteAnnotationStoreVersions on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnnotationStoreVersions on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method DeleteAnnotationStoreVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnnotationStoreVersions.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $DeleteAnnotationStoreVersionsResponse =
      $omics->DeleteAnnotationStoreVersions(
      Name     => 'MyString',
      Versions => [
        'MyVersionName', ...    # min: 3, max: 255
      ],
      Force => 1,               # OPTIONAL
      );

    # Results:
    my $Errors = $DeleteAnnotationStoreVersionsResponse->Errors;

    # Returns a L<Paws::Omics::DeleteAnnotationStoreVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/DeleteAnnotationStoreVersions>

=head1 ATTRIBUTES


=head2 Force => Bool

Forces the deletion of an annotation store version when imports are
in-progress..



=head2 B<REQUIRED> Name => Str

The name of the annotation store from which versions are being deleted.



=head2 B<REQUIRED> Versions => ArrayRef[Str|Undef]

The versions of an annotation store to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnnotationStoreVersions in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

