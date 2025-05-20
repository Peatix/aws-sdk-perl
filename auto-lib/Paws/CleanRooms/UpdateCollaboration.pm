
package Paws::CleanRooms::UpdateCollaboration;
  use Moose;
  has AnalyticsEngine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyticsEngine');
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCollaboration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateCollaborationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateCollaboration - Arguments for method UpdateCollaboration on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCollaboration on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateCollaboration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCollaboration.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateCollaborationOutput = $cleanrooms->UpdateCollaboration(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      AnalyticsEngine         => 'SPARK',                         # OPTIONAL
      Description             => 'MyCollaborationDescription',    # OPTIONAL
      Name                    => 'MyCollaborationName',           # OPTIONAL
    );

    # Results:
    my $Collaboration = $UpdateCollaborationOutput->Collaboration;

    # Returns a L<Paws::CleanRooms::UpdateCollaborationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateCollaboration>

=head1 ATTRIBUTES


=head2 AnalyticsEngine => Str

The analytics engine.

Valid values are: C<"SPARK">, C<"CLEAN_ROOMS_SQL">

=head2 B<REQUIRED> CollaborationIdentifier => Str

The identifier for the collaboration.



=head2 Description => Str

A description of the collaboration.



=head2 Name => Str

A human-readable identifier provided by the collaboration owner.
Display names are not unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCollaboration in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

