
package Paws::MailManager::DeleteRelay;
  use Moose;
  has RelayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRelay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::DeleteRelayResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::DeleteRelay - Arguments for method DeleteRelay on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRelay on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method DeleteRelay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRelay.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $DeleteRelayResponse = $mail -manager->DeleteRelay(
      RelayId => 'MyRelayId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/DeleteRelay>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelayId => Str

The unique relay identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRelay in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

