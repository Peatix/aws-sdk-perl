
package Paws::Resiliencehub::StartMetricsExport;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bucketName');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMetricsExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-metrics-export');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::StartMetricsExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartMetricsExport - Arguments for method StartMetricsExport on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMetricsExport on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method StartMetricsExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMetricsExport.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $StartMetricsExportResponse = $resiliencehub->StartMetricsExport(
      BucketName  => 'MyEntityName',     # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $MetricsExportId = $StartMetricsExportResponse->MetricsExportId;
    my $Status          = $StartMetricsExportResponse->Status;

    # Returns a L<Paws::Resiliencehub::StartMetricsExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/StartMetricsExport>

=head1 ATTRIBUTES


=head2 BucketName => Str

(Optional) Specifies the name of the Amazon Simple Storage Service
bucket where the exported metrics will be stored.



=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMetricsExport in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

