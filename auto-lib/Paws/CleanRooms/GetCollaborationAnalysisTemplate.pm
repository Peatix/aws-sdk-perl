
package Paws::CleanRooms::GetCollaborationAnalysisTemplate;
  use Moose;
  has AnalysisTemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisTemplateArn', required => 1);
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationAnalysisTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetCollaborationAnalysisTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationAnalysisTemplate - Arguments for method GetCollaborationAnalysisTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationAnalysisTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetCollaborationAnalysisTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationAnalysisTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetCollaborationAnalysisTemplateOutput =
      $cleanrooms->GetCollaborationAnalysisTemplate(
      AnalysisTemplateArn     => 'MyAnalysisTemplateArn',
      CollaborationIdentifier => 'MyCollaborationIdentifier',

      );

    # Results:
    my $CollaborationAnalysisTemplate =
      $GetCollaborationAnalysisTemplateOutput->CollaborationAnalysisTemplate;

 # Returns a L<Paws::CleanRooms::GetCollaborationAnalysisTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetCollaborationAnalysisTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisTemplateArn => Str

The Amazon Resource Name (ARN) associated with the analysis template
within a collaboration.



=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for the collaboration that the analysis templates
belong to. Currently accepts collaboration ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationAnalysisTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

