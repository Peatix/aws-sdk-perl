
package Paws::ApplicationMigration::CreateConnector;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SsmCommandConfig => (is => 'ro', isa => 'Paws::ApplicationMigration::ConnectorSsmCommandConfig', traits => ['NameInRequest'], request_name => 'ssmCommandConfig');
  has SsmInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ssmInstanceID', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateConnector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::Connector');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::CreateConnector - Arguments for method CreateConnector on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnector on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method CreateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnector.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $Connector = $mgn->CreateConnector(
      Name             => 'MyConnectorName',
      SsmInstanceID    => 'MySsmInstanceID',
      SsmCommandConfig => {
        CloudWatchOutputEnabled => 1,
        S3OutputEnabled         => 1,
        CloudWatchLogGroupName  =>
          'MyCloudWatchLogGroupName',    # min: 1, max: 512; OPTIONAL
        OutputS3BucketName => 'MyS3BucketName',    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $Connector->Arn;
    my $ConnectorID      = $Connector->ConnectorID;
    my $Name             = $Connector->Name;
    my $SsmCommandConfig = $Connector->SsmCommandConfig;
    my $SsmInstanceID    = $Connector->SsmInstanceID;
    my $Tags             = $Connector->Tags;

    # Returns a L<Paws::ApplicationMigration::Connector> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/CreateConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Create Connector request name.



=head2 SsmCommandConfig => L<Paws::ApplicationMigration::ConnectorSsmCommandConfig>

Create Connector request SSM command config.



=head2 B<REQUIRED> SsmInstanceID => Str

Create Connector request SSM instance ID.



=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Create Connector request tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnector in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

