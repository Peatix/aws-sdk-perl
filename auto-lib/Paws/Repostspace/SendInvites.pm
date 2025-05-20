
package Paws::Repostspace::SendInvites;
  use Moose;
  has AccessorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accessorIds', required => 1);
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceId', required => 1);
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendInvites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces/{spaceId}/invite');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::SendInvites - Arguments for method SendInvites on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendInvites on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method SendInvites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendInvites.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    $repostspace->SendInvites(
      AccessorIds => [ 'MyAccessorId', ... ],
      Body        => 'MyInviteBody',
      SpaceId     => 'MySpaceId',
      Title       => 'MyInviteTitle',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/SendInvites>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessorIds => ArrayRef[Str|Undef]

The array of identifiers for the users and groups.



=head2 B<REQUIRED> Body => Str

The body of the invite.



=head2 B<REQUIRED> SpaceId => Str

The ID of the private re:Post.



=head2 B<REQUIRED> Title => Str

The title of the invite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendInvites in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

