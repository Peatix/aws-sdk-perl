
package Paws::Omics::CreateRunGroup;
  use Moose;
  has MaxCpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCpus');
  has MaxDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxDuration');
  has MaxGpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxGpus');
  has MaxRuns => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRuns');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRunGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateRunGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateRunGroup - Arguments for method CreateRunGroup on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRunGroup on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateRunGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRunGroup.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateRunGroupResponse = $omics->CreateRunGroup(
      RequestId   => 'MyRunGroupRequestId',
      MaxCpus     => 1,                       # OPTIONAL
      MaxDuration => 1,                       # OPTIONAL
      MaxGpus     => 1,                       # OPTIONAL
      MaxRuns     => 1,                       # OPTIONAL
      Name        => 'MyRunGroupName',        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateRunGroupResponse->Arn;
    my $Id   = $CreateRunGroupResponse->Id;
    my $Tags = $CreateRunGroupResponse->Tags;

    # Returns a L<Paws::Omics::CreateRunGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateRunGroup>

=head1 ATTRIBUTES


=head2 MaxCpus => Int

The maximum number of CPUs that can run concurrently across all active
runs in the run group.



=head2 MaxDuration => Int

The maximum time for each run (in minutes). If a run exceeds the
maximum run time, the run fails automatically.



=head2 MaxGpus => Int

The maximum number of GPUs that can run concurrently across all active
runs in the run group.



=head2 MaxRuns => Int

The maximum number of runs that can be running at the same time.



=head2 Name => Str

A name for the group.



=head2 B<REQUIRED> RequestId => Str

To ensure that requests don't run multiple times, specify a unique ID
for each request.



=head2 Tags => L<Paws::Omics::TagMap>

Tags for the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRunGroup in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

