
package Paws::MailManager::GetArchiveMessageContent;
  use Moose;
  has ArchivedMessageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetArchiveMessageContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetArchiveMessageContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetArchiveMessageContent - Arguments for method GetArchiveMessageContent on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetArchiveMessageContent on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetArchiveMessageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetArchiveMessageContent.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetArchiveMessageContentResponse =
      $mail -manager->GetArchiveMessageContent(
      ArchivedMessageId => 'MyArchivedMessageId',

      );

    # Results:
    my $Body = $GetArchiveMessageContentResponse->Body;

    # Returns a L<Paws::MailManager::GetArchiveMessageContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetArchiveMessageContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchivedMessageId => Str

The unique identifier of the archived email message.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetArchiveMessageContent in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

