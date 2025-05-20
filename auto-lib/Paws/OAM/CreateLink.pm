
package Paws::OAM::CreateLink;
  use Moose;
  has LabelTemplate => (is => 'ro', isa => 'Str', required => 1);
  has LinkConfiguration => (is => 'ro', isa => 'Paws::OAM::LinkConfiguration');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SinkIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::OAM::TagMapInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLink');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::CreateLinkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::CreateLink - Arguments for method CreateLink on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLink on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method CreateLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLink.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $CreateLinkOutput = $oam->CreateLink(
      LabelTemplate => 'MyLabelTemplate',
      ResourceTypes => [
        'AWS::CloudWatch::Metric',
        ... # values: AWS::CloudWatch::Metric, AWS::Logs::LogGroup, AWS::XRay::Trace, AWS::ApplicationInsights::Application, AWS::InternetMonitor::Monitor, AWS::ApplicationSignals::Service, AWS::ApplicationSignals::ServiceLevelObjective
      ],
      SinkIdentifier    => 'MyResourceIdentifier',
      LinkConfiguration => {
        LogGroupConfiguration => {
          Filter => 'MyLogsFilter',    # min: 1, max: 2000

        },    # OPTIONAL
        MetricConfiguration => {
          Filter => 'MyMetricsFilter',    # min: 1, max: 2000

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateLinkOutput->Arn;
    my $Id                = $CreateLinkOutput->Id;
    my $Label             = $CreateLinkOutput->Label;
    my $LabelTemplate     = $CreateLinkOutput->LabelTemplate;
    my $LinkConfiguration = $CreateLinkOutput->LinkConfiguration;
    my $ResourceTypes     = $CreateLinkOutput->ResourceTypes;
    my $SinkArn           = $CreateLinkOutput->SinkArn;
    my $Tags              = $CreateLinkOutput->Tags;

    # Returns a L<Paws::OAM::CreateLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/CreateLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelTemplate => Str

Specify a friendly human-readable name to use to identify this source
account when you are viewing data from it in the monitoring account.

You can use a custom label or use the following variables:

=over

=item *

C<$AccountName> is the name of the account

=item *

C<$AccountEmail> is the globally unique email address of the account

=item *

C<$AccountEmailNoDomain> is the email address of the account without
the domain name

=back




=head2 LinkConfiguration => L<Paws::OAM::LinkConfiguration>

Use this structure to optionally create filters that specify that only
some metric namespaces or log groups are to be shared from the source
account to the monitoring account.



=head2 B<REQUIRED> ResourceTypes => ArrayRef[Str|Undef]

An array of strings that define which types of data that the source
account shares with the monitoring account.



=head2 B<REQUIRED> SinkIdentifier => Str

The ARN of the sink to use to create this link. You can use ListSinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html)
to find the ARNs of sinks.

For more information about sinks, see CreateSink
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html).



=head2 Tags => L<Paws::OAM::TagMapInput>

Assigns one or more tags (key-value pairs) to the link.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

For more information about using tags to control access, see
Controlling access to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLink in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

