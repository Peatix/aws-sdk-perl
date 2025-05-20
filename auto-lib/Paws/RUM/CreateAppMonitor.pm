
package Paws::RUM::CreateAppMonitor;
  use Moose;
  has AppMonitorConfiguration => (is => 'ro', isa => 'Paws::RUM::AppMonitorConfiguration');
  has CustomEvents => (is => 'ro', isa => 'Paws::RUM::CustomEvents');
  has CwLogEnabled => (is => 'ro', isa => 'Bool');
  has DeobfuscationConfiguration => (is => 'ro', isa => 'Paws::RUM::DeobfuscationConfiguration');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::RUM::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::CreateAppMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::CreateAppMonitor - Arguments for method CreateAppMonitor on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppMonitor on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method CreateAppMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppMonitor.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $CreateAppMonitorResponse = $rum->CreateAppMonitor(
      Name                    => 'MyAppMonitorName',
      AppMonitorConfiguration => {
        AllowCookies  => 1,    # OPTIONAL
        EnableXRay    => 1,    # OPTIONAL
        ExcludedPages => [
          'MyUrl', ...         # min: 1, max: 1260
        ],    # max: 50; OPTIONAL
        FavoritePages  => [ 'MyString', ... ],    # max: 50; OPTIONAL
        GuestRoleArn   => 'MyArn',                # OPTIONAL
        IdentityPoolId => 'MyIdentityPoolId',     # min: 1, max: 55; OPTIONAL
        IncludedPages  => [
          'MyUrl', ...                            # min: 1, max: 1260
        ],    # max: 50; OPTIONAL
        SessionSampleRate => 1,    # max: 1; OPTIONAL
        Telemetries       => [
          'errors', ...            # values: errors, performance, http
        ],    # OPTIONAL
      },    # OPTIONAL
      CustomEvents => {
        Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      CwLogEnabled               => 1,    # OPTIONAL
      DeobfuscationConfiguration => {
        JavaScriptSourceMaps => {
          Status => 'ENABLED',                 # values: ENABLED, DISABLED
          S3Uri  => 'MyDeobfuscationS3Uri',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Domain     => 'MyAppMonitorDomain',    # OPTIONAL
      DomainList => [
        'MyAppMonitorDomain', ...            # min: 1, max: 253
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Id = $CreateAppMonitorResponse->Id;

    # Returns a L<Paws::RUM::CreateAppMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/CreateAppMonitor>

=head1 ATTRIBUTES


=head2 AppMonitorConfiguration => L<Paws::RUM::AppMonitorConfiguration>

A structure that contains much of the configuration data for the app
monitor. If you are using Amazon Cognito for authorization, you must
include this structure in your request, and it must include the ID of
the Amazon Cognito identity pool to use for authorization. If you don't
include C<AppMonitorConfiguration>, you must set up your own
authorization method. For more information, see Authorize your
application to send data to Amazon Web Services
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html).

If you omit this argument, the sample rate used for RUM is set to 10%
of the user sessions.



=head2 CustomEvents => L<Paws::RUM::CustomEvents>

Specifies whether this app monitor allows the web client to define and
send custom events. If you omit this parameter, custom events are
C<DISABLED>.

For more information about custom events, see Send custom events
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html).



=head2 CwLogEnabled => Bool

Data collected by RUM is kept by RUM for 30 days and then deleted. This
parameter specifies whether RUM sends a copy of this telemetry data to
Amazon CloudWatch Logs in your account. This enables you to keep the
telemetry data for more than 30 days, but it does incur Amazon
CloudWatch Logs charges.

If you omit this parameter, the default is C<false>.



=head2 DeobfuscationConfiguration => L<Paws::RUM::DeobfuscationConfiguration>

A structure that contains the configuration for how an app monitor can
deobfuscate stack traces.



=head2 Domain => Str

The top-level internet domain name for which your application has
administrative authority.



=head2 DomainList => ArrayRef[Str|Undef]

List the domain names for which your application has administrative
authority. The C<CreateAppMonitor> requires either the domain or the
domain list.



=head2 B<REQUIRED> Name => Str

A name for the app monitor.



=head2 Tags => L<Paws::RUM::TagMap>

Assigns one or more tags (key-value pairs) to the app monitor.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can associate as many as 50 tags with an app monitor.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppMonitor in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

