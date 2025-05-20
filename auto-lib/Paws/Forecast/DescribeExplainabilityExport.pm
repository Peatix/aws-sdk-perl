
package Paws::Forecast::DescribeExplainabilityExport;
  use Moose;
  has ExplainabilityExportArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExplainabilityExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeExplainabilityExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeExplainabilityExport - Arguments for method DescribeExplainabilityExport on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExplainabilityExport on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeExplainabilityExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExplainabilityExport.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeExplainabilityExportResponse =
      $forecast->DescribeExplainabilityExport(
      ExplainabilityExportArn => 'MyArn',

      );

    # Results:
    my $CreationTime = $DescribeExplainabilityExportResponse->CreationTime;
    my $Destination  = $DescribeExplainabilityExportResponse->Destination;
    my $ExplainabilityArn =
      $DescribeExplainabilityExportResponse->ExplainabilityArn;
    my $ExplainabilityExportArn =
      $DescribeExplainabilityExportResponse->ExplainabilityExportArn;
    my $ExplainabilityExportName =
      $DescribeExplainabilityExportResponse->ExplainabilityExportName;
    my $Format = $DescribeExplainabilityExportResponse->Format;
    my $LastModificationTime =
      $DescribeExplainabilityExportResponse->LastModificationTime;
    my $Message = $DescribeExplainabilityExportResponse->Message;
    my $Status  = $DescribeExplainabilityExportResponse->Status;

    # Returns a L<Paws::Forecast::DescribeExplainabilityExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeExplainabilityExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExplainabilityExportArn => Str

The Amazon Resource Name (ARN) of the Explainability export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExplainabilityExport in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

