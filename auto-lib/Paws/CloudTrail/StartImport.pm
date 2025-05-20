
package Paws::CloudTrail::StartImport;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EndEventTime => (is => 'ro', isa => 'Str');
  has ImportId => (is => 'ro', isa => 'Str');
  has ImportSource => (is => 'ro', isa => 'Paws::CloudTrail::ImportSource');
  has StartEventTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::StartImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartImport - Arguments for method StartImport on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImport on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method StartImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImport.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $StartImportResponse = $cloudtrail->StartImport(
      Destinations => [
        'MyEventDataStoreArn', ...    # min: 3, max: 256
      ],    # OPTIONAL
      EndEventTime => '1970-01-01T01:00:00',    # OPTIONAL
      ImportId     => 'MyUUID',                 # OPTIONAL
      ImportSource => {
        S3 => {
          S3BucketAccessRoleArn => 'MyString',
          S3BucketRegion        => 'MyString',
          S3LocationUri         => 'MyString',

        },

      },                                        # OPTIONAL
      StartEventTime => '1970-01-01T01:00:00',  # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $StartImportResponse->CreatedTimestamp;
    my $Destinations     = $StartImportResponse->Destinations;
    my $EndEventTime     = $StartImportResponse->EndEventTime;
    my $ImportId         = $StartImportResponse->ImportId;
    my $ImportSource     = $StartImportResponse->ImportSource;
    my $ImportStatus     = $StartImportResponse->ImportStatus;
    my $StartEventTime   = $StartImportResponse->StartEventTime;
    my $UpdatedTimestamp = $StartImportResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::StartImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/StartImport>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[Str|Undef]

The ARN of the destination event data store. Use this parameter for a
new import.



=head2 EndEventTime => Str

Use with C<StartEventTime> to bound a C<StartImport> request, and limit
imported trail events to only those events logged within a specified
time period. When you specify a time range, CloudTrail checks the
prefix and log file names to verify the names contain a date between
the specified C<StartEventTime> and C<EndEventTime> before attempting
to import events.



=head2 ImportId => Str

The ID of the import. Use this parameter when you are retrying an
import.



=head2 ImportSource => L<Paws::CloudTrail::ImportSource>

The source S3 bucket for the import. Use this parameter for a new
import.



=head2 StartEventTime => Str

Use with C<EndEventTime> to bound a C<StartImport> request, and limit
imported trail events to only those events logged within a specified
time period. When you specify a time range, CloudTrail checks the
prefix and log file names to verify the names contain a date between
the specified C<StartEventTime> and C<EndEventTime> before attempting
to import events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImport in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

