
package Paws::Deadline::GetLimit;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'limitId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/limits/{limitId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetLimitResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetLimit - Arguments for method GetLimit on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLimit on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLimit.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetLimitResponse = $deadline->GetLimit(
      FarmId  => 'MyFarmId',
      LimitId => 'MyLimitId',

    );

    # Results:
    my $AmountRequirementName = $GetLimitResponse->AmountRequirementName;
    my $CreatedAt             = $GetLimitResponse->CreatedAt;
    my $CreatedBy             = $GetLimitResponse->CreatedBy;
    my $CurrentCount          = $GetLimitResponse->CurrentCount;
    my $Description           = $GetLimitResponse->Description;
    my $DisplayName           = $GetLimitResponse->DisplayName;
    my $FarmId                = $GetLimitResponse->FarmId;
    my $LimitId               = $GetLimitResponse->LimitId;
    my $MaxCount              = $GetLimitResponse->MaxCount;
    my $UpdatedAt             = $GetLimitResponse->UpdatedAt;
    my $UpdatedBy             = $GetLimitResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the limit.



=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLimit in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

