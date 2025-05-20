
package Paws::SESv2::BatchGetMetricData;
  use Moose;
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::BatchGetMetricDataQuery]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetMetricData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/metrics/batch');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::BatchGetMetricDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::BatchGetMetricData - Arguments for method BatchGetMetricData on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetMetricData on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method BatchGetMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetMetricData.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $BatchGetMetricDataResponse = $email->BatchGetMetricData(
      Queries => [
        {
          EndDate => '1970-01-01T01:00:00',
          Id      => 'MyQueryIdentifier',        # min: 1, max: 255
          Metric  => 'SEND'
          , # values: SEND, COMPLAINT, PERMANENT_BOUNCE, TRANSIENT_BOUNCE, OPEN, CLICK, DELIVERY, DELIVERY_OPEN, DELIVERY_CLICK, DELIVERY_COMPLAINT
          Namespace  => 'VDM',                   # values: VDM
          StartDate  => '1970-01-01T01:00:00',
          Dimensions => {
            'EMAIL_IDENTITY' => 'MyMetricDimensionValue'
            ,    # key: values: EMAIL_IDENTITY, CONFIGURATION_SET, ISP
          },    # min: 1, max: 3; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Errors  = $BatchGetMetricDataResponse->Errors;
    my $Results = $BatchGetMetricDataResponse->Results;

    # Returns a L<Paws::SESv2::BatchGetMetricDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/BatchGetMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Queries => ArrayRef[L<Paws::SESv2::BatchGetMetricDataQuery>]

A list of queries for metrics to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetMetricData in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

