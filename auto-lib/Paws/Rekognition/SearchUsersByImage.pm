
package Paws::Rekognition::SearchUsersByImage;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxUsers => (is => 'ro', isa => 'Int');
  has QualityFilter => (is => 'ro', isa => 'Str');
  has UserMatchThreshold => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchUsersByImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::SearchUsersByImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchUsersByImage - Arguments for method SearchUsersByImage on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchUsersByImage on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method SearchUsersByImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchUsersByImage.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $SearchUsersByImageResponse = $rekognition->SearchUsersByImage(
      CollectionId => 'MyCollectionId',
      Image        => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 5242880; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      MaxUsers           => 1,         # OPTIONAL
      QualityFilter      => 'NONE',    # OPTIONAL
      UserMatchThreshold => 1.0,       # OPTIONAL
    );

    # Results:
    my $FaceModelVersion = $SearchUsersByImageResponse->FaceModelVersion;
    my $SearchedFace     = $SearchUsersByImageResponse->SearchedFace;
    my $UnsearchedFaces  = $SearchUsersByImageResponse->UnsearchedFaces;
    my $UserMatches      = $SearchUsersByImageResponse->UserMatches;

    # Returns a L<Paws::Rekognition::SearchUsersByImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/SearchUsersByImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The ID of an existing collection containing the UserID.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>





=head2 MaxUsers => Int

Maximum number of UserIDs to return.



=head2 QualityFilter => Str

A filter that specifies a quality bar for how much filtering is done to
identify faces. Filtered faces aren't searched for in the collection.
The default value is NONE.

Valid values are: C<"NONE">, C<"AUTO">, C<"LOW">, C<"MEDIUM">, C<"HIGH">

=head2 UserMatchThreshold => Num

Specifies the minimum confidence in the UserID match to return. Default
value is 80.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchUsersByImage in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

