
package Paws::Wisdom::GetAssistant;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssistant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::GetAssistantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetAssistant - Arguments for method GetAssistant on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssistant on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method GetAssistant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssistant.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $GetAssistantResponse = $wisdom->GetAssistant(
      AssistantId => 'MyUuidOrArn',

    );

    # Results:
    my $Assistant = $GetAssistantResponse->Assistant;

    # Returns a L<Paws::Wisdom::GetAssistantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetAssistant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Wisdom assistant. Can be either the ID or the
ARN. URLs cannot contain the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssistant in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

