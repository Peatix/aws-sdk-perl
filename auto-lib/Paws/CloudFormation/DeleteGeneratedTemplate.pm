
package Paws::CloudFormation::DeleteGeneratedTemplate;
  use Moose;
  has GeneratedTemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGeneratedTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeleteGeneratedTemplate - Arguments for method DeleteGeneratedTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGeneratedTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeleteGeneratedTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGeneratedTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    $cloudformation->DeleteGeneratedTemplate(
      GeneratedTemplateName => 'MyGeneratedTemplateName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeleteGeneratedTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeneratedTemplateName => Str

The name or Amazon Resource Name (ARN) of a generated template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGeneratedTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

