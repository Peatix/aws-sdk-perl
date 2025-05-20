
package Paws::Omics::GetAnnotationStoreVersion;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnnotationStoreVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}/version/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetAnnotationStoreVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetAnnotationStoreVersion - Arguments for method GetAnnotationStoreVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnnotationStoreVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetAnnotationStoreVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnnotationStoreVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetAnnotationStoreVersionResponse = $omics->GetAnnotationStoreVersion(
      Name        => 'MyString',
      VersionName => 'MyString',

    );

    # Results:
    my $CreationTime     = $GetAnnotationStoreVersionResponse->CreationTime;
    my $Description      = $GetAnnotationStoreVersionResponse->Description;
    my $Id               = $GetAnnotationStoreVersionResponse->Id;
    my $Name             = $GetAnnotationStoreVersionResponse->Name;
    my $Status           = $GetAnnotationStoreVersionResponse->Status;
    my $StatusMessage    = $GetAnnotationStoreVersionResponse->StatusMessage;
    my $StoreId          = $GetAnnotationStoreVersionResponse->StoreId;
    my $Tags             = $GetAnnotationStoreVersionResponse->Tags;
    my $UpdateTime       = $GetAnnotationStoreVersionResponse->UpdateTime;
    my $VersionArn       = $GetAnnotationStoreVersionResponse->VersionArn;
    my $VersionName      = $GetAnnotationStoreVersionResponse->VersionName;
    my $VersionOptions   = $GetAnnotationStoreVersionResponse->VersionOptions;
    my $VersionSizeBytes = $GetAnnotationStoreVersionResponse->VersionSizeBytes;

    # Returns a L<Paws::Omics::GetAnnotationStoreVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetAnnotationStoreVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name given to an annotation store version to distinguish it from
others.



=head2 B<REQUIRED> VersionName => Str

The name given to an annotation store version to distinguish it from
others.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnnotationStoreVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

