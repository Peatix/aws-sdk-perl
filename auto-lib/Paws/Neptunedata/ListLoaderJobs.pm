
package Paws::Neptunedata::ListLoaderJobs;
  use Moose;
  has IncludeQueuedLoads => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeQueuedLoads');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLoaderJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/loader');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ListLoaderJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListLoaderJobs - Arguments for method ListLoaderJobs on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLoaderJobs on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ListLoaderJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLoaderJobs.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ListLoaderJobsOutput = $neptune -db->ListLoaderJobs(
      IncludeQueuedLoads => 1,    # OPTIONAL
      Limit              => 1,    # OPTIONAL
    );

    # Results:
    my $Payload = $ListLoaderJobsOutput->Payload;
    my $Status  = $ListLoaderJobsOutput->Status;

    # Returns a L<Paws::Neptunedata::ListLoaderJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ListLoaderJobs>

=head1 ATTRIBUTES


=head2 IncludeQueuedLoads => Bool

An optional parameter that can be used to exclude the load IDs of
queued load requests when requesting a list of load IDs by setting the
parameter to C<FALSE>. The default value is C<TRUE>.



=head2 Limit => Int

The number of load IDs to list. Must be a positive integer greater than
zero and not more than C<100> (which is the default).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLoaderJobs in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

