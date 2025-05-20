
package Paws::DMS::ExportMetadataModelAssessment;
  use Moose;
  has AssessmentReportTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FileName => (is => 'ro', isa => 'Str');
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SelectionRules => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportMetadataModelAssessment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ExportMetadataModelAssessmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ExportMetadataModelAssessment - Arguments for method ExportMetadataModelAssessment on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportMetadataModelAssessment on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ExportMetadataModelAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportMetadataModelAssessment.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ExportMetadataModelAssessmentResponse =
      $dms->ExportMetadataModelAssessment(
      MigrationProjectIdentifier => 'MyMigrationProjectIdentifier',
      SelectionRules             => 'MyString',
      AssessmentReportTypes      => [
        'pdf', ...    # values: pdf, csv
      ],    # OPTIONAL
      FileName => 'MyString',    # OPTIONAL
      );

    # Results:
    my $CsvReport = $ExportMetadataModelAssessmentResponse->CsvReport;
    my $PdfReport = $ExportMetadataModelAssessmentResponse->PdfReport;

    # Returns a L<Paws::DMS::ExportMetadataModelAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ExportMetadataModelAssessment>

=head1 ATTRIBUTES


=head2 AssessmentReportTypes => ArrayRef[Str|Undef]

The file format of the assessment file.



=head2 FileName => Str

The name of the assessment file to create in your Amazon S3 bucket.



=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The migration project name or Amazon Resource Name (ARN).



=head2 B<REQUIRED> SelectionRules => Str

A value that specifies the database objects to assess.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportMetadataModelAssessment in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

