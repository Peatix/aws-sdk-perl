
package Paws::SSMContacts::DeactivateContactChannel;
  use Moose;
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DeactivateContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DeactivateContactChannel - Arguments for method DeactivateContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeactivateContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DeactivateContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeactivateContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
 # To deactivate a contact channel
 # The following ``deactivate-contact-channel`` example deactivates a contact
 # channel. Deactivating a contact channel means the contact channel will no
 # longer be paged during an incident. You can also reactivate a contact channel
 # at any time using the activate-contact-channel operation.
    my $DeactivateContactChannelResult =
      $ssm -
      contacts->DeactivateContactChannel( 'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:contact-channel/akuam/fc7405c4-46b2-48b7-87b2-93e2f225b90d'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DeactivateContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel you're
deactivating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeactivateContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

