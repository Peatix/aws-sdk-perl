
package Paws::NetworkFirewall::GetAnalysisReportResults;
  use Moose;
  has AnalysisReportId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnalysisReportResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::GetAnalysisReportResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::GetAnalysisReportResults - Arguments for method GetAnalysisReportResults on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnalysisReportResults on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method GetAnalysisReportResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnalysisReportResults.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $GetAnalysisReportResultsResponse =
      $network -firewall->GetAnalysisReportResults(
      AnalysisReportId => 'MyAnalysisReportId',
      FirewallArn      => 'MyResourceArn',                # OPTIONAL
      FirewallName     => 'MyResourceName',               # OPTIONAL
      MaxResults       => 1,                              # OPTIONAL
      NextToken        => 'MyAnalysisReportNextToken',    # OPTIONAL
      );

    # Results:
    my $AnalysisReportResults =
      $GetAnalysisReportResultsResponse->AnalysisReportResults;
    my $AnalysisType = $GetAnalysisReportResultsResponse->AnalysisType;
    my $EndTime      = $GetAnalysisReportResultsResponse->EndTime;
    my $NextToken    = $GetAnalysisReportResultsResponse->NextToken;
    my $ReportTime   = $GetAnalysisReportResultsResponse->ReportTime;
    my $StartTime    = $GetAnalysisReportResultsResponse->StartTime;
    my $Status       = $GetAnalysisReportResultsResponse->Status;

  # Returns a L<Paws::NetworkFirewall::GetAnalysisReportResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/GetAnalysisReportResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisReportId => Str

The unique ID of the query that ran when you requested an analysis
report.



=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.

You must specify the ARN or the name, and you can specify both.



=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.

You must specify the ARN or the name, and you can specify both.



=head2 MaxResults => Int

The maximum number of objects that you want Network Firewall to return
for this request. If more objects are available, in the response,
Network Firewall provides a C<NextToken> value that you can use in a
subsequent call to get the next batch of objects.



=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnalysisReportResults in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

