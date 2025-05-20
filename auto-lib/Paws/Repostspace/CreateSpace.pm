
package Paws::Repostspace::CreateSpace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Subdomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subdomain', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Repostspace::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Tier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tier', required => 1);
  has UserKMSKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userKMSKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Repostspace::CreateSpaceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::CreateSpace - Arguments for method CreateSpace on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSpace on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method CreateSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSpace.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    my $CreateSpaceOutput = $repostspace->CreateSpace(
      Name        => 'MySpaceName',
      Subdomain   => 'MySpaceSubdomain',
      Tier        => 'BASIC',
      Description => 'MySpaceDescription',    # OPTIONAL
      RoleArn     => 'MyArn',                 # OPTIONAL
      Tags        => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      UserKMSKey => 'MyKMSKey',    # OPTIONAL
    );

    # Results:
    my $SpaceId = $CreateSpaceOutput->SpaceId;

    # Returns a L<Paws::Repostspace::CreateSpaceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/CreateSpace>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the private re:Post. This is used only to help you
identify this private re:Post.



=head2 B<REQUIRED> Name => Str

The name for the private re:Post. This must be unique in your account.



=head2 RoleArn => Str

The IAM role that grants permissions to the private re:Post to convert
unanswered questions into AWS support tickets.



=head2 B<REQUIRED> Subdomain => Str

The subdomain that you use to access your AWS re:Post Private private
re:Post. All custom subdomains must be approved by AWS before use. In
addition to your custom subdomain, all private re:Posts are issued an
AWS generated subdomain for immediate use.



=head2 Tags => L<Paws::Repostspace::Tags>

The list of tags associated with the private re:Post.



=head2 B<REQUIRED> Tier => Str

The pricing tier for the private re:Post.

Valid values are: C<"BASIC">, C<"STANDARD">

=head2 UserKMSKey => Str

The AWS KMS key ARN thatE<rsquo>s used for the AWS KMS encryption. If
you don't provide a key, your data is encrypted by default with a key
that AWS owns and manages for you.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSpace in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

