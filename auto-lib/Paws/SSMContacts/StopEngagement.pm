
package Paws::SSMContacts::StopEngagement;
  use Moose;
  has EngagementId => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::StopEngagementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::StopEngagement - Arguments for method StopEngagement on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopEngagement on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method StopEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopEngagement.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
 # To stop an engagement
 # The following stop-engagement example stops an engagement from paging further
 # contacts and contact channels.
    my $StopEngagementResult =
      $ssm -
      contacts->StopEngagement( 'EngagementId' =>
'arn:aws:ssm-contacts:us-east-2:111122223333:engagement/example_escalation/69e40ce1-8dbb-4d57-8962-5fbe7fc53356'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/StopEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementId => Str

The Amazon Resource Name (ARN) of the engagement.



=head2 Reason => Str

The reason that you're stopping the engagement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopEngagement in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

