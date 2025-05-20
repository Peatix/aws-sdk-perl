
package Paws::Artifact::GetTermForReport;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'reportId', required => 1);
  has ReportVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'reportVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTermForReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/report/getTermForReport');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Artifact::GetTermForReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::GetTermForReport - Arguments for method GetTermForReport on L<Paws::Artifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTermForReport on the
L<AWS Artifact|Paws::Artifact> service. Use the attributes of this class
as arguments to method GetTermForReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTermForReport.

=head1 SYNOPSIS

    my $artifact = Paws->service('Artifact');
    my $GetTermForReportResponse = $artifact->GetTermForReport(
      ReportId      => 'MyReportId',
      ReportVersion => 1,              # OPTIONAL
    );

    # Results:
    my $DocumentPresignedUrl = $GetTermForReportResponse->DocumentPresignedUrl;
    my $TermToken            = $GetTermForReportResponse->TermToken;

    # Returns a L<Paws::Artifact::GetTermForReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/artifact/GetTermForReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportId => Str

Unique resource ID for the report resource.



=head2 ReportVersion => Int

Version for the report resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTermForReport in L<Paws::Artifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

