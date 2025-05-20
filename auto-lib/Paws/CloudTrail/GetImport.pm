
package Paws::CloudTrail::GetImport;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::GetImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetImport - Arguments for method GetImport on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImport on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method GetImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImport.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $GetImportResponse = $cloudtrail->GetImport(
      ImportId => 'MyUUID',

    );

    # Results:
    my $CreatedTimestamp = $GetImportResponse->CreatedTimestamp;
    my $Destinations     = $GetImportResponse->Destinations;
    my $EndEventTime     = $GetImportResponse->EndEventTime;
    my $ImportId         = $GetImportResponse->ImportId;
    my $ImportSource     = $GetImportResponse->ImportSource;
    my $ImportStatistics = $GetImportResponse->ImportStatistics;
    my $ImportStatus     = $GetImportResponse->ImportStatus;
    my $StartEventTime   = $GetImportResponse->StartEventTime;
    my $UpdatedTimestamp = $GetImportResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::GetImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/GetImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

The ID for the import.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImport in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

