
package Paws::Datasync::StartDiscoveryJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has CollectionDurationMinutes => (is => 'ro', isa => 'Int', required => 1);
  has StorageSystemArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDiscoveryJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::StartDiscoveryJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StartDiscoveryJob - Arguments for method StartDiscoveryJob on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDiscoveryJob on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method StartDiscoveryJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDiscoveryJob.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $StartDiscoveryJobResponse = $datasync->StartDiscoveryJob(
      ClientToken               => 'MyPtolemyUUID',
      CollectionDurationMinutes => 1,
      StorageSystemArn          => 'MyStorageSystemArn',
      Tags                      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DiscoveryJobArn = $StartDiscoveryJobResponse->DiscoveryJobArn;

    # Returns a L<Paws::Datasync::StartDiscoveryJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/StartDiscoveryJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Specifies a client token to make sure requests with this API operation
are idempotent. If you don't specify a client token, DataSync generates
one for you automatically.



=head2 B<REQUIRED> CollectionDurationMinutes => Int

Specifies in minutes how long you want the discovery job to run.

For more accurate recommendations, we recommend a duration of at least
14 days. Longer durations allow time to collect a sufficient number of
data points and provide a realistic representation of storage
performance and utilization.



=head2 B<REQUIRED> StorageSystemArn => Str

Specifies the Amazon Resource Name (ARN) of the on-premises storage
system that you want to run the discovery job on.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDiscoveryJob in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

