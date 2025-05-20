
package Paws::WellArchitected::CreateReviewTemplate;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Lenses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Notes => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::WellArchitected::TagMap');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReviewTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reviewTemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateReviewTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateReviewTemplate - Arguments for method CreateReviewTemplate on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReviewTemplate on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateReviewTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReviewTemplate.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateReviewTemplateOutput = $wellarchitected->CreateReviewTemplate(
      ClientRequestToken => 'MyClientRequestToken',
      Description        => 'MyTemplateDescription',
      Lenses             => [
        'MyLensAlias', ...    # min: 1, max: 128
      ],
      TemplateName => 'MyTemplateName',
      Notes        => 'MyNotes',          # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $TemplateArn = $CreateReviewTemplateOutput->TemplateArn;

    # Returns a L<Paws::WellArchitected::CreateReviewTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateReviewTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> Description => Str

The review template description.



=head2 B<REQUIRED> Lenses => ArrayRef[Str|Undef]

Lenses applied to the review template.



=head2 Notes => Str





=head2 Tags => L<Paws::WellArchitected::TagMap>

The tags assigned to the review template.



=head2 B<REQUIRED> TemplateName => Str

Name of the review template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReviewTemplate in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

