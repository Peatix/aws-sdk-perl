
package Paws::OAM::UpdateLink;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has LinkConfiguration => (is => 'ro', isa => 'Paws::OAM::LinkConfiguration');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLink');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::UpdateLinkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::UpdateLink - Arguments for method UpdateLink on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLink on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method UpdateLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLink.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $UpdateLinkOutput = $oam->UpdateLink(
      Identifier    => 'MyResourceIdentifier',
      ResourceTypes => [
        'AWS::CloudWatch::Metric',
        ... # values: AWS::CloudWatch::Metric, AWS::Logs::LogGroup, AWS::XRay::Trace, AWS::ApplicationInsights::Application, AWS::InternetMonitor::Monitor, AWS::ApplicationSignals::Service, AWS::ApplicationSignals::ServiceLevelObjective
      ],
      LinkConfiguration => {
        LogGroupConfiguration => {
          Filter => 'MyLogsFilter',    # min: 1, max: 2000

        },    # OPTIONAL
        MetricConfiguration => {
          Filter => 'MyMetricsFilter',    # min: 1, max: 2000

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn               = $UpdateLinkOutput->Arn;
    my $Id                = $UpdateLinkOutput->Id;
    my $Label             = $UpdateLinkOutput->Label;
    my $LabelTemplate     = $UpdateLinkOutput->LabelTemplate;
    my $LinkConfiguration = $UpdateLinkOutput->LinkConfiguration;
    my $ResourceTypes     = $UpdateLinkOutput->ResourceTypes;
    my $SinkArn           = $UpdateLinkOutput->SinkArn;
    my $Tags              = $UpdateLinkOutput->Tags;

    # Returns a L<Paws::OAM::UpdateLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/UpdateLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The ARN of the link that you want to update.



=head2 LinkConfiguration => L<Paws::OAM::LinkConfiguration>

Use this structure to filter which metric namespaces and which log
groups are to be shared from the source account to the monitoring
account.



=head2 B<REQUIRED> ResourceTypes => ArrayRef[Str|Undef]

An array of strings that define which types of data that the source
account will send to the monitoring account.

Your input here replaces the current set of data types that are shared.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLink in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

