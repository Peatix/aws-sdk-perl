
package Paws::Deadline::UpdateLimit;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'limitId', required => 1);
  has MaxCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/limits/{limitId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateLimitResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateLimit - Arguments for method UpdateLimit on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLimit on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLimit.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateLimitResponse = $deadline->UpdateLimit(
      FarmId      => 'MyFarmId',
      LimitId     => 'MyLimitId',
      Description => 'MyDescription',     # OPTIONAL
      DisplayName => 'MyResourceName',    # OPTIONAL
      MaxCount    => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateLimit>

=head1 ATTRIBUTES


=head2 Description => Str

The new description of the limit.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 DisplayName => Str

The new display name of the limit.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the limit.



=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit to update.



=head2 MaxCount => Int

The maximum number of resources constrained by this limit. When all of
the resources are in use, steps that require the limit won't be
scheduled until the resource is available.

If more than the new maximum number is currently in use, running jobs
finish but no new jobs are started until the number of resources in use
is below the new maximum number.

The C<maxCount> must not be 0. If the value is -1, there is no
restriction on the number of resources that can be acquired for this
limit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLimit in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

