
package Paws::SSMContacts::SendActivationCode;
  use Moose;
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendActivationCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::SendActivationCodeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::SendActivationCode - Arguments for method SendActivationCode on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendActivationCode on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method SendActivationCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendActivationCode.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    # To send an activation code
    # The following send-activation-code example sends an activation code and
    # message to the specified contact channel.
    my $SendActivationCodeResult =
      $ssm -
      contacts->SendActivationCode( 'ContactChannelId' =>
'arn:aws:ssm-contacts:us-east-1:111122223333:contact-channel/akuam/8ddae2d1-12c8-4e45-b852-c8587266c400'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/SendActivationCode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendActivationCode in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

