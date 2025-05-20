
package Paws::Omics::UpdateAnnotationStoreVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnnotationStoreVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}/version/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::UpdateAnnotationStoreVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateAnnotationStoreVersion - Arguments for method UpdateAnnotationStoreVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnnotationStoreVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateAnnotationStoreVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnnotationStoreVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $UpdateAnnotationStoreVersionResponse =
      $omics->UpdateAnnotationStoreVersion(
      Name        => 'MyString',
      VersionName => 'MyString',
      Description => 'MyDescription',    # OPTIONAL
      );

    # Results:
    my $CreationTime = $UpdateAnnotationStoreVersionResponse->CreationTime;
    my $Description  = $UpdateAnnotationStoreVersionResponse->Description;
    my $Id           = $UpdateAnnotationStoreVersionResponse->Id;
    my $Name         = $UpdateAnnotationStoreVersionResponse->Name;
    my $Status       = $UpdateAnnotationStoreVersionResponse->Status;
    my $StoreId      = $UpdateAnnotationStoreVersionResponse->StoreId;
    my $UpdateTime   = $UpdateAnnotationStoreVersionResponse->UpdateTime;
    my $VersionName  = $UpdateAnnotationStoreVersionResponse->VersionName;

    # Returns a L<Paws::Omics::UpdateAnnotationStoreVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateAnnotationStoreVersion>

=head1 ATTRIBUTES


=head2 Description => Str

The description of an annotation store.



=head2 B<REQUIRED> Name => Str

The name of an annotation store.



=head2 B<REQUIRED> VersionName => Str

The name of an annotation store version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnnotationStoreVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

