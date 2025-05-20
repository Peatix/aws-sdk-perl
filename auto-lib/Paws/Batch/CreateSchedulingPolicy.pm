
package Paws::Batch::CreateSchedulingPolicy;
  use Moose;
  has FairsharePolicy => (is => 'ro', isa => 'Paws::Batch::FairsharePolicy', traits => ['NameInRequest'], request_name => 'fairsharePolicy');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSchedulingPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createschedulingpolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateSchedulingPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateSchedulingPolicy - Arguments for method CreateSchedulingPolicy on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSchedulingPolicy on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CreateSchedulingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSchedulingPolicy.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $CreateSchedulingPolicyResponse = $batch->CreateSchedulingPolicy(
      Name            => 'MyString',
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
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateSchedulingPolicyResponse->Arn;
    my $Name = $CreateSchedulingPolicyResponse->Name;

    # Returns a L<Paws::Batch::CreateSchedulingPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CreateSchedulingPolicy>

=head1 ATTRIBUTES


=head2 FairsharePolicy => L<Paws::Batch::FairsharePolicy>

The fair-share scheduling policy details.



=head2 B<REQUIRED> Name => Str

The name of the fair-share scheduling policy. It can be up to 128
letters long. It can contain uppercase and lowercase letters, numbers,
hyphens (-), and underscores (_).



=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the scheduling policy to help you categorize
and organize your resources. Each tag consists of a key and an optional
value. For more information, see Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
I<Amazon Web Services General Reference>.

These tags can be updated or removed using the TagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html)
API operations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSchedulingPolicy in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

