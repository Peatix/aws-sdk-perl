
package Paws::SSMContacts::DeleteContactChannel;
  use Moose;
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DeleteContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DeleteContactChannel - Arguments for method DeleteContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DeleteContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    # To delete a contact channel
    # The following delete-contact-channel example deletes a contact channel.
    # Deleting a contact channel ensures the contact channel will not be paged
    # during an incident.
    my $DeleteContactChannelResult =
      $ssm -
      contacts->DeleteContactChannel( 'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-1:111122223333:contact-channel/akuam/13149bad-52ee-45ea-ae1e-45857f78f9b2'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DeleteContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

