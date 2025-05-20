
package Paws::SSMIncidents::UpdateIncidentRecord;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ChatChannel => (is => 'ro', isa => 'Paws::SSMIncidents::ChatChannel', traits => ['NameInRequest'], request_name => 'chatChannel');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Impact => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'impact');
  has NotificationTargets => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::NotificationTargetItem]', traits => ['NameInRequest'], request_name => 'notificationTargets');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Summary => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'summary');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIncidentRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateIncidentRecord');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::UpdateIncidentRecordOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::UpdateIncidentRecord - Arguments for method UpdateIncidentRecord on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIncidentRecord on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method UpdateIncidentRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIncidentRecord.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $UpdateIncidentRecordOutput = $ssm -incidents->UpdateIncidentRecord(
      Arn         => 'MyArn',
      ChatChannel => {
        ChatbotSns => [
          'MySnsArn', ...    # max: 1000
        ],    # min: 1, max: 5; OPTIONAL
        Empty => {

        },    # OPTIONAL
      },    # OPTIONAL
      ClientToken         => 'MyClientToken',    # OPTIONAL
      Impact              => 1,                  # OPTIONAL
      NotificationTargets => [
        {
          SnsTopicArn => 'MyArn',                # max: 1000
        },
        ...
      ],    # OPTIONAL
      Status  => 'OPEN',                 # OPTIONAL
      Summary => 'MyIncidentSummary',    # OPTIONAL
      Title   => 'MyIncidentTitle',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/UpdateIncidentRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the incident record you are updating.



=head2 ChatChannel => L<Paws::SSMIncidents::ChatChannel>

The Chatbot chat channel where responders can collaborate.



=head2 ClientToken => Str

A token that ensures that a client calls the operation only once with
the specified details.



=head2 Impact => Int

Defines the impact of the incident to customers and applications. If
you provide an impact for an incident, it overwrites the impact
provided by the response plan.

B<Supported impact codes>

=over

=item *

C<1> - Critical

=item *

C<2> - High

=item *

C<3> - Medium

=item *

C<4> - Low

=item *

C<5> - No Impact

=back




=head2 NotificationTargets => ArrayRef[L<Paws::SSMIncidents::NotificationTargetItem>]

The Amazon SNS targets that Incident Manager notifies when a client
updates an incident.

Using multiple SNS topics creates redundancy in the event that a Region
is down during the incident.



=head2 Status => Str

The status of the incident. Possible statuses are C<Open> or
C<Resolved>.

Valid values are: C<"OPEN">, C<"RESOLVED">

=head2 Summary => Str

A longer description of what occurred during the incident.



=head2 Title => Str

A brief description of the incident.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIncidentRecord in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

