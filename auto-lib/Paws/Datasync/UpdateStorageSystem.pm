
package Paws::Datasync::UpdateStorageSystem;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Paws::Datasync::Credentials');
  has Name => (is => 'ro', isa => 'Str');
  has ServerConfiguration => (is => 'ro', isa => 'Paws::Datasync::DiscoveryServerConfiguration');
  has StorageSystemArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStorageSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateStorageSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateStorageSystem - Arguments for method UpdateStorageSystem on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStorageSystem on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateStorageSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStorageSystem.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateStorageSystemResponse = $datasync->UpdateStorageSystem(
      StorageSystemArn => 'MyStorageSystemArn',
      AgentArns        => [
        'MyAgentArn', ...    # max: 128
      ],    # OPTIONAL
      CloudWatchLogGroupArn => 'MyLogGroupArn',    # OPTIONAL
      Credentials           => {
        Password => 'MyPtolemyPassword',           # max: 1024
        Username => 'MyPtolemyUsername',           # max: 1024

      },    # OPTIONAL
      Name                => 'MyName',    # OPTIONAL
      ServerConfiguration => {
        ServerHostname => 'MyDiscoveryServerHostname',    # max: 255
        ServerPort     => 1,    # min: 1, max: 65535; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateStorageSystem>

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Name (ARN) of the DataSync agent that
connects to and reads your on-premises storage system. You can only
specify one ARN.



=head2 CloudWatchLogGroupArn => Str

Specifies the ARN of the Amazon CloudWatch log group for monitoring and
logging discovery job events.



=head2 Credentials => L<Paws::Datasync::Credentials>

Specifies the user name and password for accessing your on-premises
storage system's management interface.



=head2 Name => Str

Specifies a familiar name for your on-premises storage system.



=head2 ServerConfiguration => L<Paws::Datasync::DiscoveryServerConfiguration>

Specifies the server name and network port required to connect with
your on-premises storage system's management interface.



=head2 B<REQUIRED> StorageSystemArn => Str

Specifies the ARN of the on-premises storage system that you want
reconfigure.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStorageSystem in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

