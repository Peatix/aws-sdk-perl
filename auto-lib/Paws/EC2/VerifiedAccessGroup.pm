package Paws::EC2::VerifiedAccessGroup;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeletionTime => (is => 'ro', isa => 'Str', request_name => 'deletionTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationResponse', request_name => 'sseSpecification', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VerifiedAccessGroupArn => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessGroupArn', traits => ['NameInRequest']);
  has VerifiedAccessGroupId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessGroupId', traits => ['NameInRequest']);
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessInstanceId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessGroup object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., VerifiedAccessInstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time.


=head2 DeletionTime => Str

The deletion time.


=head2 Description => Str

A description for the Amazon Web Services Verified Access group.


=head2 LastUpdatedTime => Str

The last updated time.


=head2 Owner => Str

The Amazon Web Services account number that owns the group.


=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationResponse>

The options in use for server side encryption.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 VerifiedAccessGroupArn => Str

The ARN of the Verified Access group.


=head2 VerifiedAccessGroupId => Str

The ID of the Verified Access group.


=head2 VerifiedAccessInstanceId => Str

The ID of the Amazon Web Services Verified Access instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
