
package Paws::Connect::DeletePrompt;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has PromptId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PromptId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{InstanceId}/{PromptId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeletePrompt - Arguments for method DeletePrompt on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePrompt on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeletePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePrompt.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DeletePrompt(
      InstanceId => 'MyInstanceId',
      PromptId   => 'MyPromptId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeletePrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> PromptId => Str

A unique identifier for the prompt.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePrompt in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

