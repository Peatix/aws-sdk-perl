
package Paws::Deadline::GetFarm;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetFarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetFarm - Arguments for method GetFarm on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFarm on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetFarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFarm.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetFarmResponse = $deadline->GetFarm(
      FarmId => 'MyFarmId',

    );

    # Results:
    my $CreatedAt   = $GetFarmResponse->CreatedAt;
    my $CreatedBy   = $GetFarmResponse->CreatedBy;
    my $Description = $GetFarmResponse->Description;
    my $DisplayName = $GetFarmResponse->DisplayName;
    my $FarmId      = $GetFarmResponse->FarmId;
    my $KmsKeyArn   = $GetFarmResponse->KmsKeyArn;
    my $UpdatedAt   = $GetFarmResponse->UpdatedAt;
    my $UpdatedBy   = $GetFarmResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetFarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetFarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFarm in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

