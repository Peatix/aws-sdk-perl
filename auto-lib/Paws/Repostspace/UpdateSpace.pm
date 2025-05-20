
package Paws::Repostspace::UpdateSpace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceId', required => 1);
  has Tier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces/{spaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::UpdateSpace - Arguments for method UpdateSpace on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSpace on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method UpdateSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSpace.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    $repostspace->UpdateSpace(
      SpaceId     => 'MySpaceId',
      Description => 'MySpaceDescription',    # OPTIONAL
      RoleArn     => 'MyArn',                 # OPTIONAL
      Tier        => 'BASIC',                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/UpdateSpace>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the private re:Post. This is used only to help you
identify this private re:Post.



=head2 RoleArn => Str

The IAM role that grants permissions to the private re:Post to convert
unanswered questions into AWS support tickets.



=head2 B<REQUIRED> SpaceId => Str

The unique ID of this private re:Post.



=head2 Tier => Str

The pricing tier of this private re:Post.

Valid values are: C<"BASIC">, C<"STANDARD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSpace in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

