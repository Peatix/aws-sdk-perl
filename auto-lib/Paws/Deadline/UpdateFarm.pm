
package Paws::Deadline::UpdateFarm;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateFarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateFarm - Arguments for method UpdateFarm on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFarm on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateFarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFarm.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateFarmResponse = $deadline->UpdateFarm(
      FarmId      => 'MyFarmId',
      Description => 'MyDescription',     # OPTIONAL
      DisplayName => 'MyResourceName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateFarm>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the farm to update.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 DisplayName => Str

The display name of the farm to update.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFarm in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

