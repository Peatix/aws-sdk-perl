
package Paws::Rekognition::AssociateFaces;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserMatchThreshold => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::AssociateFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::AssociateFaces - Arguments for method AssociateFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method AssociateFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $AssociateFacesResponse = $rekognition->AssociateFaces(
      CollectionId       => 'MyCollectionId',
      FaceIds            => [ 'MyFaceId', ... ],
      UserId             => 'MyUserId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      UserMatchThreshold => 1.0,                       # OPTIONAL
    );

    # Results:
    my $AssociatedFaces = $AssociateFacesResponse->AssociatedFaces;
    my $UnsuccessfulFaceAssociations =
      $AssociateFacesResponse->UnsuccessfulFaceAssociations;
    my $UserStatus = $AssociateFacesResponse->UserStatus;

    # Returns a L<Paws::Rekognition::AssociateFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/AssociateFaces>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the request to C<AssociateFaces>. If
you use the same token with multiple C<AssociateFaces> requests, the
same response is returned. Use ClientRequestToken to prevent the same
request from being processed more than once.



=head2 B<REQUIRED> CollectionId => Str

The ID of an existing collection containing the UserID.



=head2 B<REQUIRED> FaceIds => ArrayRef[Str|Undef]

An array of FaceIDs to associate with the UserID.



=head2 B<REQUIRED> UserId => Str

The ID for the existing UserID.



=head2 UserMatchThreshold => Num

An optional value specifying the minimum confidence in the UserID match
to return. The default value is 75.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

