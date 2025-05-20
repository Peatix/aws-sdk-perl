
package Paws::BCMDataExports::GetExport;
  use Moose;
  has ExportArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::GetExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::GetExport - Arguments for method GetExport on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExport on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method GetExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExport.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $GetExportResponse = $bcm -data-exports->GetExport(
      ExportArn => 'MyArn',

    );

    # Results:
    my $Export       = $GetExportResponse->Export;
    my $ExportStatus = $GetExportResponse->ExportStatus;

    # Returns a L<Paws::BCMDataExports::GetExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/GetExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportArn => Str

The Amazon Resource Name (ARN) for this export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExport in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

