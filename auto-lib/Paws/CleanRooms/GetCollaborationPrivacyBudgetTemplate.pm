
package Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplate;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has PrivacyBudgetTemplateIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'privacyBudgetTemplateIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationPrivacyBudgetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplate - Arguments for method GetCollaborationPrivacyBudgetTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationPrivacyBudgetTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetCollaborationPrivacyBudgetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationPrivacyBudgetTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetCollaborationPrivacyBudgetTemplateOutput =
      $cleanrooms->GetCollaborationPrivacyBudgetTemplate(
      CollaborationIdentifier         => 'MyCollaborationIdentifier',
      PrivacyBudgetTemplateIdentifier => 'MyPrivacyBudgetTemplateIdentifier',

      );

    # Results:
    my $CollaborationPrivacyBudgetTemplate =
      $GetCollaborationPrivacyBudgetTemplateOutput
      ->CollaborationPrivacyBudgetTemplate;

# Returns a L<Paws::CleanRooms::GetCollaborationPrivacyBudgetTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetCollaborationPrivacyBudgetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for one of your collaborations.



=head2 B<REQUIRED> PrivacyBudgetTemplateIdentifier => Str

A unique identifier for one of your privacy budget templates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationPrivacyBudgetTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

