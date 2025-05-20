
package Paws::RedShift::EnableLogging;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has LogDestinationType => (is => 'ro', isa => 'Str');
  has LogExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableLogging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::LoggingStatus');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableLoggingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EnableLogging - Arguments for method EnableLogging on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableLogging on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method EnableLogging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableLogging.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $LoggingStatus = $redshift->EnableLogging(
      ClusterIdentifier  => 'MyString',
      BucketName         => 'MyString',    # OPTIONAL
      LogDestinationType => 's3',          # OPTIONAL
      LogExports         => [
        'MyString', ...                    # max: 2147483647
      ],    # OPTIONAL
      S3KeyPrefix => 'MyS3KeyPrefixValue',    # OPTIONAL
    );

    # Results:
    my $BucketName                 = $LoggingStatus->BucketName;
    my $LastFailureMessage         = $LoggingStatus->LastFailureMessage;
    my $LastFailureTime            = $LoggingStatus->LastFailureTime;
    my $LastSuccessfulDeliveryTime = $LoggingStatus->LastSuccessfulDeliveryTime;
    my $LogDestinationType         = $LoggingStatus->LogDestinationType;
    my $LogExports                 = $LoggingStatus->LogExports;
    my $LoggingEnabled             = $LoggingStatus->LoggingEnabled;
    my $S3KeyPrefix                = $LoggingStatus->S3KeyPrefix;

    # Returns a L<Paws::RedShift::LoggingStatus> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/EnableLogging>

=head1 ATTRIBUTES


=head2 BucketName => Str

The name of an existing S3 bucket where the log files are to be stored.

Constraints:

=over

=item *

Must be in the same region as the cluster

=item *

The cluster must have read bucket and put object permissions

=back




=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster on which logging is to be started.

Example: C<examplecluster>



=head2 LogDestinationType => Str

The log destination type. An enum with possible values of C<s3> and
C<cloudwatch>.

Valid values are: C<"s3">, C<"cloudwatch">

=head2 LogExports => ArrayRef[Str|Undef]

The collection of exported log types. Possible values are
C<connectionlog>, C<useractivitylog>, and C<userlog>.



=head2 S3KeyPrefix => Str

The prefix applied to the log file names.

Valid characters are any letter from any language, any whitespace
character, any numeric character, and the following characters:
underscore (C<_>), period (C<.>), colon (C<:>), slash (C</>), equal
(C<=>), plus (C<+>), backslash (C<\>), hyphen (C<->), at symbol (C<@>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableLogging in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

