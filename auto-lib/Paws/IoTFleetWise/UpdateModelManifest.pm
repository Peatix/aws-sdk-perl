
package Paws::IoTFleetWise::UpdateModelManifest;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NodesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'nodesToAdd' );
  has NodesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'nodesToRemove' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModelManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UpdateModelManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateModelManifest - Arguments for method UpdateModelManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModelManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UpdateModelManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModelManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UpdateModelManifestResponse = $iotfleetwise->UpdateModelManifest(
      Name        => 'MyresourceName',
      Description => 'Mydescription',    # OPTIONAL
      NodesToAdd  => [
        'MyNodePath', ...                # min: 1, max: 150
      ],    # OPTIONAL
      NodesToRemove => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      Status => 'ACTIVE',    # OPTIONAL
    );

    # Results:
    my $Arn  = $UpdateModelManifestResponse->Arn;
    my $Name = $UpdateModelManifestResponse->Name;

    # Returns a L<Paws::IoTFleetWise::UpdateModelManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UpdateModelManifest>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description of the vehicle model.



=head2 B<REQUIRED> Name => Str

The name of the vehicle model to update.



=head2 NodesToAdd => ArrayRef[Str|Undef]

A list of C<fullyQualifiedName> of nodes, which are a general
abstraction of signals, to add to the vehicle model.



=head2 NodesToRemove => ArrayRef[Str|Undef]

A list of C<fullyQualifiedName> of nodes, which are a general
abstraction of signals, to remove from the vehicle model.



=head2 Status => Str

The state of the vehicle model. If the status is C<ACTIVE>, the vehicle
model can't be edited. If the status is C<DRAFT>, you can edit the
vehicle model.

Valid values are: C<"ACTIVE">, C<"DRAFT">, C<"INVALID">, C<"VALIDATING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModelManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

