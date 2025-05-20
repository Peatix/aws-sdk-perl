
package Paws::LakeFormation::GetQueryState;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetQueryState');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetQueryStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetQueryState - Arguments for method GetQueryState on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryState on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetQueryState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryState.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetQueryStateResponse = $lakeformation->GetQueryState(
      QueryId => 'MyGetQueryStateRequestQueryIdString',

    );

    # Results:
    my $Error = $GetQueryStateResponse->Error;
    my $State = $GetQueryStateResponse->State;

    # Returns a L<Paws::LakeFormation::GetQueryStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetQueryState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The ID of the plan query operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryState in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

