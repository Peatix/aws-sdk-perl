
package Paws::SESv2::CreateExportJob;
  use Moose;
  has ExportDataSource => (is => 'ro', isa => 'Paws::SESv2::ExportDataSource', required => 1);
  has ExportDestination => (is => 'ro', isa => 'Paws::SESv2::ExportDestination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/export-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateExportJob - Arguments for method CreateExportJob on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExportJob on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExportJob.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateExportJobResponse = $email->CreateExportJob(
      ExportDataSource => {
        MessageInsightsDataSource => {
          EndDate   => '1970-01-01T01:00:00',
          StartDate => '1970-01-01T01:00:00',
          Exclude   => {
            Destination => [
              'MyInsightsEmailAddress', ...    # min: 1, max: 320
            ],    # max: 5; OPTIONAL
            FromEmailAddress => [
              'MyInsightsEmailAddress', ...    # min: 1, max: 320
            ],    # max: 5; OPTIONAL
            Isp               => [ 'MyIsp', ... ],    # max: 5; OPTIONAL
            LastDeliveryEvent => [
              'SEND',
              ... # values: SEND, DELIVERY, TRANSIENT_BOUNCE, PERMANENT_BOUNCE, UNDETERMINED_BOUNCE, COMPLAINT
            ],    # max: 5; OPTIONAL
            LastEngagementEvent => [
              'OPEN', ...    # values: OPEN, CLICK
            ],    # max: 2; OPTIONAL
            Subject => [
              'MyEmailSubject', ...    # min: 1, max: 998
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          Include => {
            Destination => [
              'MyInsightsEmailAddress', ...    # min: 1, max: 320
            ],    # max: 5; OPTIONAL
            FromEmailAddress => [
              'MyInsightsEmailAddress', ...    # min: 1, max: 320
            ],    # max: 5; OPTIONAL
            Isp               => [ 'MyIsp', ... ],    # max: 5; OPTIONAL
            LastDeliveryEvent => [
              'SEND',
              ... # values: SEND, DELIVERY, TRANSIENT_BOUNCE, PERMANENT_BOUNCE, UNDETERMINED_BOUNCE, COMPLAINT
            ],    # max: 5; OPTIONAL
            LastEngagementEvent => [
              'OPEN', ...    # values: OPEN, CLICK
            ],    # max: 2; OPTIONAL
            Subject => [
              'MyEmailSubject', ...    # min: 1, max: 998
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          MaxResults => 1,    # min: 1, max: 10000; OPTIONAL
        },    # OPTIONAL
        MetricsDataSource => {
          Dimensions => {
            'EMAIL_IDENTITY' => [ 'MyMetricDimensionValue', ... ]
            , # key: values: EMAIL_IDENTITY, CONFIGURATION_SET, ISP, value: min: 1, max: 10
          },    # min: 1, max: 3
          EndDate => '1970-01-01T01:00:00',
          Metrics => [
            {
              Aggregation => 'RATE',    # values: RATE, VOLUME; OPTIONAL
              Name        => 'SEND'
              , # values: SEND, COMPLAINT, PERMANENT_BOUNCE, TRANSIENT_BOUNCE, OPEN, CLICK, DELIVERY, DELIVERY_OPEN, DELIVERY_CLICK, DELIVERY_COMPLAINT; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10
          Namespace => 'VDM',                   # values: VDM
          StartDate => '1970-01-01T01:00:00',

        },    # OPTIONAL
      },
      ExportDestination => {
        DataFormat => 'CSV',        # values: CSV, JSON
        S3Url      => 'MyS3Url',    # OPTIONAL
      },

    );

    # Results:
    my $JobId = $CreateExportJobResponse->JobId;

    # Returns a L<Paws::SESv2::CreateExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportDataSource => L<Paws::SESv2::ExportDataSource>

The data source for the export job.



=head2 B<REQUIRED> ExportDestination => L<Paws::SESv2::ExportDestination>

The destination for the export job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExportJob in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

