
package Paws::MailManager::UpdateRelay;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Paws::MailManager::RelayAuthentication');
  has RelayId => (is => 'ro', isa => 'Str', required => 1);
  has RelayName => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRelay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::UpdateRelayResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::UpdateRelay - Arguments for method UpdateRelay on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRelay on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method UpdateRelay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRelay.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $UpdateRelayResponse = $mail -manager->UpdateRelay(
      RelayId        => 'MyRelayId',
      Authentication => {
        NoAuthentication => {

        },    # OPTIONAL
        SecretArn => 'MySecretArn',    # OPTIONAL
      },    # OPTIONAL
      RelayName  => 'MyRelayName',          # OPTIONAL
      ServerName => 'MyRelayServerName',    # OPTIONAL
      ServerPort => 1,                      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/UpdateRelay>

=head1 ATTRIBUTES


=head2 Authentication => L<Paws::MailManager::RelayAuthentication>

Authentication for the relay destination serverE<mdash>specify the
secretARN where the SMTP credentials are stored.



=head2 B<REQUIRED> RelayId => Str

The unique relay identifier.



=head2 RelayName => Str

The name of the relay resource.



=head2 ServerName => Str

The destination relay server address.



=head2 ServerPort => Int

The destination relay server port.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRelay in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

