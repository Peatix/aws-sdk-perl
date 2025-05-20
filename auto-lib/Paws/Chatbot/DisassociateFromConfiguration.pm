
package Paws::Chatbot::DisassociateFromConfiguration;
  use Moose;
  has ChatConfiguration => (is => 'ro', isa => 'Str', required => 1);
  has Resource => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateFromConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disassociate-from-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DisassociateFromConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DisassociateFromConfiguration - Arguments for method DisassociateFromConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateFromConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DisassociateFromConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateFromConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DisassociateFromConfigurationResult =
      $chatbot->DisassociateFromConfiguration(
      ChatConfiguration => 'MyChatConfigurationArn',
      Resource          => 'MyResourceIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DisassociateFromConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfiguration => Str

The channel configuration the resource is being disassociated from.



=head2 B<REQUIRED> Resource => Str

The resource (for example, a custom action) Amazon Resource Name (ARN)
to unlink.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateFromConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

