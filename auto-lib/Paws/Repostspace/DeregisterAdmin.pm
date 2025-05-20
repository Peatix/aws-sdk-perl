
package Paws::Repostspace::DeregisterAdmin;
  use Moose;
  has AdminId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'adminId', required => 1);
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterAdmin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces/{spaceId}/admins/{adminId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::DeregisterAdmin - Arguments for method DeregisterAdmin on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterAdmin on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method DeregisterAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterAdmin.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    $repostspace->DeregisterAdmin(
      AdminId => 'MyAdminId',
      SpaceId => 'MySpaceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/DeregisterAdmin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminId => Str

The ID of the admin to remove.



=head2 B<REQUIRED> SpaceId => Str

The ID of the private re:Post to remove the admin from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterAdmin in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

