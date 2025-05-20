package Paws::EC2::ImageMetadata;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has DeprecationTime => (is => 'ro', isa => 'Str', request_name => 'deprecationTime', traits => ['NameInRequest']);
  has ImageAllowed => (is => 'ro', isa => 'Bool', request_name => 'imageAllowed', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', request_name => 'imageOwnerAlias', traits => ['NameInRequest']);
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'imageOwnerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'imageState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImageMetadata object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImageMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date and time the AMI was created.


=head2 DeprecationTime => Str

The deprecation date and time of the AMI, in UTC, in the following
format: I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z.


=head2 ImageAllowed => Bool

If C<true>, the AMI satisfies the criteria for Allowed AMIs and can be
discovered and used in the account. If C<false>, the AMI can't be
discovered or used in the account.

For more information, see Control the discovery and use of AMIs in
Amazon EC2 with Allowed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html)
in I<Amazon EC2 User Guide>.


=head2 ImageId => Str

The ID of the AMI.


=head2 ImageOwnerAlias => Str

The alias of the AMI owner.

Valid values: C<amazon> | C<aws-backup-vault> | C<aws-marketplace>


=head2 IsPublic => Bool

Indicates whether the AMI has public launch permissions. A value of
C<true> means this AMI has public launch permissions, while C<false>
means it has only implicit (AMI owner) or explicit (shared with your
account) launch permissions.


=head2 Name => Str

The name of the AMI.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the AMI.


=head2 State => Str

The current state of the AMI. If the state is C<available>, the AMI is
successfully registered and can be used to launch an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
