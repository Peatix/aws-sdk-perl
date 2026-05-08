
package Paws::OpenSearch::StartServiceSoftwareUpdate;
  use Moose;
  has DesiredStartTime => (is => 'ro', isa => 'Int');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleAt => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartServiceSoftwareUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/serviceSoftwareUpdate/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::StartServiceSoftwareUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::StartServiceSoftwareUpdate - Arguments for method StartServiceSoftwareUpdate on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartServiceSoftwareUpdate on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method StartServiceSoftwareUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartServiceSoftwareUpdate.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $StartServiceSoftwareUpdateResponse = $es->StartServiceSoftwareUpdate(
      DomainName       => 'MyDomainName',
      DesiredStartTime => 1,                # OPTIONAL
      ScheduleAt       => 'NOW',            # OPTIONAL
    );

    # Results:
    my $ServiceSoftwareOptions =
      $StartServiceSoftwareUpdateResponse->ServiceSoftwareOptions;

    # Returns a L<Paws::OpenSearch::StartServiceSoftwareUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DesiredStartTime => Int

The Epoch timestamp when you want the service software update to start.
You only need to specify this parameter if you set C<ScheduleAt> to
C<TIMESTAMP>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to update to the latest service
software.



=head2 ScheduleAt => Str

When to start the service software update.

=over

=item *

C<NOW> - Immediately schedules the update to happen in the current hour
if there's capacity available.

=item *

C<TIMESTAMP> - Lets you specify a custom date and time to apply the
update. If you specify this value, you must also provide a value for
C<DesiredStartTime>.

=item *

C<OFF_PEAK_WINDOW> - Marks the update to be picked up during an
upcoming off-peak window. There's no guarantee that the update will
happen during the next immediate window. Depending on capacity, it
might happen in subsequent days.

=back

Default: C<NOW> if you don't specify a value for C<DesiredStartTime>,
and C<TIMESTAMP> if you do.

Valid values are: C<"NOW">, C<"TIMESTAMP">, C<"OFF_PEAK_WINDOW">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartServiceSoftwareUpdate in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

