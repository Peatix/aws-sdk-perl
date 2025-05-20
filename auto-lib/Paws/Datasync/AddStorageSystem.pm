
package Paws::Datasync::AddStorageSystem;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Paws::Datasync::Credentials', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ServerConfiguration => (is => 'ro', isa => 'Paws::Datasync::DiscoveryServerConfiguration', required => 1);
  has SystemType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddStorageSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::AddStorageSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::AddStorageSystem - Arguments for method AddStorageSystem on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddStorageSystem on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method AddStorageSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddStorageSystem.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $AddStorageSystemResponse = $datasync->AddStorageSystem(
      AgentArns => [
        'MyAgentArn', ...    # max: 128
      ],
      ClientToken => 'MyPtolemyUUID',
      Credentials => {
        Password => 'MyPtolemyPassword',    # max: 1024
        Username => 'MyPtolemyUsername',    # max: 1024

      },
      ServerConfiguration => {
        ServerHostname => 'MyDiscoveryServerHostname',    # max: 255
        ServerPort     => 1,    # min: 1, max: 65535; OPTIONAL
      },
      SystemType            => 'NetAppONTAP',
      CloudWatchLogGroupArn => 'MyLogGroupArn',    # OPTIONAL
      Name                  => 'MyName',           # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $StorageSystemArn = $AddStorageSystemResponse->StorageSystemArn;

    # Returns a L<Paws::Datasync::AddStorageSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/AddStorageSystem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Name (ARN) of the DataSync agent that
connects to and reads from your on-premises storage system's management
interface. You can only specify one ARN.



=head2 B<REQUIRED> ClientToken => Str

Specifies a client token to make sure requests with this API operation
are idempotent. If you don't specify a client token, DataSync generates
one for you automatically.



=head2 CloudWatchLogGroupArn => Str

Specifies the ARN of the Amazon CloudWatch log group for monitoring and
logging discovery job events.



=head2 B<REQUIRED> Credentials => L<Paws::Datasync::Credentials>

Specifies the user name and password for accessing your on-premises
storage system's management interface.



=head2 Name => Str

Specifies a familiar name for your on-premises storage system.



=head2 B<REQUIRED> ServerConfiguration => L<Paws::Datasync::DiscoveryServerConfiguration>

Specifies the server name and network port required to connect with the
management interface of your on-premises storage system.



=head2 B<REQUIRED> SystemType => Str

Specifies the type of on-premises storage system that you want DataSync
Discovery to collect information about.

DataSync Discovery currently supports NetApp Fabric-Attached Storage
(FAS) and All Flash FAS (AFF) systems running ONTAP 9.7 or later.

Valid values are: C<"NetAppONTAP">

=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your on-premises storage system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddStorageSystem in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

