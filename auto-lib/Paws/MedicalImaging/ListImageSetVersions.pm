
package Paws::MedicalImaging::ListImageSetVersions;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'imageSetId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImageSetVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::ListImageSetVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::ListImageSetVersions - Arguments for method ListImageSetVersions on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImageSetVersions on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method ListImageSetVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImageSetVersions.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $ListImageSetVersionsResponse = $medical -imaging->ListImageSetVersions(
      DatastoreId => 'MyDatastoreId',
      ImageSetId  => 'MyImageSetId',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $ImageSetPropertiesList =
      $ListImageSetVersionsResponse->ImageSetPropertiesList;
    my $NextToken = $ListImageSetVersionsResponse->NextToken;

    # Returns a L<Paws::MedicalImaging::ListImageSetVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/ListImageSetVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.



=head2 MaxResults => Int

The max results count.



=head2 NextToken => Str

The pagination token used to request the list of image set versions on
the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImageSetVersions in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

