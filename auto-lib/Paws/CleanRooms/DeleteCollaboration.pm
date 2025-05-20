
package Paws::CleanRooms::DeleteCollaboration;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCollaboration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteCollaborationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteCollaboration - Arguments for method DeleteCollaboration on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCollaboration on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteCollaboration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCollaboration.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteCollaborationOutput = $cleanrooms->DeleteCollaboration(
      CollaborationIdentifier => 'MyCollaborationIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteCollaboration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The identifier for the collaboration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCollaboration in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

