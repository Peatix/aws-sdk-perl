
package Paws::CloudTrail::StopImport;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::StopImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StopImport - Arguments for method StopImport on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopImport on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method StopImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopImport.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $StopImportResponse = $cloudtrail->StopImport(
      ImportId => 'MyUUID',

    );

    # Results:
    my $CreatedTimestamp = $StopImportResponse->CreatedTimestamp;
    my $Destinations     = $StopImportResponse->Destinations;
    my $EndEventTime     = $StopImportResponse->EndEventTime;
    my $ImportId         = $StopImportResponse->ImportId;
    my $ImportSource     = $StopImportResponse->ImportSource;
    my $ImportStatistics = $StopImportResponse->ImportStatistics;
    my $ImportStatus     = $StopImportResponse->ImportStatus;
    my $StartEventTime   = $StopImportResponse->StartEventTime;
    my $UpdatedTimestamp = $StopImportResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::StopImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/StopImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

The ID of the import.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopImport in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

