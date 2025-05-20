
package Paws::Glue::CreateSession;
  use Moose;
  has Command => (is => 'ro', isa => 'Paws::Glue::SessionCommand', required => 1);
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::OrchestrationArgumentsMap');
  has Description => (is => 'ro', isa => 'Str');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IdleTimeout => (is => 'ro', isa => 'Int');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has RequestOrigin => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has Timeout => (is => 'ro', isa => 'Int');
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSession - Arguments for method CreateSession on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSession on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSession.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateSessionResponse = $glue->CreateSession(
      Command => {
        Name          => 'MyNameString',            # min: 1, max: 255; OPTIONAL
        PythonVersion => 'MyPythonVersionString',   # OPTIONAL
      },
      Id          => 'MyNameString',
      Role        => 'MyOrchestrationRoleArn',
      Connections => {
        Connections => [
          'MyConnectionString', ...                 # max: 255
        ],    # max: 1000; OPTIONAL
      },    # OPTIONAL
      DefaultArguments => {
        'MyOrchestrationNameString' => 'MyOrchestrationArgumentsValue'
        ,    # key: min: 1, max: 128, value: max: 4096
      },    # OPTIONAL
      Description           => 'MyDescriptionString',          # OPTIONAL
      GlueVersion           => 'MyGlueVersionString',          # OPTIONAL
      IdleTimeout           => 1,                              # OPTIONAL
      MaxCapacity           => 1,                              # OPTIONAL
      NumberOfWorkers       => 1,                              # OPTIONAL
      RequestOrigin         => 'MyOrchestrationNameString',    # OPTIONAL
      SecurityConfiguration => 'MyNameString',                 # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout    => 1,             # OPTIONAL
      WorkerType => 'Standard',    # OPTIONAL
    );

    # Results:
    my $Session = $CreateSessionResponse->Session;

    # Returns a L<Paws::Glue::CreateSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Command => L<Paws::Glue::SessionCommand>

The C<SessionCommand> that runs the job.



=head2 Connections => L<Paws::Glue::ConnectionsList>

The number of connections to use for the session.



=head2 DefaultArguments => L<Paws::Glue::OrchestrationArgumentsMap>

A map array of key-value pairs. Max is 75 pairs.



=head2 Description => Str

The description of the session.



=head2 GlueVersion => Str

The Glue version determines the versions of Apache Spark and Python
that Glue supports. The GlueVersion must be greater than 2.0.



=head2 B<REQUIRED> Id => Str

The ID of the session request.



=head2 IdleTimeout => Int

The number of minutes when idle before session times out. Default for
Spark ETL jobs is value of Timeout. Consult the documentation for other
job types.



=head2 MaxCapacity => Num

The number of Glue data processing units (DPUs) that can be allocated
when the job runs. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB memory.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<WorkerType> to use for the
session.



=head2 RequestOrigin => Str

The origin of the request.



=head2 B<REQUIRED> Role => Str

The IAM Role ARN



=head2 SecurityConfiguration => Str

The name of the SecurityConfiguration structure to be used with the
session



=head2 Tags => L<Paws::Glue::TagsMap>

The map of key value pairs (tags) belonging to the session.



=head2 Timeout => Int

The number of minutes before session times out. Default for Spark ETL
jobs is 48 hours (2880 minutes). Consult the documentation for other
job types.



=head2 WorkerType => Str

The type of predefined worker that is allocated when a job runs.
Accepts a value of G.1X, G.2X, G.4X, or G.8X for Spark jobs. Accepts
the value Z.2X for Ray notebooks.

=over

=item *

For the C<G.1X> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB
of memory) with 94GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.2X> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB
of memory) with 138GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.4X> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB
of memory) with 256GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs in
the following Amazon Web Services Regions: US East (Ohio), US East (N.
Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific
(Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt),
Europe (Ireland), and Europe (Stockholm).

=item *

For the C<G.8X> worker type, each worker maps to 8 DPU (32 vCPUs, 128
GB of memory) with 512GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs, in
the same Amazon Web Services Regions as supported for the C<G.4X>
worker type.

=item *

For the C<Z.2X> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB
of memory) with 128 GB disk, and provides up to 8 Ray workers based on
the autoscaler.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">, C<"G.025X">, C<"G.4X">, C<"G.8X">, C<"Z.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSession in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

