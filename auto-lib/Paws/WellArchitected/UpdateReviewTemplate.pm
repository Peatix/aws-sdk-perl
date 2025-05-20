
package Paws::WellArchitected::UpdateReviewTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LensesToAssociate => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LensesToDisassociate => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Notes => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReviewTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reviewTemplates/{TemplateArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateReviewTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateReviewTemplate - Arguments for method UpdateReviewTemplate on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReviewTemplate on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateReviewTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReviewTemplate.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateReviewTemplateOutput = $wellarchitected->UpdateReviewTemplate(
      TemplateArn       => 'MyTemplateArn',
      Description       => 'MyTemplateDescription',    # OPTIONAL
      LensesToAssociate => [
        'MyLensAlias', ...                             # min: 1, max: 128
      ],    # OPTIONAL
      LensesToDisassociate => [
        'MyLensAlias', ...    # min: 1, max: 128
      ],    # OPTIONAL
      Notes        => 'MyNotes',           # OPTIONAL
      TemplateName => 'MyTemplateName',    # OPTIONAL
    );

    # Results:
    my $ReviewTemplate = $UpdateReviewTemplateOutput->ReviewTemplate;

    # Returns a L<Paws::WellArchitected::UpdateReviewTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateReviewTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

The review template description.



=head2 LensesToAssociate => ArrayRef[Str|Undef]

A list of lens aliases or ARNs to apply to the review template.



=head2 LensesToDisassociate => ArrayRef[Str|Undef]

A list of lens aliases or ARNs to unapply to the review template. The
C<wellarchitected> lens cannot be unapplied.



=head2 Notes => Str





=head2 B<REQUIRED> TemplateArn => Str

The review template ARN.



=head2 TemplateName => Str

The review template name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReviewTemplate in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

