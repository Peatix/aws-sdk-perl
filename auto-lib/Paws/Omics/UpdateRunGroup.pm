
package Paws::Omics::UpdateRunGroup;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaxCpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCpus');
  has MaxDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxDuration');
  has MaxGpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxGpus');
  has MaxRuns => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRuns');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRunGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runGroup/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateRunGroup - Arguments for method UpdateRunGroup on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRunGroup on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateRunGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRunGroup.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    $omics->UpdateRunGroup(
      Id          => 'MyRunGroupId',
      MaxCpus     => 1,                   # OPTIONAL
      MaxDuration => 1,                   # OPTIONAL
      MaxGpus     => 1,                   # OPTIONAL
      MaxRuns     => 1,                   # OPTIONAL
      Name        => 'MyRunGroupName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateRunGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The group's ID.



=head2 MaxCpus => Int

The maximum number of CPUs to use.



=head2 MaxDuration => Int

A maximum run time for the group in minutes.



=head2 MaxGpus => Int

The maximum GPUs that can be used by a run group.



=head2 MaxRuns => Int

The maximum number of concurrent runs for the group.



=head2 Name => Str

A name for the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRunGroup in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

