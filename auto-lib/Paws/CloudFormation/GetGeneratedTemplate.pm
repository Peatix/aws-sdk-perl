
package Paws::CloudFormation::GetGeneratedTemplate;
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has GeneratedTemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeneratedTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetGeneratedTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGeneratedTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetGeneratedTemplate - Arguments for method GetGeneratedTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGeneratedTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method GetGeneratedTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGeneratedTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $GetGeneratedTemplateOutput = $cloudformation->GetGeneratedTemplate(
      GeneratedTemplateName => 'MyGeneratedTemplateName',
      Format                => 'JSON',                      # OPTIONAL
    );

    # Results:
    my $Status       = $GetGeneratedTemplateOutput->Status;
    my $TemplateBody = $GetGeneratedTemplateOutput->TemplateBody;

    # Returns a L<Paws::CloudFormation::GetGeneratedTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/GetGeneratedTemplate>

=head1 ATTRIBUTES


=head2 Format => Str

The language to use to retrieve for the generated template. Supported
values are:

=over

=item *

C<JSON>

=item *

C<YAML>

=back


Valid values are: C<"JSON">, C<"YAML">

=head2 B<REQUIRED> GeneratedTemplateName => Str

The name or Amazon Resource Name (ARN) of the generated template. The
format is
C<arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}>.
For example,
C<arn:aws:cloudformation:I<us-east-1>:I<123456789012>:generatedtemplate/I<2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc>
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGeneratedTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

