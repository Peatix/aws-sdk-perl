
package Paws::Batch::UpdateSchedulingPolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has FairsharePolicy => (is => 'ro', isa => 'Paws::Batch::FairsharePolicy', traits => ['NameInRequest'], request_name => 'fairsharePolicy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSchedulingPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/updateschedulingpolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::UpdateSchedulingPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateSchedulingPolicy - Arguments for method UpdateSchedulingPolicy on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSchedulingPolicy on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method UpdateSchedulingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSchedulingPolicy.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $UpdateSchedulingPolicyResponse = $batch->UpdateSchedulingPolicy(
      Arn             => 'MyString',
      FairsharePolicy => {
        ComputeReservation => 1,    # OPTIONAL
        ShareDecaySeconds  => 1,    # OPTIONAL
        ShareDistribution  => [
          {
            ShareIdentifier => 'MyString',
            WeightFactor    => 1.0,          # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/UpdateSchedulingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the scheduling policy to update.



=head2 FairsharePolicy => L<Paws::Batch::FairsharePolicy>

The fair-share policy scheduling details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSchedulingPolicy in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

