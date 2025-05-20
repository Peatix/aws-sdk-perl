
package Paws::CloudFormation::DescribeGeneratedTemplate;
  use Moose;
  has GeneratedTemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGeneratedTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeGeneratedTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGeneratedTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeGeneratedTemplate - Arguments for method DescribeGeneratedTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGeneratedTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeGeneratedTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGeneratedTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeGeneratedTemplateOutput =
      $cloudformation->DescribeGeneratedTemplate(
      GeneratedTemplateName => 'MyGeneratedTemplateName',

      );

    # Results:
    my $CreationTime = $DescribeGeneratedTemplateOutput->CreationTime;
    my $GeneratedTemplateId =
      $DescribeGeneratedTemplateOutput->GeneratedTemplateId;
    my $GeneratedTemplateName =
      $DescribeGeneratedTemplateOutput->GeneratedTemplateName;
    my $LastUpdatedTime = $DescribeGeneratedTemplateOutput->LastUpdatedTime;
    my $Progress        = $DescribeGeneratedTemplateOutput->Progress;
    my $Resources       = $DescribeGeneratedTemplateOutput->Resources;
    my $StackId         = $DescribeGeneratedTemplateOutput->StackId;
    my $Status          = $DescribeGeneratedTemplateOutput->Status;
    my $StatusReason    = $DescribeGeneratedTemplateOutput->StatusReason;
    my $TemplateConfiguration =
      $DescribeGeneratedTemplateOutput->TemplateConfiguration;
    my $TotalWarnings = $DescribeGeneratedTemplateOutput->TotalWarnings;

    # Returns a L<Paws::CloudFormation::DescribeGeneratedTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeGeneratedTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeneratedTemplateName => Str

The name or Amazon Resource Name (ARN) of a generated template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGeneratedTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

