
package Paws::CleanRooms::DeleteMembership;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteMembershipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteMembership - Arguments for method DeleteMembership on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMembership on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMembership.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteMembershipOutput = $cleanrooms->DeleteMembership(
      MembershipIdentifier => 'MyMembershipIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for a membership resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMembership in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

