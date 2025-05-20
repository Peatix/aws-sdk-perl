
package Paws::RUM::PutRumEvents;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has AppMonitorDetails => (is => 'ro', isa => 'Paws::RUM::AppMonitorDetails', required => 1);
  has BatchId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has RumEvents => (is => 'ro', isa => 'ArrayRef[Paws::RUM::RumEvent]', required => 1);
  has UserDetails => (is => 'ro', isa => 'Paws::RUM::UserDetails', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRumEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitors/{Id}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::PutRumEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::PutRumEvents - Arguments for method PutRumEvents on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRumEvents on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method PutRumEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRumEvents.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $PutRumEventsResponse = $rum->PutRumEvents(
      AppMonitorDetails => {
        Id      => 'MyString',    # OPTIONAL
        Name    => 'MyString',    # OPTIONAL
        Version => 'MyString',    # OPTIONAL
      },
      BatchId   => 'MyPutRumEventsRequestBatchIdString',
      Id        => 'MyPutRumEventsRequestIdString',
      RumEvents => [
        {
          Details   => 'MyJsonValue',
          Id        => 'MyRumEventIdString',    # min: 36, max: 36
          Timestamp => '1970-01-01T01:00:00',
          Type      => 'MyString',              # OPTIONAL
          Metadata  => 'MyJsonValue',
        },
        ...
      ],
      UserDetails => {
        SessionId =>
          'MyUserDetailsSessionIdString',    # min: 36, max: 36; OPTIONAL
        UserId => 'MyUserDetailsUserIdString',    # min: 36, max: 36; OPTIONAL
      },
      Alias => 'MyAlias',                         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/PutRumEvents>

=head1 ATTRIBUTES


=head2 Alias => Str

If the app monitor uses a resource-based policy that requires
C<PutRumEvents> requests to specify a certain alias, specify that alias
here. This alias will be compared to the C<rum:alias> context key in
the resource-based policy. For more information, see Using
resource-based policies with CloudWatch RUM
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html).



=head2 B<REQUIRED> AppMonitorDetails => L<Paws::RUM::AppMonitorDetails>

A structure that contains information about the app monitor that
collected this telemetry information.



=head2 B<REQUIRED> BatchId => Str

A unique identifier for this batch of RUM event data.



=head2 B<REQUIRED> Id => Str

The ID of the app monitor that is sending this data.



=head2 B<REQUIRED> RumEvents => ArrayRef[L<Paws::RUM::RumEvent>]

An array of structures that contain the telemetry event data.



=head2 B<REQUIRED> UserDetails => L<Paws::RUM::UserDetails>

A structure that contains information about the user session that this
batch of events was collected from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRumEvents in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

