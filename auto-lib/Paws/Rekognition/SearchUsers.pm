
package Paws::Rekognition::SearchUsers;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceId => (is => 'ro', isa => 'Str');
  has MaxUsers => (is => 'ro', isa => 'Int');
  has UserId => (is => 'ro', isa => 'Str');
  has UserMatchThreshold => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::SearchUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchUsers - Arguments for method SearchUsers on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchUsers on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method SearchUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchUsers.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $SearchUsersResponse = $rekognition->SearchUsers(
      CollectionId       => 'MyCollectionId',
      FaceId             => 'MyFaceId',         # OPTIONAL
      MaxUsers           => 1,                  # OPTIONAL
      UserId             => 'MyUserId',         # OPTIONAL
      UserMatchThreshold => 1.0,                # OPTIONAL
    );

    # Results:
    my $FaceModelVersion = $SearchUsersResponse->FaceModelVersion;
    my $SearchedFace     = $SearchUsersResponse->SearchedFace;
    my $SearchedUser     = $SearchUsersResponse->SearchedUser;
    my $UserMatches      = $SearchUsersResponse->UserMatches;

    # Returns a L<Paws::Rekognition::SearchUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/SearchUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The ID of an existing collection containing the UserID, used with a
UserId or FaceId. If a FaceId is provided, UserId isnE<rsquo>t required
to be present in the Collection.



=head2 FaceId => Str

ID for the existing face.



=head2 MaxUsers => Int

Maximum number of identities to return.



=head2 UserId => Str

ID for the existing User.



=head2 UserMatchThreshold => Num

Optional value that specifies the minimum confidence in the matched
UserID to return. Default value of 80.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchUsers in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

