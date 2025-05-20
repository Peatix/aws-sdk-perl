
package Paws::SimSpaceWeaver::StartSimulation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has MaximumDuration => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SchemaS3Location => (is => 'ro', isa => 'Paws::SimSpaceWeaver::S3Location');
  has SnapshotS3Location => (is => 'ro', isa => 'Paws::SimSpaceWeaver::S3Location');
  has Tags => (is => 'ro', isa => 'Paws::SimSpaceWeaver::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSimulation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startsimulation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::StartSimulationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::StartSimulation - Arguments for method StartSimulation on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSimulation on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method StartSimulation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSimulation.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $StartSimulationOutput = $simspaceweaver->StartSimulation(
      Name             => 'MySimSpaceWeaverResourceName',
      RoleArn          => 'MyRoleArn',
      ClientToken      => 'MyClientToken',                  # OPTIONAL
      Description      => 'MyDescription',                  # OPTIONAL
      MaximumDuration  => 'MyTimeToLiveString',             # OPTIONAL
      SchemaS3Location => {
        BucketName => 'MyBucketName',                       # min: 3, max: 63
        ObjectKey  => 'MyObjectKey',                        # min: 1, max: 1024

      },    # OPTIONAL
      SnapshotS3Location => {
        BucketName => 'MyBucketName',    # min: 3, max: 63
        ObjectKey  => 'MyObjectKey',     # min: 1, max: 1024

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $StartSimulationOutput->Arn;
    my $CreationTime = $StartSimulationOutput->CreationTime;
    my $ExecutionId  = $StartSimulationOutput->ExecutionId;

    # Returns a L<Paws::SimSpaceWeaver::StartSimulationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/StartSimulation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A value that you provide to ensure that repeated calls to this API
operation using the same parameters complete only once. A
C<ClientToken> is also known as an I<idempotency token>. A
C<ClientToken> expires after 24 hours.



=head2 Description => Str

The description of the simulation.



=head2 MaximumDuration => Str

The maximum running time of the simulation, specified as a number of
minutes (m or M), hours (h or H), or days (d or D). The simulation
stops when it reaches this limit. The maximum value is C<14D>, or its
equivalent in the other units. The default value is C<14D>. A value
equivalent to C<0> makes the simulation immediately transition to
C<Stopping> as soon as it reaches C<Started>.



=head2 B<REQUIRED> Name => Str

The name of the simulation.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that the simulation assumes to perform actions. For more
information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>. For more information
about IAM roles, see IAM roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
I<Identity and Access Management User Guide>.



=head2 SchemaS3Location => L<Paws::SimSpaceWeaver::S3Location>

The location of the simulation schema in Amazon Simple Storage Service
(Amazon S3). For more information about Amazon S3, see the I<Amazon
Simple Storage Service User Guide>
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html).

Provide a C<SchemaS3Location> to start your simulation from a schema.

If you provide a C<SchemaS3Location> then you can't provide a
C<SnapshotS3Location>.



=head2 SnapshotS3Location => L<Paws::SimSpaceWeaver::S3Location>

The location of the snapshot .zip file in Amazon Simple Storage Service
(Amazon S3). For more information about Amazon S3, see the I<Amazon
Simple Storage Service User Guide>
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html).

Provide a C<SnapshotS3Location> to start your simulation from a
snapshot.

The Amazon S3 bucket must be in the same Amazon Web Services Region as
the simulation.

If you provide a C<SnapshotS3Location> then you can't provide a
C<SchemaS3Location>.



=head2 Tags => L<Paws::SimSpaceWeaver::TagMap>

A list of tags for the simulation. For more information about tags, see
Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSimulation in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

