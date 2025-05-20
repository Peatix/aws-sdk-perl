
package Paws::CleanRooms::DeleteMember;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/member/{accountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteMemberOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteMember - Arguments for method DeleteMember on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMember on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMember.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteMemberOutput = $cleanrooms->DeleteMember(
      AccountId               => 'MyAccountId',
      CollaborationIdentifier => 'MyCollaborationIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID of the member to remove.



=head2 B<REQUIRED> CollaborationIdentifier => Str

The unique identifier for the associated collaboration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMember in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

