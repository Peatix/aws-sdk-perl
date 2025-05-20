
package Paws::Repostspace::BatchAddRole;
  use Moose;
  has AccessorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accessorIds', required => 1);
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role', required => 1);
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchAddRole');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces/{spaceId}/roles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Repostspace::BatchAddRoleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::BatchAddRole - Arguments for method BatchAddRole on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAddRole on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method BatchAddRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAddRole.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    my $BatchAddRoleOutput = $repostspace->BatchAddRole(
      AccessorIds => [ 'MyAccessorId', ... ],
      Role        => 'EXPERT',
      SpaceId     => 'MySpaceId',

    );

    # Results:
    my $AddedAccessorIds = $BatchAddRoleOutput->AddedAccessorIds;
    my $Errors           = $BatchAddRoleOutput->Errors;

    # Returns a L<Paws::Repostspace::BatchAddRoleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/BatchAddRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessorIds => ArrayRef[Str|Undef]

The user or group accessor identifiers to add the role to.



=head2 B<REQUIRED> Role => Str

The role to add to the users or groups.

Valid values are: C<"EXPERT">, C<"MODERATOR">, C<"ADMINISTRATOR">, C<"SUPPORTREQUESTOR">

=head2 B<REQUIRED> SpaceId => Str

The unique ID of the private re:Post.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAddRole in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

