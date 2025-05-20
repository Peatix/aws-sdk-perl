
package Paws::LexModelsV2::CreateTestSetDiscrepancyReport;
  use Moose;
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTestSetDiscrepancyReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsets/{testSetId}/testsetdiscrepancy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateTestSetDiscrepancyReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateTestSetDiscrepancyReport - Arguments for method CreateTestSetDiscrepancyReport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTestSetDiscrepancyReport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateTestSetDiscrepancyReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTestSetDiscrepancyReport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateTestSetDiscrepancyReportResponse =
      $models - v2 -lex->CreateTestSetDiscrepancyReport(
      Target => {
        BotAliasTarget => {
          BotAliasId => 'MyBotAliasId',    # min: 10, max: 10
          BotId      => 'MyId',            # min: 10, max: 10
          LocaleId   => 'MyLocaleId',

        },    # OPTIONAL
      },
      TestSetId => 'MyId',

      );

    # Results:
    my $CreationDateTime =
      $CreateTestSetDiscrepancyReportResponse->CreationDateTime;
    my $Target = $CreateTestSetDiscrepancyReportResponse->Target;
    my $TestSetDiscrepancyReportId =
      $CreateTestSetDiscrepancyReportResponse->TestSetDiscrepancyReportId;
    my $TestSetId = $CreateTestSetDiscrepancyReportResponse->TestSetId;

# Returns a L<Paws::LexModelsV2::CreateTestSetDiscrepancyReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateTestSetDiscrepancyReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Target => L<Paws::LexModelsV2::TestSetDiscrepancyReportResourceTarget>

The target bot for the test set discrepancy report.



=head2 B<REQUIRED> TestSetId => Str

The test set Id for the test set discrepancy report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTestSetDiscrepancyReport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

